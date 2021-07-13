# FAQ - Some CMI (safety) tips for server owners

Zrips Discord @ https://discord.gg/dDMamN4

**CMI can check for quite some stuff**, this is the recommended setup that works well on Spigot / Paper 1.17.1 for me. 

- Buy the [CMI](https://www.zrips.net/cmi/) premium plugin if you haven't already, and Install it on all your servers: <https://www.spigotmc.org/resources/3742/>
- Note: CMI requires the [CMI-Library](https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md) .jar, you can get it here: <https://www.spigotmc.org/resources/cmilib.87610/>


Enjoy the server, but as server owner, you might wish to check out a few things every once in a while. I run a few survival servers and I would like to double check some things. Who's still in god mode that shouldn't be? Who is still flying, that shouldn't be? Does anybody have any oversized items in their inventory? Things like that. 

It's worth to mention this is a collection of some basic cmi safety tips to get you started. This does not cover generic server security guidelines, tips to backup your data, or how to configure your network, firewall, etc. 

Note: This is just the first draft of this document, feel free to make suggestions and I will add your tips as well. I am just making this to a- remind myself, and b- to help others go 'yeah I should probably check that once a year lat least'.

Note: You can always manually inspect a player with `/cmi info playername` and toggle god/fly/etc there.

- **FLY MODE** (This reports back which players are still with fly-mode turned on.)
```
/cmi search fly true
```

- **GOD MODE** (This reports back which players are still with god-mode turned on.)
```
/cmi search god true
```

- **CREATIVE MODE** (This reports back which players are still in creative-mode.)
```
/cmi search gm creative
```
Note: You can also use this to find people in spectator mode.

- **MAX HP** (This reports back users who have potentially way too much maxhp.)

```
/cmi search maxhp 40
```
Note: 20 is the default (full hearts), 40 is double (maybe from events, etc?), this reports back anybody with more than double the hearts.

- **OVERSIZED STACKS** (This reports back which players have oversized stacks)
Note: For example, a shulker box in the enderchest with a stack of chestplates.
```
/cmi search oversize
```
Note: This is for online/offline players, you can also check oversized in a region, please note though that this will have a performance impact if you do say 200 or a whole world, etc.
```
/cmi scan oversize r 25
```
For example, if you wish to find out in general who has stacks of more than 32 diamond blocks, and are perhaps cheating, you could use this (again: performance):
```
/cmi scan id diamond_block r g q 32
```

- **OPERATOR LIST** (This reports back which players are set as operators (yikes))
```
/cmi oplist
```
Note: Nobody should be an operator these days anymore, use LuckPerms for example, and make a sub-group that you can add to your members who require escalated permissions as a team member.

- **CHECK ACCOUNT** (This reports back which player is potentially an alt of another)
```
/cmi checkaccount <playername>
/cmi sameip
```

- **LOCK IP** (This could improve staff security)
Note: You need console access to remove the lock on your own account
```
/cmi lockip <playername> add <your unique non changing ip>
(Prevents logging into account from different ip)
```

- **EXPLOIT** (Let's you configure basic anti exploit things)
```
Config.yml:

ExploitPatcher:
  # When enabled this will prevent exp bottles being destroyed on portal edge and duplicating them in result of that
  PreventExpPortals: true
  # When enabled this will prevent players from performing commands which could lead to some bugs
  # By default its disabled to keep vanilla behavior, but is recommended to enable it to avoid issues
  NoCommandsInBed: true

Modules.yml:

# Exploit prevention, like using trident for infinite flight or self damage with arrow
# Applies for servers from 1.9.x and up
elytraExploit: true
```

- **OTHER** (Things to consider)
```
- Disable command block in server.properties if you don't use it anyway
- /cmi gamerule, double check your per world game rule settings
- CMI Jail, review who is still in jail, just in case
```

- **SECURITY.KEY / cmi.sqlite.db** (Something to consider)

`Pointing out you should be aware of the files you are sharing.`

CMI has for example two files like the sqlite database `cmi.sqlite.db` and the file `security.key`. These are personal to your server. They contain your player data, and the encryption for attached items. 

I recommend to be aware of this before sharing files with others. 

Also, perhaps don't just blindly copy these over to another server you run. Let them build a unique new `security.key` file. This extends to all the files. If you have certain data that you consider confidential/ personal.


- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. More information on <https://www.zrips.net/cmi/>
