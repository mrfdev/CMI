```
subtitle] (-in:[ticks]) (-out:[ticks]) (-keep:[ticks])
actionbarmsg [playerName/all] (-s:[seconds]) [message]
afk (-p:playerName) (reason) (-s)
afkcheck [playerName/all]
air [playerName] [amount] (-s)
alert [playerName] (reason)
alertlist 
aliaseditor (new) (alias-cmd)
anvil (playerName)
anvilrepaircost (playerName) [amount]
armorstand (last/near)
attachcommand [command/-clear]
autorecharge (playerName) [exp/money/off] (-s)
back (playerName) (-s)
balance (playerName)
baltop (playerName)
ban [playerName] (reason) (-s)
banlist 
bbroadcast (!) [message] (-s:[serverName,serverName])
blockcycling 
blockinfo 
blocknbt 
book [Author/Title/Unlock] [value]
bossbarmsg [playerName/all] (-sec:[seconds])(-t:[timeToKeepFor]) (-n:nameOfBar) (-p:[maxValue/current]) (-c:[color]) (-s:[1,6,10,12,20]) (-cmd:"command;;command2") (-a:[ticks]) [message] (-cancel:nameOfBar)
broadcast (!) [message] (-w:[worldName,worldName]) (-r:[range]) (-c:[world;x;y;z])
burn (playerName) (time) (-s)
charges [playerName] [add/set/take/clear/reset] (-f)
chat [create/join/leave/list/invite/kick/listrooms] (chatName/playerName) (-private) (-locked) (-persistent)
checkaccount (playerName/ip)
checkban (playerName)
checkcommand (key word)
checkexp (playerName)
checkperm (key word)
cheque (playerName) [amount]
clear (playerName) (item(-amount)) (-s) (+clearType)
clearchat (self) (-s)
clearender [playerName] (-s)
colorlimits (playerName)
colorpicker (hex/colorname)
colors (playerName)
commandspy (playerName) (-s)
compass (targetName) (sourceName) (x) (z) (worldname) (reset) (-s)
condense (itemName) (playerName) (-s)
counter [join/leave/start] (t:time) (r:[range/-1]) (c:[world:x:y:z]) (msg:custom_message) (-f)
cplaytime (playerName)
ctellraw [playerName/all] [formattedMessage]
ctext [cText] (playerName/all) (sourcePlayer)
cuff [playername] (true/false) (-s)
customrecipe 
dback (playerName) (-s)
disableenchant (enchant/id) (disable/enable)
dispose (playerName)
distance (playerName) (playerName)
donate [playerName] (amount)
dsign (new)
dye (playerName) (red,green,blue/hexCode/colorName/random/clear/rainbow/day/biome/health) (-s)
editctext 
editlocale (keyword(-s))
editplaytime (playerName) [add/take/set] [amount] (-s)
editwarnings (playerName/clearall) (clear)
editwarp (warpName) (newName)
effect [playername/all] [effect/clear] (duration) (multiplier) (-s) (-visual)
enchant (playerName) [enchant] [level] (-o) (-onlyvalid) (-keeponlyvalid) (-inform) (-s) (-i:[itemName(:data)]) (clear)
ender (playerName) (playerName)
endgateway 
entityinfo 
entitynbt (-console)
exp [playerName] [add/set/take/clear] [amount][%rand/10-20%] (-s)
ext (playerName) (-s)
falldistance (playerName) (number) (-s)
feed (playerName/all) (-s)
findbiome (biomeName/stop/stopall)
fixchunk w [worldName] r [range in chunks] c [x:z] 
flightcharge (add/take/set/show/expcharge/moneycharge/recharge) (playerName) (amount) (-s)
fly [playerName] (true/false) (-s)
flyc (playerName) (true/false) (-s)
flyspeed [playerName] [amount] (-s)
gamerule 
getbook [cTextName] (playerName)
give (playerName) [itemname/hand] (amount/playerName) (-slot:[number])
giveall [itemname] (amount) (e|l|n|offline)
glow (playerName) [true/false/color/gui]
gm (playerName) [gamemode]
god [playerName] (true/false) (-s)
groundclean (+cb) (+cm) (+ci) (+b) (+sh) (+tnt) (+all) (+fl) (-w:[worldName])
haspermission (playerName) [permissionNode]
hat (playerName)
head [sourceName] (targetName) (-s) (amount)
heal [playerName/all] (healamount/healpercent) (-nofeed) (-ignoreffects) (-dontextinguish)
helpop [message]
hideflags (playerName) [flagName/clear] (flagName)
hologram 
hologrampages [holoName] (playerName) (next/prev/[pageNumber])
home (homeName) (playerName) (whoTeleport)
homes (playerName/near:[range])
hunger [playerName] [amount] (-s)
ic (new) (name)
ifoffline [playerName] (command)
ifonline [playerName] (command)
ignore (playerName/uuid/all) (-p:[playerName])
importfrom [essentials/hd] [home/warp/nick/logoutlocation/money/mail]
importoldusers 
info [playerName/uuid]
inv [playerName]
invcheck (playerName) [id] (-e) (last)
invlist (playerName)
invload (sourceName) (targetName) [id/last]
invremove (playerName) [id/all/last]
invremoveall [confirmed]
invsave (playerName) (id) (-s)
ipban [ip/playerName] (reason) (-s)
ipbanlist 
item [itemname] (amount)
itemcmdata [set/delete] (playerName) (id) (-s)
itemframe (invisible/fixed/invulnerable)
iteminfo (playerName)
itemlore (-p:[playerName]) [linenumber/*] [remove/insert/ new lore line]
itemname (-p:[playerName]) [remove/your new item name]
itemnbt (playerName)
jail [playerName] (time) (jailName) (cellId) (-s) (r:jail_reason)
jailedit 
jaillist (jailName) (cellId)
jump 
kick [playerName/all] (message) (-s)
kill [playerName] (-force) (damageCause) (-s) (-lightning)
killall (-monsters/-pets/-npc/-animals/-ambient/-named/-f/-lightning/-list/-m:[mobType]) (-r:range) (-s) (-w:[worldName])
kit [kitName] (playerName)
kitcdreset (kitName) (playerName/all)
kiteditor 
kitusagereset (kitName) (playerName)
lastonline (-p:[page])
launch (playerName) (p:[power]) (a:[angle]) (d:[direction]) (loc:[x]:[y]:[z]) (-nodamage)
lfix (range) (playerName) (stop/stopall)
list 
lockip (playername) [add/remove/list/clear] [ip]
mail [send/clear/read] [playerName] (message)
mailall [send/clear/remove] [message]
maintenance (true/false) (message)
maxhp set/add/take/clear [playerName] [amount] (-s)
maxplayers [amount]
me [message]
merchant [type] (playerName)
migratedatabase 
mirror (start/stop)
mobhead [mobType] (entryNumber) (playerName) (-s)
money [pay/give/take/set] [playerName/all/alloffline] [amount][%rand/1-1000%][1%[min-max]][playerName]] (-s)
more (playerName) (-clone/[amount])
msg [playerName] [message]
msgtoggle (playerName)
mute [playerName] (time) (-s) (reason)
mutechat (time) (-s) (reason)
nameplate (playerName) (-pref:[some_prefix]) (-suf:[some_suffix]) (-c:[colorCode])
near (distance)
nick [newNickName/off] (playerName) (-s)
notarget (playerName) (true/false) (-s)
note (playerName) [add/remove/clear/list] (id/note)
openbook (cText) (playerName) (fileName.txt)
oplist 
panimation (variable/playerName/stopAll) (stop)
patrol 
pay [playerName] [amount] (-s)
paytoggle (playerName)
ping (playerName/message)
placeholders (parse) (placeholder) (playerName)
playercollision (playerName) [true/false] (-s)
playtime (playername)
playtimetop [page]
point (particleName) (playerName) (-self) (time) (-s:[speed])
portals (new/nearest/forceupdate/setlocation/enabled) (portalName) (world:x:y:z:yaw:pitch)
pos (playerName)
preview [range] (innerrange)
prewards (playerName)
ptime (freeze/unfreeze/day/night/dusk/morning/realtime/reset) (playerName) (-s)
purge (stop)
pweather (playerName) [sun/rain/reset] (-s)
rankdown (playerName) (rankName) (confirm) (-cmd) (-cost)
rankinfo (playerName) (rankName)
ranklist 
rankset (playerName) [rankName] (-cmd) (-cost)
rankup (playerName) (rankName) (confirm)
realname (playerName/nickName)
recipe (itemName)
reload 
removehome (homeName) (playerName)
removeuser [uuid/duplicates]
removewarp (warpName)
repair [hand/armor/all] (playerName)
repaircost (hand/armor/all) (playerName)
replaceblock id [blockName:data/id:data] w [blockName:data/id:data] r [range in chunks/g] y [max height]
reply [message]
resetback (playerName) (reason) (-death) (-s)
resetdbfields [collumnName] (-w:[worldName]) (-p:[playerName])
ride 
rt (playerName) (worldName) (-s)
sameip 
saturation (playerName) [amount]
saveall (daysRange/-online)
saveditems [save/get/remove/list] (savedItemName) (-t:playerName) (-a:amount) (-c:category/all) (-s)
sc (playerName)
scan 
scavenge (playerName)
schedule [scheduleName]
se (SignLine) [Text]
search 
seen [playerName/uuid]
select (pos1/pos2/shift/expand/contract/clear) (amount)
sell (all/blocks/hand/same/gui)
sendall [serverName]
server [serverName] (playerName) (-f)
serverlist 
servertime 
setenchantworth 
setfirstspawn (playerName)
sethome (homeName) (playerName) (-p) (-l:worldName;x;y;z) (block/Material) (slotNumber)
setmotd [newMotd] (-s)
setrt (worldName) (center:[x]:[z]) (min:[range]) (max:[range]) (square/circle) (enabled/disabled)
setspawn (playerName) (true/false) (-g:[groupName]) (-rng:[range]) (-w:world,world_nether) (loc:[world;x;y;z;yaw;pitch])
setwarp [warpName] (reqPermission) (hand) (slot) (autoLore) (-g:[groupName]) (world;x;y;z;yaw;pitch)
setworth (itemname) -s:(sellPrice)
shadowmute [playerName] (time) (-s) (reason)
shakeitoff 
shoot (playerName) (-t:targetPlayer) (type) (speed)
signspy (playerName)
silence 
silentchest 
sit 
skin [skinName/off/update] (playerName) (-s)
smite (playerName) (-s)
socialspy (playerName)
solve [equation]
sound [sound] (-p:[pitch]) (-v:[volume]) (playerName/-all) (world) (x) (y) (z) (-s)
spawn (playerName) (-s)
spawner [EntityType]
spawnereditor 
spawnmob [EntityType]
staffmsg [message/toggle/on/off]
stats (playerName)
statsedit (playerName) [add/take/set] [statistic] (subType) [amount] (-s)
status 
sudo [playerName] (command/c:[text])
suicide [playerName] (-s)
switchplayerdata [sourcePlayerName/uuid] [targetPlayerName/uuid]
tablistupdate (playerName)
tagtoggle (playerName)
tempban [playerName] [timeValue] (reason) (-s)
tempipban [ip/playerName] [time] (reason) (-s)
tfly (playerName) (timeInSec) (-s)
tgod [playerName] (timeInSec) (-s)
time (time) (world) (alter [value]) (-smooth)
titlemsg [playerName/all] [title
toast [playerName/all] (-t:[advType]) (-icon:[material]) [message]
togglecompass (playerName) (enable/disable) (-s)
toggleshiftedit (playerName) (enable/disable) (-s)
toggletotem (playerName) (enable/disable) (-s)
top [playerName] (-s)
tp [playerName] (playerName)
tpa [playerName] (playerName) (-c)
tpaall 
tpaccept (playerName)
tpahere [playerName] (playerName) (-c)
tpall (playerName)
tpallworld [worldName] (worldName;x;y;z(;yaw;pitch)) (-a)
tpbypass (playername)
tpdeny (playerName)
tphere [playerName] (playerName)
tpo [playerName] (playerName)
tpohere [playerName] (playerName)
tpopos (-p:playerName) [x] [y] [z] (world) (pitch) (yaw) (-rng:[range])
tppos (-p:playerName) [x] [y] [z] (world) (pitch) (yaw) (-rng:[range])
tps (-spikes)
tptoggle (playerName) (on/off/status) (-s)
tree (TreeType) (-p:[playerName])
unban [playerName/ip] (-s)
unbreakable (playerName) (true/false)
uncondense (itemName) (playerName) (-s)
unjail [playerName]
unloadchunks (-f)
unmute [playerName] (-s)
unmutechat (-s)
usermeta [playerName] [add/remove/clear/list/increment] (key) (value) (-s)
util (removeseats/testtarget)
vanish (playerName/list) (on/off)
vanishedit (playerName)
version 
viewrange [range] (playerName)
voteedit (playerName) [add/set/take/clear] [amount] (-s)
votes (playerName)
votetop (playerName)
walkspeed [playerName] [amount] (-s)
warn [playerName] (category) (reason) (-s)
warnings (playerName)
warp (warpName) (playerName) (-s) (-g:[groupName]) (-p:[pageNumber])
warpgroups 
weather (sun/rain/storm) (lock/duration) (worldName/all)
whowas [playerName]
workbench (playerName)
world (normal/nether/end/1/2/3...) (playerName) (-s)
worth (all/blocks/hand/material)
worthlist (playerName) (-missing)
```
