#!/bin/zsh

docker build -f ./scripts/test.Dockerfile -t openresty:1.29.2.5-1-jammy-kong-tests ./scripts
docker run -it --rm -v $(pwd):/host -w /host openresty:1.29.2.5-1-jammy-kong-tests
