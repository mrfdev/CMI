#!/usr/bin/env bash

# @Filename: 1MB-finduser.sh
# @Version: 1.1.3, build 014
# @Release: March 26th, 2022
# @Description: Quick 1MB Add-on to get CMI uuid/username from cmi.sqlite.db
# @Contact: I am @floris on Twitter, and mrfloris in MineCraft.
# @Discord: floris#0233 on https://discord.gg/floris
# @Install: chmod a+x the .sh script, after putting it in ~plugins/CMI/
# @Syntax: ./1MB-finduser.sh <uuid|ign>
# @URL: Latest source, wiki, & support: https://scripts.1moreblock.com/

### CONFIGURATION
#
# Declarations here you can customize to your preferred setup.
# Generally only if you actually have to. Check Wiki for details.
#
###

# Filename of the CMI Sqlite3 database. Default: cmi.sqlite.db
CMIdb="cmi.sqlite.db"

# Maximum results returned. Default: 10
CMIdbMax="10"

# No need to edit this one, unless you really want to check a specific username.
findUser="$1"

# Url to query uuid with
findUrl="https://namemc.com/search?q="

# Do we use the UUID or IGN? Default: true
# When set to true, it will use the uuid, set to false to use the ign
CMICmdUuid=true

# Use tmux to send cmi info to session? Default: false
tmuxEnabled=false

# Name of tmux session, in case you dont use mcserver (default of 1MB-minecraft.sh)
tmuxSession="mcserver"

# When tmuxEnabled=true, send 'cmi info'? Default: true
CMICmdInfo=true

# When tmuxEnabled=true, send 'cmi checkaccount'? Default: false
CMICmdCheckAccount=false

# Alternative for checkaccount? Handy for mass kick or ban, etc. Default: checkaccount
# Warning: If you dont know what this means, leave it, because there's no undo button.
CMICmdAlternative="checkaccount"

# When tmuxEnabled=true, send 'cmi stats'? Default: false
CMICmdStats=false

# When tmuxEnabled=true, send 'cmi homes'? Default: false
CMICmdHomes=false

# If tmux is enabled, delay between commands? value requires NUMBER[SUFFIX]
# Default is "1s", set to "0s" to disable.
tmuxDelay="1s"
    # The NUMBER may be a positive integer or a floating-point number.
    # The SUFFIX may be one of the following:
    # s - seconds, m - minutes, h - hours, d - days

# Debug mode off or on? Default: false (true means it spits out progress)
_debug=false

### FUNCTIONS AND CODE
#
# ! WE ARE DONE, STOP EDITING BEYOND THIS POINT !
#
###

# If tmux is enabled, and we do multiple commands, stack with an extra delay?
# Default is "1s", set to "0s" to disable. Value requires NUMBER[SUFFIX]
tmuxDelayStack="0.2s"
    # The NUMBER may be a positive integer or a floating-point number.
    # The SUFFIX may be one of the following:
    # s - seconds, m - minutes, h - hours, d - days

function _output {
    case "$1" in
    oops)
        _args="${*:2}"; _prefix="(Script Halted!)";
        echo -e "\\n$B$Y$_prefix$X $_args $R" >&2; exit 1
    ;;
    okay)
        _args="${*:2}"; _prefix="(Info)";
        echo -e "\\n$B$Y$_prefix$C $_args $R\\n" >&2; exit 1
    ;;
    info)
        _args="${*:2}"; _prefix="(Info)";
        echo -e "\\n$B$Y$_prefix$C $_args $R" >&2
    ;;
    debug)
        _args="${*:2}"; _prefix="(Debug)";
        [[ "$_debug" == true ]] && echo -e "$Y$_prefix$I $_args $R"
    ;;
    *)
        _args="${*:1}"; _prefix="$C$B>$R";
        echo -e "$_prefix $_args"
    ;;
    esac
}

