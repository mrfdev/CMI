# FAQ - <mode> stuck for players on join of server
  
Zrips Discord @ https://discord.gg/dDMamN4 
  
This document is to help answer some questions and narrow down if CMI is configured incorrectly to cause this, or if another plugin is potentially the cause to why someone might be stuck in fly or god or creative mode when they (re)join the server.

---

## Why does this happen?
  
Sometimes server owners run in cracked offline mode (which I personally do not support, respect the EULA please) and have other things installed such as AuthMe and alike plugins which help contorl what a player can and cannot do when they join. 
  
Another reason could be that a server owner runs plugins for hubs and lobbies to give players the ability to safely and freely join the server and exploire before playing. 
  
Together with CMI and/or other plugins it's a combination where it's conflicting with CMI and/or causing states of a player to 'stick'. This isn't particularlly CMI's vault as you can see.

## Stuck in god mode

In CMI's `config.yml` you can try to find the following code, set it to 0 to test and see if it still happens. The best way is still to `/stop` the server, customize the file, and start the server. This way you know for certain it's edited and not updated on a reload, etc.
  
```yml
ReSpawn:
  # Time in seconds to make player immortal after he respawns
  # Can be used to prevent respawn camping
  # Set to 0 if you want to disable it
  Immortality: 6
```

Keep these numbers reasonable. You cannot have this to be more than a minute, because yes, they join and can be in 'god mode' for up to a minute. Have rediculous high values here will result in unexpected behaviors.

Next, you can check with `/cmi info theirname` if they really are in god mode, don't forget, players love to troll you as well. If however, you have evidence they are in god mode, and it shows in the info command they are not. It's likely another plugin causing a conflict. 

```yml
WorldLimits:
  # By setting to true fly and gamemode limitations per world will be aplied for player on world change if they dont have appropiate permission node
  Enabled: true
  # World list with default game modes
  # If player will have cmi.worldlimit.gamemode.bypass permission node, game mode wont be changed
  # Possible modes: creative, survival, adventure, spectator, 
  Gamemode:
  - world_survival:survival
  # If player will have cmi.worldlimit.fly.bypass permission node, fly mode wont be changed
  Fly:
  - world_survival:false
  # If player will have cmi.worldlimit.elytra.bypass permission node, elytra flight will not be prevented
  # Players joining worlds with disable elytra flight will get their elytra dismounted if posible
  ElytraFlight:
  - world_survival:False
  # When set to false, only players with cmi.worldlimit.fly.aboveroof can fly above world build limit
  FlyAboveRoof: true
  # When set to false, only players with cmi.worldlimit.fly.aboveroof can fly above world build limit
  FlyAboveRoofLimitations:
  - world_survival-256
  # If player will have cmi.worldlimit.god.bypass permission node, god mode wont be changed
  GodMode:
  - world_survival:False
  # Prevents particular entity spawn reasons in defined worlds. All possible reasons: NATURAL, JOCKEY, CHUNK_GEN, SPAWNER, EGG, SPAWNER_EGG, LIGHTNING, BUILD_SNOWMAN, BUILD_IRONGOLEM, BUILD_WITHER, VILLAGE_DEFENSE, VILLAGE_INVASION, BREEDING, SLIME_SPLIT, REINFORCEMENTS, NETHER_PORTAL, DISPENSE_EGG, INFECTION, CURED, OCELOT_BABY, SILVERFISH_BLOCK, MOUNT, TRAP, ENDER_PEARL, SHOULDER_ENTITY, DROWNED, SHEARED, EXPLOSION, RAID, PATROL, BEEHIVE, PIGLIN_ZOMBIFIED, COMMAND, CUSTOM, DEFAULT
  SpawnReasons:
    world_survival:
    - None
```
  
You could temporarily disable the module for worldlimits in `modules.yml` and start the server back up again and see if this has any impact on your edge-case problem.
```yml
# World limitations: fly, game mode and god mode
# Applies for servers from 1.7.x and up
worldLimits: true
```
  

Permission wise, make sure you don't wildcard your players, if you want to worldlimit.* them, you also give them bypass permissions; for example:
```yml
> cmi checkperm worldlimit
[INFO]: --------------------------------------------------
[INFO]: 1. cmi.worldlimit.elytra.bypass - Allows to bypass elytra mode limitations by worlds
[INFO]: 2. cmi.worldlimit.god.bypass - Allows to bypass god mode limitations by worlds
[INFO]: 3. cmi.worldlimit.fly.bypass - Allows to bypass fly mode limitations by worlds
[INFO]: 4. cmi.worldlimit.fly.aboveroof - Allows to fly over world build limit. Feature should be enabled in config file
[INFO]: 5. cmi.worldlimit.gamemode.bypass - Allows to bypass game mode limitations by worlds
>
```

You can also double check their group/player permissions to see if these are properly applied (granted or negated)
```yml
> cmi checkperm god
[INFO]: --------------------------------------------------
[INFO]: 1. cmi.command.god - Set players god mode to true or false
[INFO]: 2. cmi.worldlimit.god.bypass - Allows to bypass god mode limitations by worlds
[INFO]: 3. cmi.pvp.godBypass - Allows to damage player while being in god mode
[INFO]: 4. cmi.command.tgod - Set players temporarily god mode until relog or time end
[INFO]: 5. cmi.command.god.others - Set players god mode to true or false
---->When command is used on another player<----
Base command required
[INFO]: 6. cmi.command.search - Search items/enchants/fly/maxhp/gm/oversize modes and other stuff from all users
[INFO]: 7. cmi.command.tgod.others - Set players temporarily god mode until relog or time end
---->When command is used on another player<----
Base command required
>
```

