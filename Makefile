.PHONY: echo install test clean

echo:
	@echo testing makefile

install:
	if [ ! -d "src/resty/gcp/api" ]; then \
		bash ./upload.sh; \
	fi
	luarocks make

test:
	luacheck .
	busted

clean:
	-@rm -rf src/resty/gcp/api

pack:
	@echo packing!

upload:
	if [ ! -d "src/resty/gcp/api" ]; then \
		bash ./upload.sh; \
	fi
	luarocks upload --api-key=tr77oOyYHQvbaMbBmtLiMHZhoiGUoSJh6xN5qtCP lua-resty-gcp-0.0.3-1.rockspec




