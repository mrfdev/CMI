# https://api.spiget.org/v2/resources/87610
# {
#   "external": false,
#   "file": {
#     "type": ".jar",
#     "size": 769.4,
#     "sizeUnit": "KB",
#     "url": "resources/cmilib.87610/download?version=478284"
#   },
# url = https://spigotmc.org/$url
# curl -f -L -s https://api.spiget.org/v2/resources/87610
# curl -f -L -s https://api.spiget.org/v2/resources/87610 | jq -r ".file.url"
#  
# _apiDLurl=$(curl -f -L -s https://api.spiget.org/v2/resources/87610 | jq -r ".file.url")
# echo "_apiDLurl: $_apiDLurl"
