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



