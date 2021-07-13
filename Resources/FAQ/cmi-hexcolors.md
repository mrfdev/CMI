# FAQ - How do I use Hex Colors with CMI?

Zrips Discord @ https://discord.gg/dDMamN4

**CMI can handle Hex Colors**, this is the recommended setup that works well on Spigot / Paper 1.17.1 to deal with Hex color support. 

Expected format: `{#8b4726}`

- Buy the [CMI](https://www.zrips.net/cmi/) premium plugin if you haven't already, and Install it on all your servers: <https://www.spigotmc.org/resources/3742/>
- Note: CMI requires the [CMI-Library](https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md) .jar, you can get it here: <https://www.spigotmc.org/resources/cmilib.87610/>

- Next, set-up CMI to handle the chat.
In `config.yml`, find the following, set to `true`:
```yaml
Chat:
  ModifyChatFormat: true
  ClickHoverMessages: true
```

- Then, make sure CMI is properly configured for your server, so please read and go through the `Colors:` section and adjust accordingly.
In `config.yml`, find the following, set to `true`:
```yaml
    PublicMessage: true
    PrivateMessage: true
    Me: true
```

- Optionally, if you wish to use Hex colors in your custom join/leave messages or other features, you must enable their CMI Module:
In `modules.yml`, find them and set them to `true`:
```yaml
customMessages: true
firstJoinMessages: true
bossbarmsgs, holograms, tablist, etc.
```

- A bunch of things that have CMI Hex color support:
```
/cmi itemname
/cmi itemlore
tablist.yml
/cmi nick
/cmi ctellraw
holograms
bossbarmsg
actionmsg
titlemsg
/cmi broadcast
in-game chat
private msgs
chat room msgs
/cmi dye
/cmi anvil (item naming)
... basically anything that CMI controls.
```

- A bunch of things that do not have hex color support:
```
/cmi glow
```

- Commands: (Note: If you want /command, instead of /cmi command, then set the command to true in Alias.yml) 
```
In-game or on the console, type:
cmi checkcommand color
```

- CMI Permissions: (Note: The zrips.net hex colors page explains color permissions in detail.)
```
In-game or on the console, type:
cmi checkperm color
```

- Note: You can use any valid {#hexcolor}, but the 1500 from CMI can't be customized.

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. More information on <https://www.zrips.net/cmi/hex-colors/>
