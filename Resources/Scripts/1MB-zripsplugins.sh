#!/usr/bin/env bash

# zrips plugins downloader / list, version 0.0.1, build 002, by floris

_spigotURL="https://www.spigotmc.org"
_spigetURL="https://api.spiget.org/v2/resources/"

#cmilib
_apiDLurl=$(curl -f -L -s $_spigetURL/87610 | jq -r ".file.url")
echo -e "$_spigotURL/$_apiDLurl"
