#!/usr/bin/env bash

# zrips plugins downloader / list, version 0.0.3, build 004, by floris

#config

_spigotURL="https://www.spigotmc.org"
_spigetURL="https://api.spiget.org/v2/resources/"
_sleepTime="2"
_userAgent="VersionCheck/1.0"

_jsonGetter="curl -f -L -s" #todo
_jarDownload="curl -f -L -s -o" #todo
# 503 dl $_jarDownload "$_apiFile" "$_spigotURL/$_apiDLurl"

# lets go (no need to config past this point)

echo -e "\\nfree to download"

#cmilib
_apiResource="87610"
#name
_apiDLname=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/$_apiResource | jq -r ".name")
echo -e "name: $_apiDLname"

#latestid
_apiDLid=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/$_apiResource/versions/latest | jq -r ".id")
echo -e "id: $_apiDLid"

#versionnumber
_apiDLversion=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/$_apiResource/versions/$_apiDLid | jq -r ".name")
echo -e "ver: $_apiDLversion"

#filename
_apiFile="$_apiDLname-$_apiDLversion.jar"
echo -e "file: $_apiFile"

#downloadurl
_apiDLurl=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/$_apiResource | jq -r ".file.url")
echo -e "ddl: $_spigotURL/$_apiDLurl"

exit 1
sleep $_sleepTime




#jobs
_apiDLurl=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/4216 | jq -r ".file.url")
echo -e "$_spigotURL/$_apiDLurl"

sleep $_sleepTime

#jobs
_apiDLurl=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/2815 | jq -r ".file.url")
echo -e "$_spigotURL/$_apiDLurl"

sleep $_sleepTime

echo -e "\\npremium releases"

#trademe
_apiDLurl=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/7544 | jq -r ".file.url")
echo -e "$_spigotURL/$_apiDLurl"

sleep $_sleepTime

#residence
_apiDLurl=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/11480 | jq -r ".file.url")
echo -e "$_spigotURL/$_apiDLurl"

sleep $_sleepTime

#tryme
_apiDLurl=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/3330 | jq -r ".file.url")
echo -e "$_spigotURL/$_apiDLurl"

sleep $_sleepTime

#recount
_apiDLurl=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/3962 | jq -r ".file.url")
echo -e "$_spigotURL/$_apiDLurl"

sleep $_sleepTime

#mobfarmmanager
_apiDLurl=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/15127 | jq -r ".file.url")
echo -e "$_spigotURL/$_apiDLurl"

sleep $_sleepTime

#SelectionVisualizer
_apiDLurl=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/22631 | jq -r ".file.url")
echo -e "$_spigotURL/$_apiDLurl"

echo -e "\\nDone."
