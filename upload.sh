#!/bin/bash

DISCOVERY_URL='https://discovery.googleapis.com/discovery/v1/apis'

TARGET=./src/resty/gcp

echo 'local decode = require("cjson").new().decode
return assert(decode([===[' > "$TARGET/request/discovery.lua"
echo `curl $DISCOVERY_URL` >> "$TARGET/request/discovery.lua"
echo ']===]))' >> "$TARGET/request/discovery.lua"



ALL_URLS=(`curl $DISCOVERY_URL | jq -r ".items[].discoveryRestUrl"`)
API_NAMES=(`curl $DISCOVERY_URL | jq -r ".items[].id" | sed -e 's/:/_/g' | sed -e 's/[.]/p/g'`)
ROCKSPEC_ADD=''

#create `api` folder
if [ ! -d $TARGET ]; then 
  mkdir -p $TARGET
fi

for (( i=0; i<${#ALL_URLS[@]}; i++ ))
do
   echo 'local decode = require("cjson").new().decode
return assert(decode([===[' > "$TARGET/api/${API_NAMES[$i]}.lua"
   echo `curl ${ALL_URLS[$i]}` >> "$TARGET/api/${API_NAMES[$i]}.lua"
   echo ']===]))' >> "$TARGET/api/${API_NAMES[$i]}.lua"
   ROCKSPEC_ADD+='\t\t["resty.gcp.api.'${API_NAMES[$i]}'"]="src/resty/gcp/api/'${API_NAMES[$i]}'.lua",\n'

done

mv lua-resty-gcp-0.0.3-1.rockspec lua-resty-gcp-0.0.3-1.rockspec.original

cp lua-resty-gcp-0.0.3-1.rockspec lua-resty-gcp-0.0.3-1.rockspec

echo $ROCKSPEC_ADD

# For non mac
# sed -i 's#--AUTOGEN--#'$ROCKSPEC_ADD'#g' lua-resty-gcp-0.0.3-1.rockspec

# For mac
sed -i '' 's#--AUTOGEN--#'$ROCKSPEC_ADD'#g' lua-resty-gcp-0.0.3-1.rockspec
