#!/usr/bin/env bash

# @Filename: 1MB-finduser.sh
# @Version: 1.0.3, build 009
# @Release: March 25th, 2022
# @Description: Quick 1MB Add-on to get CMI uuid/username from cmi.sqlite.db
# @Contact: I am @floris on Twitter, and mrfloris in MineCraft.
# @Discord: floris#0233 on https://discord.gg/floris
# @Install: chmod a+x the .sh script, after putting it in ~plugins/CMI/
# @Syntax: ./1MB-finduser.sh
# @URL: Latest source, wiki, & support: https://scripts.1moreblock.com/

### CONFIGURATION
#
# Declarations here you can customize to your preferred setup.
# Generally only if you actually have to. Check Wiki for details.
#
###

# requires cli input, no need to really edit anything
findUser="$1"

### FUNCTIONS AND CODE
#
# ! WE ARE DONE, STOP EDITING BEYOND THIS POINT !
#
###

if [ "$findUser" == "" ]; then
	echo -e "Syntax: ${0} <user|uuid> (error, missing argument)"; exit 0
elif [ $# -gt 1 ]; then
    echo -e "Syntax: ${0} <user|uuid> (error, you had too many arguments)"; exit 0
fi

[[ ${#findUser} -gt 25 ]] && findType="player_uuid" || findType="userName"

dbresult=$(sqlite3 cmi.sqlite.db "SELECT player_uuid,userName FROM \"main\".\"users\" WHERE $findType LIKE '%$findUser%' ESCAPE '\' ORDER BY \"_rowid_\" ASC LIMIT 0, 49999")
echo -e "$dbresult"

#EOF Copyright (c) 2011-2022 - Floris Fiedeldij Dop - https://scripts.1moreblock.com