And command wise, if you set god to false, do they still have god mode? Or does this make them vulnerable again?
```yml
> cmi checkcommand god
[INFO]: --------------------------------------------------
[INFO]: 1. search
[INFO]: 2. tgod [playerName] (timeInSec) (-s)
[INFO]: 3. god [playerName] (true/false) (-s)
>
```

When players are PVP-ing they are in combat mode, CMI has a few settings for this as well. Double check they're configured properly and don't have crazy values as well. 
```yml
Combat:
  # Defines combat timer to be used in particular features
  Timer: 10
  # Prevents damage from players with god mode enabled
  # Can be bypassed with cmi.pvp.godBypass permission node
  noGodDamage: true
  # informs player that he cant damage players while in god mode
  noGodDamageInform: true
  # If set to true, then attacked player will be included into combat mode even if he doesnt fight back
  # If set to false then only attacker will be marked for pvp mode
  IncludeVictim: true
  Player:
    # If set to true, then player who gets placed into combat mode will get its fly mode disabled
    # This will disable players fly mode which will result in player dropping down and will disable option to start flying
    # This can be bypassed by player performing fly command if he has access to it and commands durring combat are not blocked
    # Can be bypassed with cmi.pvp.PFlyBypass permission node
    DisableFlight: true
    # If set to true player whose fly mode got disabled will not suffer fall damage, once
    DisableFallDamage: false
    # When set to true player will see boss bar message indicating how long until combat mode ends
    # This only applies for pvp type combat
    ShowBossBar: true
    # When set to true players will be only able to use commands defined in the list
    # This only applies for pvp type combat
    BlockCommands: true
    AllowedCommands:
    - msg
    - r
    - tell
    # When set to true AllowedCommands become black list which will define which commands player cant use
    MakeBlackList: false
  Mob:
    # If set to true, then player who gets placed into combat mode will get its fly mode disabled
    # Can be bypassed with cmi.pvp.MFlyBypass permission node
    DisableFlight: false
    # If set to true player whose fly mode got disabled will not suffer fall damage, once
    DisableFallDamage: false
    # When set to true player will see boss bar message indicating how long until combat mode ends
    # This only applies for pve type combat
    ShowBossBar: false
    # When set to true players will be only able to use commands defined in the list
    # This only applies for pve type combat
    BlockCommands: false
    AllowedCommands:
    - msg
    - r
    - tell
    # When set to true AllowedCommands become black list which will define which commands player cant use
    MakeBlackList: false
  Heads:
    Player:
      Drop: true
      # Percentage from 0 to 100 for head to be dropped. Decimals are acceptable, like 0.2
      # 100 will mean that head will be dropped every time player kills another player
      # 1 will mean that there is 1% that player will drop head if he is killed by another player
      Percentage: 25
      # Percentage from 0 to 100 for lowering chance in getting second head of same player
      # This will reset on each server restart
      LowerChanceOfterDrop: 50.0
      # When enabled player heads will have bigger chance to drop when using tools with looting enchantment
      # Value is in % and it will add appropriate percentage to current drop chance by using drop chance itself
      # For example player who has head drop change of 1% with looting 3 which has 30% bonus will have 1.3% as end value (default values)
      # This only applies for player heads
      # You can add as many levels as you want, simply duplicate line and set new number, in example
      # Lvl33: 35.5
      LootBonus:
        Enabled: false
        Lvl1: 5.0
        Lvl2: 15.0
        Lvl3: 30.0
      # List of worlds where we should drop player heads. Keep it empty if you want to include all posible ones
      Worlds: []
    Mob:
      # Enables custom mob heads dropping from mobs with particular chance
      # Check customHeads.yml for customization by entityType
      Drop: true
      # List of worlds where we should drop mob heads. Keep it empty if you want to include all posible ones
      Worlds: []
```

You could temporarily disable combat in `modules.yml` and start the server up again, and see if this has an impact on your edge-case problem.
```yml
# Handles player combat system
# Applies for servers from 1.7.x and up
playerCombat: true
```
  
You can also check your permissions and commands related to flying, creative mode, god, temp fly, temp god, etc. And make sure you don't run anything in the server before they disconnect that gives them access to these commands, grants them the related permisisons to enable any of this, or some shop item or attachedcommand etc that triggers this stuff. 

  
## I've tried everything, it is still happening.
  
Then stop the server, back it up, then clone it. Start a test setup on a different port, and remove all the plugins. And try with just CMI and ask the player to join and reproduce the issue. 

## For me it's creative or fly mode, not god mode, now what?
  
In that case the concept is the same, check your commands, the user info, the modules related to that, and configuration settings. Double check the permissions. Avoid conflict with other plugins, and test in an isolated setup to confirm it's a bug with cmi or not. 


---

You can find more information about the CMI plugin on the official site: [zrips.net/cmi](https://www.zrips.net/cmi/)
