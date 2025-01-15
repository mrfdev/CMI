#!/bin/bash

# @Filename: 1MB-CMI-Playtime-Report.sh
# @Version: 0.0.2, build 003 for CMI Playtime Report
# @Release: January 15th, 2025
# @Description: Generates a report of the top 10 player playtimes from a CMI SQLite database, including average playtime and statistics. Long durations are expressed in years, months, days, hours, minutes, and seconds.
# @Contact: I am @floris on Twitter, and mrfloris in Minecraft.
# @Discord: @mrfloris on https://discord.gg/floris
# @Install: chmod +x 1MB-CMI-Playtime-Report.sh
# @Syntax: ./1MB-CMI-Playtime-Report.sh
# @URL: Latest source, wiki, & support: https://scripts.1moreblock.com/

### CONFIGURATION
#
# Declarations here you can customize to your preferred setup.
# Generally only if you actually have to. Check Wiki for details.
#

# Configurable variables
DB_FILE="cmi.sqlite.db"          # Path to your SQLite database
TABLE_NAME="users"               # Table containing user data
USERNAME_FIELD="username"        # Field name for usernames
PLAYTIME_FIELD="TotalPlayTime"   # Field name for total playtime in milliseconds

# Check for sqlite3 command
if ! command -v sqlite3 &>/dev/null; then
  echo "Error: sqlite3 is not installed or not in the PATH."
  echo "Please install sqlite3. For Ubuntu: sudo apt-get install sqlite3"
  echo "For macOS with Homebrew: brew install sqlite"
  exit 1
fi

# Ensure the database file exists
if [ ! -f "$DB_FILE" ]; then
  echo "Error: Database file '$DB_FILE' not found."
  exit 1
fi

# Function to convert seconds into human-readable format, including years and months
convert_seconds() {
    local T=$1
    # Calculate total days and remaining seconds in the day
    local total_days=$((T / 86400))
    local rem_secs=$((T % 86400))

    # Approximate years, months, and days
    local Y=$(( total_days / 365 ))
    local rdays=$(( total_days % 365 ))
    local Mon=$(( rdays / 30 ))
    local D=$(( rdays % 30 ))

    # Hours, minutes, and seconds from remaining seconds
    local H=$(( rem_secs / 3600 ))
    local rem_after_hours=$(( rem_secs % 3600 ))
    local Min=$(( rem_after_hours / 60 ))
    local S=$(( rem_after_hours % 60 ))

    local result=""

    (( Y > 0 )) && result+="${Y} years "
    (( Mon > 0 )) && result+="${Mon} months "
    (( D > 0 )) && result+="${D} days "
    (( H > 0 )) && result+="${H} hours "
    (( Min > 0 )) && result+="${Min} minutes "
    (( S > 0 )) && result+="${S} seconds"

    # Trim trailing space if any
    echo "${result%% }"
}

# Adjust thresholds to milliseconds (60000 ms = 1 minute)
below_minute=$(sqlite3 "$DB_FILE" "SELECT COUNT(*) FROM $TABLE_NAME WHERE $PLAYTIME_FIELD <= 60000;")
avg_playtime_raw=$(sqlite3 "$DB_FILE" "SELECT AVG($PLAYTIME_FIELD) FROM $TABLE_NAME WHERE $PLAYTIME_FIELD > 60000;")
top_players=$(sqlite3 "$DB_FILE" "SELECT $USERNAME_FIELD, $PLAYTIME_FIELD FROM $TABLE_NAME WHERE $PLAYTIME_FIELD > 60000 ORDER BY $PLAYTIME_FIELD DESC LIMIT 10;")
total_players=$(sqlite3 "$DB_FILE" "SELECT COUNT(*) FROM $TABLE_NAME;")

# Convert average playtime from milliseconds to seconds (rounding)
if [ -n "$avg_playtime_raw" ] && [ "$avg_playtime_raw" != "NULL" ]; then
  avg_playtime_s=$(awk "BEGIN { printf \"%.0f\", $avg_playtime_raw/1000 }")
else
  avg_playtime_s=0
fi

# Output summary
echo "Total players: $total_players"
echo "Players with less than a minute of playtime: $below_minute"

# Convert and display average playtime in human-readable form
if [ "$avg_playtime_s" -gt 0 ]; then
  avg_human=$(convert_seconds "$avg_playtime_s")
  # Compute average in hours as a decimal for summary
  avg_hours=$(awk "BEGIN { printf \"%.2f\", $avg_playtime_s/3600 }")
  echo "Average playtime (excluding players < 1 minute): ${avg_human} (~${avg_hours} hours per player)"
else
  echo "No players with more than a minute of playtime to calculate an average."
fi

echo
echo "Top 10 players by playtime (over 1 minute):"

# Process and display top 10 players, converting from ms to seconds
IFS=$'\n'
for line in $top_players; do
  IFS='|' read -r name playtime_ms <<< "$line"
  # Convert playtime from milliseconds to seconds
  playtime_s=$(awk "BEGIN { printf \"%d\", $playtime_ms/1000 }")
  human_time=$(convert_seconds "$playtime_s")
  printf "%-20s : %s\n" "$name" "$human_time"
done
unset IFS

#EOF Copyright (c) 1977-2025 - Floris Fiedeldij Dop - https://scripts.1moreblock.com