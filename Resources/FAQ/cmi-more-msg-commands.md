# FAQ - How can I add more CMI /msg commands?

Zrips Discord @ https://discord.gg/dDMamN4 

Note: Per 9.0.3.0 the CustomAlias.yml files are moved to their own folder: `~/plugins/CMI/CustomAlias/CustomAlias.yml` I will update this FAQ page semi soon. Just apply some common sense for now.

**CMI can do more /msg commands like /w, /whisper and /tell**, this is the recommended setup that works well with other plugins on Spigot / Paper 1.17.1.

- Buy the [CMI](https://www.zrips.net/cmi/) premium plugin if you haven't already, and Install it on all your servers: <https://www.spigotmc.org/resources/3742/>
- Note: CMI requires the [CMI-Library](https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md) .jar, you can get it here: <https://www.spigotmc.org/resources/cmilib.87610/>

- Take the server offline with `/stop`, and backup your (server) data before making any changes.

- First, negate the `minecraft.command.msg` permission with your permission manager.
  (Affecting commands: /minecraft:msg, /minecraft:w, /minecraft:tell, /msg, /w, /tell)
  LuckPerms example: `/lp group default permission set minecraft.command.msg false`

Note: This stops the above list of vanilla commands. It does not stop `/cmi msg`, allowing us to make a few custom ones through the Custom Alias Editor feature of CMI.

Note: `/cmi msg` requires the player's base-commands permission node `cmi.command`:
  LuckPerms example: `/lp group default permission set cmi.command true`
  See note at the bottom of this page for additional permission information.

- Next, update CMI's `Alias.yml` and set `/chat` from `false` (default) to `true`
```yaml
  # /cmi msg $1-
  /msg:
    Enabled: true
    Tab: true
```

- Next, at the bottom of CMI's `CustomAlias.yml`, add the following commands on a new line: 

Note: Make sure the indendation is with spaces, and matches the stuff above it)
```yaml
  w:
    Cmds:
    - asPlayer! cmi msg $1 $2-
    CustomTabs:
    - '[playername]'
  whisper:
    Cmds:
    - asPlayer! cmi msg $1 $2-
    CustomTabs:
    - '[playername]'
  tell:
    Cmds:
    - asPlayer! cmi msg $1 $2-
    CustomTabs:
    - '[playername]'
```

Note: `[playername]` is all players, but not vanished players. 
Note: You can obviously customize the above commands as you desire.

- Before we are done, as promised some additional permission information. `/cmi checkperm msg` discloses to us a few specific permissions, review them all for a custom setup and full control:
```
cmi.command.msg - Sends message to player
cmi.command.msg.[maingroupname].send - Allows to send private messages to specific player groups
cmi.command.msg.vanish - Allows to send private messages to vanished players
```

- And finally; Start the server back up again and check to guarantee that everything's working properly. 

More information about Luckperms usage: https://luckperms.net/wiki/Home
More information about CMI's custom Aliases: https://www.zrips.net/cmi/commands/custom-alias/
