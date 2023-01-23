#!/usr/bin/env bash

# @Filename: 1MB-zripsplugins.sh
# @Version: 0.1.2, build 009
# @Release: January 23rd, 2023
# @Description: Helps us get a list of links to latest versions of the Zrips plugins
# @Contact: I am @floris on Twitter, and mrfloris in MineCraft.
# @Discord: floris#0233 on https://discord.gg/floris
# @Install: chmod a+x 1MB-zripsplugins.sh
# @Syntax: .1MB-zripsplugins.sh
# @URL: Latest source, info, & support: https://scripts.1moreblock.com/

### CONFIGURATION
#
# Declarations here you can customize to your preferred setup.
# Generally only if you actually have to. Check Wiki for details.
#
###

# The URL to Spigot's website
_spigotURL="https://www.spigotmc.org"

# The URL to Spiget's API website
_spigetURL="https://api.spiget.org/v2/resources/"

# The delay (in seconds) between each plugin-check
# Let's be nice and not flood these sites
_sleepTime="3"

# Custom user-agent string
_userAgent="VersionCheck/1.0"

### INTERNAL CONFIGURATION
#
# Configuration variables you should probably
# leave alone, but can change if really needed.
#
###

# Not in use (yet), but one is for getting the json data, the other the .jar
_jsonGetter="curl -f -L -s" #todo
_jarDownload="curl -f -L -s -o"
# 503 dl $_jarDownload "$_apiFile" "$_spigotURL/$_apiDLurl"

_debug=true # Set to false to minimize output.

Y="\\033[33m"; C="\\033[36m"; R="\\033[0m" # theme

### END OF CONFIGURATION
#
# Really stop configuring things
# beyond this point. I mean it.
#
###

function _output {
    case "$1" in
    oops)
        _args="${*:2}"; _prefix="(Script Halted!)";
        printf "\n%b" "$B$Y$_prefix $X $_args $R" >&2; exit 1
    ;;
    okay)
        _args="${*:2}"; _prefix="(Info)";
        printf "\n%b" "$B$Y$_prefix $C $_args $R" >&2; exit 1
    ;;
    debug)
        _args="${*:2}"; _prefix="(Debug)";
        [[ "$_debug" == true ]] && printf "%b\n" "$Y$_prefix$C $_args $R" >&2
    ;;
    *)
        _args="${*:1}"; _prefix="(Info)";
        printf "%b\n" "$Y$_prefix$C $_args $R"
    ;;
    esac
}

[ "$EUID" -eq 0 ] && _output oops "*!* This script should not be run using sudo, or as the root user!"

if type "jq" >/dev/null 2>&1; then
    _output debug "Found 'jq', which is great ..."
else
    _output oops "Oops, 'jq' seems to not be installed. This is required. Try installing either. \\n -> macOS: brew install jq, Ubuntu: apt install jq \\n"
fi

function _apiDetails() {
    # resource name
    _apiDLname=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/$_apiResource | jq -r ".name")
    [[ "$_debug" == true ]] && echo -e " " # extra empty line when in debug mode
    # resource latest release id
    _apiDLid=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/$_apiResource/versions/latest | jq -r ".id")
    # resource latest version number
    _apiDLversion=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/$_apiResource/versions/"$_apiDLid" | jq -r ".name")
    # resource filename
    _apiFile="$_apiDLname-$_apiDLversion.jar"
    # resource download url
    _apiDLurl=$(curl -f -L -s --user-agent "$_userAgent" $_spigetURL/$_apiResource | jq -r ".file.url")
    # output what we found
    _output debug "name: $_apiDLname / ver: $_apiDLversion / id: $_apiDLid" # (todo: cleanup filename) _output debug "file: $_apiFile"
    _output "$_spigotURL/$_apiDLurl"
    # lets take a little break
    sleep $_sleepTime
}
# List the Zrips Free plugin releases
_output "List of links to latest versions of the Zrips plugins"
_output "> Free releases:"

##############
# CMILib
##############
# resource id
_apiResource="87610"
_apiDetails $_apiResource

##############
# Jobs-ReBorn
##############
# resource id
_apiResource="4216"
_apiDetails $_apiResource

##############
# BottledExp
##############
# resource id
_apiResource="2815"
_apiDetails $_apiResource

# List the Zrips Premium plugin releases
[[ "$_debug" == true ]] && echo -e " " # extra empty line when in debug mode
_output "> Premium releases:"

##############
# TradeMe
##############
# resource id
_apiResource="7544" # resource id
_apiDetails $_apiResource # call function for plugin

##############
# Residence
##############
_apiResource="11480"
_apiDetails $_apiResource

##############
# TryMe
##############
# resource id
_apiResource="3330"
_apiDetails $_apiResource

##############
# Recount
##############
# resource id
_apiResource="3962"
_apiDetails $_apiResource

##############
# MobFarmManager
##############
# resource id
_apiResource="15127"
_apiDetails $_apiResource

##############
# SelectionVisualizer
##############
# resource id
_apiResource="22631"

_apiDetails $_apiResource

# Report that we have finished listing the plugins.
_output okay "Done."

#EOF Copyright (c) 2011-2023 - Floris Fiedeldij Dop - https://scripts.1moreblock.com