# Used if tmuxEnabled is set to true
function keys {
    tmux send-keys -t $tmuxSession "$*" Enter
    _output debug "Sent tmux send-keys '$*' to session '$tmuxSession'"
    if [ "$CMICmdInfo" = "true" ] && [ "$CMICmdCheckAccount" = "true" ] && [ "$CMICmdStats" = "true" ] || [ "$CMICmdHomes" = "true" ] ; then
        _output debug "Stacking sleeping with '$tmuxDelayStack'"
        sleep $tmuxDelayStack
    fi
}

[ "$EUID" -eq 0 ] && _output oops "*!* This script should not be run using sudo, or as the root user!"
I="\\033[0;90m"; B="\\033[1m"; Y="\\033[33m"; C="\\033[36m"; X="\\033[91m"; R="\\033[0m" # theme

# Complain if they incorrectly use the script, and exit
if [ "$findUser" == "" ]; then
    _output oops "Syntax: ${0} <user|uuid> (error, missing argument)"
elif [ $# -gt 1 ]; then
    _output oops "Syntax: ${0} <user|uuid> (error, you had too many arguments)"
fi

# Figure out if we are probably dealing with the UUID or the IGN
[[ ${#findUser} -gt 25 ]] && findType="player_uuid" || findType="userName"

# Lets use the database with our select query, and get the results in basically a string
dbresult=$(sqlite3 $CMIdb "SELECT player_uuid,userName FROM \"main\".\"users\" WHERE $findType LIKE '%$findUser%' ESCAPE '\' ORDER BY \"_rowid_\" ASC LIMIT 0, $CMIdbMax")

# Time to start the visual output and do something with the database results.
_output info "Starting ..."
_output debug "Trying to find up to '$CMIdbMax' matches from the CMI Sqlite3 database '$CMIdb' for '$findUser'..."

# Go through all the results
for i in $dbresult; do
    echo -e ""
    oIFS=$IFS
    IFS='|'
    y=($i)
# TODO ^-- SC2206 (warning): Quote to prevent word splitting/globbing, or split robustly with mapfile or read -a. | https://github.com/koalaman/shellcheck/wiki/SC2206
    IFS=$oIFS
    uuidResult="${y[0]}"
    userResult="${y[1]}"
    # Before we potentially run any commands, are we still using the uuid, or the ign?
    # CMICmdUuid true|false
    [[ "$CMICmdUuid" == "true" ]] && CMICmdUse="$uuidResult" || CMICmdUse=$userResult

    # Print out the results; the unique id, and conviniently link to namenmc
    _output "${I}uuid:$R $C$uuidResult$R $I|$R $findUrl${uuidResult}"
    # Print out the rest of the results; the ign we found, and conviniently list the cmi commands
    _output "${I}user:$R $Y$B$userResult$R $I|$R cmi info $CMICmdUse $I|$R cmi $CMICmdAlternative ${CMICmdUse}"

    # If tmux is enabled, try to send the commands to the server
    if [[ "${tmuxEnabled}" == "true" ]]; then
        # Do we want to send the info command?
        [[ "$CMICmdInfo" == true ]] && keys "cmi info $CMICmdUse"
        # And/or only if we want to also run the checkaccount (or alternative if set)
        [[ "$CMICmdCheckAccount" == true ]] && keys "cmi $CMICmdAlternative $CMICmdUse"
        # Do we want to send the stats command?
        [[ "$CMICmdStats" == true ]] && keys "cmi stats $CMICmdUse"
        # Do we want to send the homes command?
        [[ "$CMICmdHomes" == true ]] && keys "cmi homes $CMICmdUse"

        # Only sleep if we are at least doing something, otherwise it is of no use to sleep
        if [ "$CMICmdInfo" = "true" ] || [ "$CMICmdCheckAccount" = "true" ] || [ "$CMICmdStats" = "true" ] || [ "$CMICmdHomes" = "true" ] ; then
            _output debug "Sleeping for '$tmuxDelay'"
            sleep $tmuxDelay
        fi
    fi
done
# We are done - let them know, and exit
_output okay "... Done!"

#EOF Copyright (c) 2011-2022 - Floris Fiedeldij Dop - https://scripts.1moreblock.com