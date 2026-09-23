FROM openresty/openresty:1.29.2.5-1-jammy

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends wget tar make gcc libc6-dev libssl-dev curl ca-certificates && \
    wget https://github.com/libexpat/libexpat/releases/download/R_2_7_0/expat-2.7.0.tar.gz && tar zxvf expat-2.7.0.tar.gz && \
    cd expat-2.7.0 && ./configure && make && make install && cd .. && \
    wget https://luarocks.github.io/luarocks/releases/luarocks-3.12.2.tar.gz && \
    tar zxvf luarocks-3.12.2.tar.gz && \
    cd luarocks-3.12.2 && \
    ./configure   --lua-version=5.1   --with-lua-include=/usr/local/openresty/luajit/include/luajit-2.1   --with-lua-lib=/usr/local/openresty/luajit/lib && \
    make && \
    make install && \
    cd .. && \
    export PATH=/usr/local/bin:$PATH && \
    luarocks install lua-resty-jwt 0.2.3 && \
    luarocks install lua-resty-aws 1.7.2-1

# Download, verify, install luatz manually, for the CI runner
RUN wget https://luarocks.org/manifests/daurnimator/luatz-0.4-1.src.rock && \
    echo "7af997097d18842faa5fe87dfe4cced375c7f302f1c914d8d69c01183079f39a  luatz-0.4-1.src.rock" | sha256sum -c - && \
    luarocks install luatz-0.4-1.src.rock && \
    luarocks install busted

CMD [ "busted", "-v" ]
