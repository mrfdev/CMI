# FAQ - How can I use CMI Chat with Bungee?

This is a pinned message on the CMI Discord @ https://discord.gg/dDMamN4
https://ptb.discordapp.com/channels/452792793631555594/526402563847880725/711599896695930942

**CMI can handle Bungee stuff for chat**, this is the recommended setup that works well with other plugins on Spigot/Paper 1.16.1
- Buy and Install CMI on all your servers (<https://www.spigotmc.org/resources/3742/>)
- Download and Install CMI-Bungeecord on your proxy server (<http://www.zrips.net/wp-content/uploads/2020/02/CMIB1.0.0.4.jar>)
- Update CMI's `config.yml` (see below)
```yaml
# Enable CMI Bungee Support 
BungeeCord:
  # You can disable bungeecord support entirely if you are exrperiencing issues with it
  # When setting this to false some features like public messages over bungee cord, private messages over bungeecord, portals over bungecoord and other features will stop working
  # Keep in mind that regular behavior of those features will remain intacted
  Enabled: true

# CMI config.yml, enable CMI Chat and CMI Bungee Chat
Chat:
  # Will try to modify chat to display it in defined format
  ModifyChatFormat: true

# Also:

  # Do you want to enable private messaging over bungeecord
  BungeeMessages: true
  # Do you want to enable public messaging over bungeecord
  BungeePublicMessages: true
  # Do you want to enable staff messaging over bungeecord
  BungeeStaffMessages: true
```
Then walk through all the other options related to chat. 

Don't forget to set-up appropriate permissions, such as:
`cmi.bungee.publicmessages.[servername]`


- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. More information on <https://www.zrips.net/cmi/>