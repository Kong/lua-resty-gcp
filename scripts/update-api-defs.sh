#!/usr/bin/env bash

set -euo pipefail

readonly DISCOVERY_URL=https://discovery.googleapis.com/discovery/v1/apis
readonly TARGET=./src/resty/gcp
readonly DEFS=./api-definitions
readonly SKIP_IF_EXISTS=${SKIP_IF_EXISTS:-0}

export JSON2LUA_NO_WARN=1
export JSON2LUA_INDENT_SPACES=2
export JSON2LUA_NULL=ngx

API_NAMES=()
API_URLS=()
FAILED=()



echo "Fetching API discovery data..."
DISCOVERY=$(curl --fail --silent "$DISCOVERY_URL")

echo "Generating discovery.lua..."
luajit ./scripts/json2lua \
    <<< "$DISCOVERY" \
    > "$TARGET/request/discovery.lua"


while read -r name; do
    name="${name//:/_}"
    name="${name//./p}"
    API_NAMES+=("$name")
done < <(jq -r '.items[].id' <<< "$DISCOVERY")

while read -r url; do
    API_URLS+=("$url")
done < <(jq -r '.items[].discoveryRestUrl' <<< "$DISCOVERY")

mkdir -p "$TARGET/api" "$DEFS"


if (( SKIP_IF_EXISTS == 0 )); then
    find "$DEFS" \
        -type f \
        -name '*.json' \
        -print \
        -delete
fi

find "$TARGET/api" \
    -type f \
    -name '*.lua' \
    -print \
    -delete


for (( i=0; i<${#API_NAMES[@]}; i++ ))
do
    name=${API_NAMES[$i]}
    url=${API_URLS[$i]}

    dest="$DEFS/${name}.json"
    lua="$TARGET/api/${name}.lua"

    if [[ ! -s "$dest" ]]; then
        echo "Downloading API discovery for $name..."
        curl \
            --fail \
            --silent \
            --show-error \
            --compressed \
            --location \
            --max-redirs 3 \
            --remote-time \
            --retry-delay 5 \
            --retry 3 \
            --url "$url" \
            --output "$dest" \
        || {
            FAILED+=("$name (failed download)")
            continue
        }
    fi

    echo "Generating lua file for $name..."
    luajit ./scripts/json2lua \
        < "$dest" \
        > "$lua"
done

if (( ${#FAILED[@]} > 0 )); then
    echo Errors:
    printf "  * %s\n" "${FAILED[@]}"
    exit 1
fi
