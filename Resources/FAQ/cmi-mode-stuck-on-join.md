# FAQ - <mode> stuck for players on join of server
  
  This document is to help answer some questions and narrow down if CMI is configured incorrectly to cause this, or if another plugin is potentially the cause to why someone might be stuck in fly or god or creative mode when they (re)join the server.

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

