```bash
#!/usr/bin/env bash

# zrips plugins downloader / list, version 0.0.2, build 003, by floris

_spigotURL="https://www.spigotmc.org"
_spigetURL="https://api.spiget.org/v2/resources/"
_sleepTime="2"
_userAgent="VersionCheck/1.0"
# --user-agent "$_userAgent"
echo -e "\\nfree to download"

#cmilib
_apiDLurl=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/87610 | jq -r ".file.url")
echo -e "$_spigotURL/$_apiDLurl"

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
```
