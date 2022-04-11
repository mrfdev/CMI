# All CMI Commands (that I know of)

Documented list with more details, examples, etc. can be found [here](https://www.zrips.net/cmi/commands/)

## List of available commands

Pro tip, you can search through this list in-game and from console: `/cmi checkcommand KEYWORD`

```
 subtitle] (-in:[ticks]) (-out:[ticks]) (-keep:[ticks]) - Sends title message to player
/cmi actionbarmsg [playerName/all] (-s:[seconds]) [message] - Sends action bar message to player
/cmi afk (-p:playerName) (reason) (-s) - Toggle afk mode. Reason could be provided
/cmi afkcheck [playerName/all] - Check players afk status
/cmi air [playerName] [amount] (-s) - Set players air
/cmi alert [playerName] (reason) - Alerts administration on players login
/cmi alertlist  - Lists all recorded alerts
/cmi aliaseditor (new) (alias-cmd) - Alias editor
/cmi anvil (playerName) (-s) - Open anvil
/cmi anvilrepaircost (playerName) [amount] - Set items repair cost
/cmi armorstand (last/near) - Open armor stand editor
/cmi attachcommand [command/-clear] - Attaches command to item
/cmi autorecharge (playerName) [exp/money/off] (-s) - Toggle auto flight recharge
/cmi back (playerName) (-s) - Teleports back to last saved location
/cmi balance (playerName) - Check money balance
/cmi baltop (playerName) - Check top money list
/cmi ban [playerName] (reason) (-s) - Ban player
/cmi banlist  - Ban list
/cmi bbroadcast (!) [message] (-s:[serverName,serverName]) - Sends special message to all players on all servers
/cmi blockcycling  - Cycle block states
/cmi blockinfo  - Check block information
/cmi blocknbt  - Show block NBT information
/cmi book [Author/Title/Unlock] [value] - Book editing
/cmi bossbarmsg [playerName/all] (-sec:[seconds])(-t:[timeToKeepFor]) (-n:nameOfBar) (-p:[maxValue/current]) (-c:[color]) (-s:[1,6,10,12,20]) (-cmd:"command;;command2") (-pcmd:"command;;command2") (-a:[ticks]) [message] (-cancel:nameOfBar) - Sends boss bar message to player
/cmi broadcast (!) [message] (-w:[worldName,worldName]) (-r:[range]) (-c:[world;x;y;z]) - Sends special message to all players
/cmi burn (playerName) (time) (-s) - Burn a player
/cmi cartographytable (playerName) (-s) - Open cartography table
/cmi charges [playerName] [add/set/take/clear/reset] (-f) - Shows left spawner charges
/cmi chat [create/join/leave/list/invite/kick/listrooms] (chatName/playerName) (-private) (-locked) (-persistent) - Create and join chat rooms
/cmi checkaccount (playerName/ip) - Search for a players other accounts
/cmi checkban (playerName) - Check players ban status
/cmi checkcommand (key word) - Search for possible commands by keyword
/cmi checkexp (playerName) - Check players exp
/cmi checkperm (key word) - Check possible permission nodes
/cmi cheque (playerName) [amount] - Convert money into cheque
/cmi clear (playerName) (item(:amount)(;data)) (-s) (+clearType) - Clear players inventory
/cmi clearchat (self) (-s) - Clears chat
/cmi clearender [playerName] (-s) - Clear players ender chest
/cmi colorlimits (playerName) - Shows all possible colors
/cmi colorpicker (hex/colorname) - Pick hex color
/cmi colors (playerName) - Shows all possible colors
/cmi compass (targetName) (sourceName) (x) (z) (worldname) (reset) (-s) - Set players compass point to your location
/cmi condense (itemName) (playerName) (-s) - Condense items into blocks
/cmi counter [join/leave/start] (t:time) (r:[range/-1]) (c:[world:x:y:z]) (msg:custom_message) (-f) - Starts counter for surrounding players
/cmi cplaytime (playerName) - Detailed playtime
/cmi ctellraw [playerName/all] [formattedMessage] - Send tellraw type message
/cmi ctext [cText] (playerName/all) (sourcePlayer) - Shows custom text
/cmi cuff [playername] (true/false) (-s) - Suspends players actions
/cmi customrecipe  - Manages item custom recipes
/cmi dback (playerName) (-s) - Returns to death location
/cmi disableenchant (enchant/id) (disable/enable) - Disable enchantment
/cmi dispose (playerName) - Dispose of unneeded items
/cmi distance (playerName) (playerName) - Check distance between 2 points
/cmi donate [playerName] (amount) - Donate item you are holding
/cmi dsign (new) - Manage dynamic signs
/cmi dye (playerName) (red,green,blue/hexCode/colorName/random/clear/rainbow/day/biome/health) (-s) - Dye leather armor
/cmi editctext  - Custom text editor
/cmi editlocale (keyword(-s)) - Edit your locale file
/cmi editplaytime (playerName) [add/take/set] [amount] (-s) - Edit players playtime
/cmi editwarnings (playerName/clearall) (clear) - Check player warnings
/cmi editwarp (warpName) (newName) - Edit warps
/cmi effect [playername/all] [effect/clear] (duration) (multiplier) (-s) (-visual) - Adds potion effect to player. use clear to remove all effects
/cmi enchant (playerName) [enchant] [level] (-o) (-onlyvalid) (-keeponlyvalid) (-inform) (-s) (-i:[itemName(:data)]) (clear) - Enchant items
/cmi ender (playerName) (playerName) - Opens players ender chest
/cmi endgateway  - Toggle end gateway beam
/cmi entityinfo  - Check entity information
/cmi entitynbt (-console) - Check entity nbt information
/cmi exp [playerName] [add/set/take/clear] [amount][%rand/10-20%][1%[min-max]][playerName]] (-s) - Set players exp. Use L to set levels
/cmi ext (playerName) (-s) - Extinguish a player
/cmi falldistance (playerName) (number) (-s) - Set players falldistance
/cmi feed (playerName/all) (-s) - Feed player
/cmi findbiome (biomeName/stop/stopall) - Finds nearest biome by name
/cmi fixchunk w [worldName] r [range in chunks] c [x:z]  - Scans for damaged chunks
/cmi flightcharge (add/take/set/show/expcharge/moneycharge/recharge) (playerName) (amount) (-s) - Manage and check flight charges
/cmi fly [playerName] (true/false) (-s) - Set players fly true or false
/cmi flyc (playerName) (true/false) (-s) - Toggle flight charge mode
/cmi flyspeed [playerName] [amount] (-s) - Set players fly speed from 0 to 10
/cmi gamerule  - Manage gamerules
/cmi generateworth  - Auto generate posible item worth values
/cmi getbook [cTextName] (playerName) - Get book
/cmi give (playerName) [itemname/hand] (amount/playerName) (-slot:[number]) - Give item to player
/cmi giveall [itemname] (amount) (e|l|n|offline) - Give item for all players
/cmi glow (playerName) [true/false/color/gui] - Set players glow mode
/cmi gm (playerName) [gamemode] - Set players game mode
/cmi god [playerName] (true/false) (-s) - Set players god mode to true or false
/cmi grindstone (playerName) (-s) - Open grindstone
/cmi groundclean (+cb) (+cm) (+ci) (+b) (+sh) (+tnt) (+all) (+fl) (+named) (-w:[worldName]) - Clears server from unnecessary items
/cmi haspermission (playerName) [permissionNode] - Check if player has particular permission
/cmi hat (playerName) - Place item like hat
/cmi head [sourceName] (targetName) (-s) (amount) - Get players head
/cmi heal [playerName/all] (healamount/healpercent) (-nofeed) (-ignoreffects) (-dontextinguish) - Heal player
/cmi helpop [message] - Sends message for help to staff members
/cmi hideflags (playerName) [flagName/clear] (flagName) - Hides item flags
/cmi hologram  - Manage holograms
/cmi hologrampages [holoName] (playerName) (next/prev/[pageNumber]) - Change hologram page
/cmi home (homeName) (playerName) (whoTeleport) - Teleport to home location
/cmi homes (playerName/near:[range]) - A list of homes that you can click to teleport to.
/cmi hunger [playerName] [amount] (-s) - Set players hunger
/cmi ic (new) (name) - Create interactive command
/cmi ifoffline [playerName] (command) - Perform command only when player is offline
/cmi ifonline [playerName] (command) - Perform command only when player is online
/cmi ignore (playerName/uuid/all) (-p:[playerName]) - Ignores player
/cmi importfrom [essentials/hd] [home/warp/nick/logoutlocation/money/mail] - Import data from other plugins
/cmi importoldusers  - Imports users from playerdata folder in main world folder. Server can suffer lag spike during import
/cmi info [playerName/uuid] - Show players information
/cmi inv [playerName] - Opens players inventory
/cmi invcheck (playerName) [id] (-e) (last) - Open saved inventory in preview mode
/cmi invlist (playerName) - Show saved inventories list
/cmi invload (sourceName) (targetName) [id/last] - Load saved inventory
/cmi invremove (playerName) [id/all/last] - Remove saved inventories for player
/cmi invremoveall [confirmed] - Removes all saved inventories
/cmi invsave (playerName) (id) (-s) - Save inventory
/cmi ipban [ip/playerName] (reason) (-s) - Ban ip
/cmi ipbanlist  - Ban ip list
/cmi item [itemname] (amount) - Give item to yourself
/cmi itemcmdata [set/delete] (playerName) (id) (-s) - Check or modify items custom model data
/cmi itemframe (invisible/fixed/invulnerable/all) - Manage item frames
/cmi iteminfo (playerName) - Show item information
/cmi itemlore (-p:[playerName]) [linenumber/*] [remove/insert/ new lore line] - Change items lore
/cmi itemname (-p:[playerName]) [remove/your new item name] - Rename items
/cmi itemnbt (playerName) - Show item NBT information
/cmi jail [playerName] (time) (jailName) (cellId) (-s) (r:jail_reason) - Jail player for time period
/cmi jailedit  - Edit jails
/cmi jaillist (jailName) (cellId) - List jails
/cmi jump  - Jump to target block
/cmi kick [playerName/all] (message) (-s) - Kick player with custom message
/cmi kill [playerName] (-forced) (damageCause) (-s) (-lightning) - Kill player
/cmi killall (-monsters/-pets/-npc/-animals/-ambient/-named/-f/-lightning/-list/-m:[mobType]) (-r:range) (-s) (-w:[worldName]) - Kill mobs around you
/cmi kit [kitName] (playerName) (-s) - Gives predefined kit.
/cmi kitcdreset (kitName) (playerName/all) - Reset kit timer
/cmi kiteditor  - Kit editor.
/cmi kitusagereset (kitName) (playerName) - Reset kit usage counter
/cmi lastonline (-p:[page]) - Show played players from last x minutes
/cmi launch (playerName) (p:[power]) (a:[angle]) (d:[direction]) (loc:[x]:[y]:[z]) (-nodamage) - Launch at direction you are looking or at angle
/cmi lfix (range) (playerName) (stop/stopall) - Fix light in chunks around you
/cmi list  - Shows online player list
/cmi lockip (playername) [add/remove/list/clear] [ip] - Prevents logging into account from different ip
/cmi loom (playerName) - Open loom
/cmi mail [send/clear/read/sendtemp] [playerName] (message) - Send and receive mail
/cmi mailall [send/clear/remove] [message] - Check or send mail to all players
/cmi maintenance (true/false) (message) - Set server into maintenance mode
/cmi maxhp set/add/take/clear [playerName] [amount] (-s) - Set a player's max hp
/cmi maxplayers [amount] - Changes maximum amount of players who can connect to server
/cmi me [message] - Sends special message to all players
/cmi merchant [type] (playerName) (level) - Open merchant trade window
/cmi migratedatabase  - Changes database system and migrates all data
/cmi mirror (start/stop) - Starts block place/break mirroring.
/cmi mobhead [mobType] (entryNumber) (playerName) (-s) - Get mob head
/cmi money [pay/give/take/set] [playerName/all/alloffline] [amount][%rand/1-1000%][1%[min-max]][playerName]] (-s) - Manage money balance
/cmi more (playerName) (-clone/[amount]) - Fills item stack to maximum amount
/cmi msg [playerName] [message] - Sends message to player
/cmi mute [playerName] (time) (-s) (reason) - Mute player
/cmi mutechat (time) (-s) (reason) - Prevent public messages
/cmi nameplate (playerName) (-pref:[some_prefix]) (-suf:[some_suffix]) (-c:[colorCode]) (reset) - Set players name plate prefix, suffix or its color
/cmi near (distance) - Check who is near you
/cmi nick [newNickName/off] (playerName) (-s) - Changes player name
/cmi notarget (playerName) (true/false) (-s) - Toggle no-mob target mode
/cmi note (playerName) [add/remove/clear/list] (id/note) - Manage players notes
/cmi openbook (cText) (playerName) (fileName.txt) - Open book gui
/cmi oplist  - Check operator player list
/cmi options (playerName) (option) (enable/disable/status) (-s) - Modify personal options
/cmi panimation (variable/playerName/stopAll) (stop) - Play custom particle animation
/cmi patrol  - Patrol
/cmi pay [playerName] [amount] (-s) - Perform money transaction
/cmi ping (playerName/message) - Shows players ping
/cmi placeholders (parse) (placeholder) (playerName) - List out all placeholders
/cmi playercollision (playerName) [true/false] (-s) - Set players collision mode
/cmi playtime (playername) - Shows player total play time
/cmi playtimetop [page] - Shows top list of player total play time
/cmi point (particleName) (playerName) (-self) (time) (-s:[speed]) - Point to block
/cmi portals (new/nearest/forceupdate/setlocation/enabled) (portalName) (world:x:y:z:yaw:pitch) - Set portals
/cmi pos (playerName) - Show current position of a player
/cmi preview [range] (innerrange) - Load chunk for given range
/cmi prewards (playerName) - Check playtime rewards
/cmi ptime (freeze/unfreeze/day/night/dusk/morning/realtime/reset) (playerName) (-s) - Controls player personal time
/cmi purge (stop) - Cleans player data from world folder by inactive days
/cmi pweather (playerName) [sun/rain/reset] (-s) - Controls player weather
/cmi rankdown (playerName) (rankName) (confirm) (-cmd) (-cost) - Decrease your rank
/cmi rankinfo (playerName) (rankName) - Your rank information
/cmi ranklist  - List of possible ranks
/cmi rankset (playerName) [rankName] (-cmd) (-cost) - Set a players rank
/cmi rankup (playerName) (rankName) (confirm) - Increase your rank
/cmi realname (playerName/nickName) - Check players real name
/cmi recipe (itemName) - Check item recipe
/cmi reload  - Reloads plugins config and locale files
/cmi removehome (homeName) (playerName) - Remove home
/cmi removeuser [uuid/duplicates] - Removes user and its data
/cmi removewarp (warpName) - Remove warp
/cmi repair [hand/armor/all] (playerName) - Repair items
/cmi repaircost (hand/armor/all) (playerName) - Check items repair cost
/cmi replaceblock id [blockName:data/id:data] w [blockName:data/id:data] r [range in chunks/g] y [max height] - Replaces blocks in current world around you
/cmi reply [message] - Reply to last message sender
/cmi resetback (playerName) (reason) (-death) (-s) - Resets players back location
/cmi resetdbfields [collumnName] (-w:[worldName]) (-p:[playerName]) - Resets particular database columns to default value
/cmi ride  - Ride target entity
/cmi rt (playerName) (worldName) (-s) - Teleports to random location
/cmi sameip  - List players logged in from same ip
/cmi saturation (playerName) [amount] - Set players saturation
/cmi saveall (daysRange/-online) - Saves every player inventory
/cmi saveditems [save/get/remove/list] (savedItemName) (-t:playerName) (-a:amount) (-c:category/all) (-s) - Save or manage saved items
/cmi sc (playerName) - Starts sign copy process
/cmi scan  - Scans for items in current world
/cmi scavenge (playerName) - Recycle item and its enchantments
/cmi schedule [scheduleName] - Trigger schedule
/cmi se (SignLine) [Text] - Changes sign text line.
/cmi search  - Search items/enchants/fly/maxhp/gm/oversize modes and other stuff from all users
/cmi seen [playerName/uuid] - Check when player was last seen
/cmi select (pos1/pos2/shift/expand/contract/clear) (amount) - Manage selection area
/cmi sell (all/blocks/hand/same/gui/material) - Sell items from inventory
/cmi sendall [serverName] - Send all online players to target server
/cmi server [serverName] (playerName) (-f) - Connect to bungeecord server
/cmi serverlist  - Show server list
/cmi servertime  - Show server time
/cmi setenchantworth  - Change enchantment worth
/cmi setfirstspawn (playerName) - Sets first spawn point
/cmi sethome (homeName) (playerName) (-p) (-l:worldName;x;y;z) (block/Material) (slotNumber) (-overwrite) - Sets home location
/cmi setmotd [newMotd] (-s) - Set server motd
/cmi setrt (worldName) (center:[x]:[z]) (min:[range]) (max:[range]) (square/circle) (enabled/disabled) - Set random teleport bounds
/cmi setspawn (playerName) (true/false) (-g:[groupName]) (-rng:[range]) (-w:world,world_nether) (loc:[world;x;y;z;yaw;pitch]) - Sets spawn command teleport point
/cmi setwarp [warpName] (reqPermission) (hand) (slot) (autoLore) (-g:[groupName]) (world;x;y;z;yaw;pitch) - Sets warp location
/cmi setworth (itemname) -s:(sellPrice) - Change item worth
/cmi shadowmute [playerName] (time) (-s) (reason) - Mute player without telling him that he is muted
/cmi shakeitoff  - Dismount any entity riding you
/cmi shoot (playerName) (-t:targetPlayer) (type) (speed) - Shoot projectile
/cmi silence  - Blocks public messages
/cmi silentchest  - Toggles silent chest
/cmi sit (playerName) (-persistent) (-s) (location) - Sit in your position
/cmi skin [skinName/off/update] (playerName) (-s) - Changes players skin
/cmi smite (playerName/location) (-s) - Strike ground or player with lightning
/cmi smithingtable (playerName) - Open smithing table
/cmi solve [equation] - Solve equation
/cmi sound [sound] (-p:[pitch]) (-v:[volume]) (playerName/-all) (world) (x) (y) (z) (-s) - Play sound at target location
/cmi spawn (playerName) (-s) - Teleports back to spawn location
/cmi spawner [EntityType] - Sets spawner
/cmi spawnereditor  - Edit spawner
/cmi spawnmob [EntityType] - Spawns entity at your location
/cmi staffmsg [message/toggle/on/off] - Sends message to staff channel
/cmi stats (playerName) - Check players stats
/cmi statsedit (playerName) [add/take/set] [statistic] (subType) [amount] (-s) - Edit players statistics
/cmi status  - Show server status
/cmi stonecutter (playerName) (-s) - Open stonecutter
/cmi sudo [playerName] (command/c:[text]) - Force another player to perform command
/cmi suicide [playerName] (-s) - Kill your self
/cmi switchplayerdata [sourcePlayerName/uuid] [targetPlayerName/uuid] - Switch all data from one player to another
/cmi tablistupdate (playerName) - Force tablist update for all or specific player
/cmi tempban [playerName] [timeValue] (reason) (-s) - TempBan player
/cmi tempipban [ip/playerName] [time] (reason) (-s) - Temp ban ip
/cmi tfly (playerName) (timeInSec) (-s) - Set temporary players fly mode until relog or until time ends
/cmi tgod [playerName] (timeInSec) (-s) - Set players temporarily god mode until relog or time end
/cmi time (time) (world) (alter [value]) (-smooth) - Controls server time
/cmi titlemsg [playerName/all] [title
/cmi toast [playerName/all] (-t:[advType]) (-icon:[material]) [message] - Sends toast message to player
/cmi top [playerName] (-s) - Teleport to highest point at your location
/cmi tp [playerName] (playerName) - Teleports to player's location
/cmi tpa [playerName] (playerName) (-c) - Ask the player if you can teleport to them
/cmi tpaall  - Ask all online players to teleport to your location
/cmi tpaccept (playerName) - Accept teleport request
/cmi tpahere [playerName] (playerName) (-c) - Asks player to accept teleportation to your location
/cmi tpall (playerName) - Teleports all online players to location
/cmi tpallworld [worldName] (worldName;x;y;z(;yaw;pitch)) (-a) - Teleports ALL players from specific world
/cmi tpbypass (playername) - Bypass teleportation to unsafe location
/cmi tpdeny (playerName) - Deny teleport request
/cmi tphere [playerName] (playerName) - Teleports player to your location
/cmi tpo [playerName] (playerName) - Teleports to player's location by force
/cmi tpohere [playerName] (playerName) - Teleports player to your location by force
/cmi tpopos (-p:playerName) [x] [y] [z] (world) (pitch) (yaw) (-rng:[range]) - Teleports to location by force
/cmi tppos (-p:playerName) [x] [y] [z] (world) (pitch) (yaw) (-rng:[range]) - Teleports to location
/cmi tps (-spikes) - Check servers tps status
/cmi tree (TreeType) (-p:[playerName]) - Spawn tree where you are looking
/cmi unban [playerName/ip] (-s) - Unban player or ip
/cmi unbreakable (playerName) (true/false) - Makes item unbreakable
/cmi uncondense (itemName) (playerName) (-s) - Uncondense items into smaller parts
/cmi unjail [playerName] - Release player from jail
/cmi unloadchunks (-f) - Unloads chunks from server memory
/cmi unmute [playerName] (-s) - Unmute player
/cmi unmutechat (-s) - Unmute public chat
/cmi usermeta [playerName] [add/remove/clear/list/increment] (key) (value) (-s) - Manage players meta data
/cmi util (removeseats/testtarget) - Administration tools
/cmi vanish (playerName/list) (on/off) - Vanish player
/cmi vanishedit (playerName) - Edit vanish mode for player
/cmi version  - Show plugin version
/cmi viewrange [range] (playerName) - Change view range
/cmi voteedit (playerName) [add/set/take/clear] [amount] (-s) - Manage players votes
/cmi votes (playerName) - Check players vote count
/cmi votetop (playerName) - Check top vote list
/cmi walkspeed [playerName] [amount] (-s) - Set players walk speed from 0 to 10
/cmi warn [playerName] (category) (reason) (-s) - Warn player
/cmi warnings (playerName) - Check player warnings
/cmi warp (warpName) (playerName) (-s) (-g:[groupName]) (-p:[pageNumber]) - Teleports to warp location
/cmi warpgroups  - Lists warp groups
/cmi weather (sun/rain/storm) (lock/duration) (worldName/all) - Controls server weather
/cmi whowas [playerName] - Shows players previous names
/cmi workbench (playerName) - Open workbench
/cmi world (normal/nether/end/1/2/3...) (playerName) (-s) - Teleports to different world
/cmi worth (all/blocks/hand/material) - Check item worth
/cmi worthlist (playerName) (-missing) - Check list of items with set sell prices
```

## Misc.

Created with CMI 9.1.4.0 for Minecraft 1.18.2
