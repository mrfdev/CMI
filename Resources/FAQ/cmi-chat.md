# FAQ - How can I use CMI as Chat Manager?

This is an FAQ message on the CMI Discord @ https://discord.gg/dDMamN4
https://ptb.discordapp.com/channels/452792793631555594/526402563847880725/711599754714284216

**CMI can handle the in-game Chat**, this is the recommended setup that works well with other plugins on Spigot/Paper 1.16.4
- Stop using the old Chat Manager, if you were using one.
- Buy and Install CMI (<https://www.spigotmc.org/resources/3742/>)
- Update `config.yml` (see below)
-
```yaml
# CMI config.yml, enable:
Chat:
  # Will try to modify chat to display it in defined format
  ModifyChatFormat: true
```
Optionally, if you want custom join/leave msgs, don't forget to enable this.
```yaml
# Enable it in Modules.yml
# Login, logout and death messages
# Applies for servers from 1.7.x and up
customMessages: true

# First join messages
# Applies for servers from 1.7.x and up
firstJoinMessages: true

# Handling of player tagging in chat and tabcomplete with @
# Applies for servers from 1.7.x and up
playerChatTag: true

```
Then walk through all the other options related to chat. 
Note: If you use BungeeChord, make sure you also install enable CMI Bungee support (!)


- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. More information on <https://www.zrips.net/cmi/>