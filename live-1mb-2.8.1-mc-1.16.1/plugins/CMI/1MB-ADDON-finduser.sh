#!/bin/bash
# Quick tool to get uuid/username from CMI database.
# chmod a+x the .sh script, and run it with ./finduser.sh
# version 0.0.1
dbresult=$(sqlite3 cmi.sqlite.db "SELECT player_uuid,userName FROM \"main\".\"users\" WHERE \"userName\" LIKE '%mrfloris%' ESCAPE '\' ORDER BY \"_rowid_\" ASC LIMIT 0, 49999")
echo -e $dbresult
