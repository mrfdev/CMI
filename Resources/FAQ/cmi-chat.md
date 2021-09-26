# FAQ - How can I use CMI as Chat Manager?

Zrips Discord @ https://discord.gg/dDMamN4

This is the recommended setup that works well with other plugins on Spigot / Paper 1.17.1.

---

## CMI can handle the in-game Chat (Chat Manager)

- Stop using the old Chat Manager, if you were using one.
- Buy the [CMI](https://www.zrips.net/cmi/) premium plugin if you haven't already, and Install it on all your servers: <https://www.spigotmc.org/resources/3742/>
- Note: CMI requires the [CMI-Library](https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md) .jar, you can get it here: <https://www.spigotmc.org/resources/cmilib.87610/>

- Update `config.yml` (see below)
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


- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. 

---

## Misc

You can find more information about the CMI plugin on the official site: [zrips.net/cmi](https://www.zrips.net/cmi/)

Once you're using CMI as Chat Manager, make sure you stop using other chat managers as they can cause conflicts (two plugins trying to do the same thing). Next, you can configure the group format (customize how it looks, and set the right permissions), as well as configure LuckPerms to use its prefixes. 

- [set up cmi chat group chat format](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-chat-format.md)
- [chat filter](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-chatfilter.md)
- [chat rooms](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-chatrooms.md)
- [chat bungee](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-bungee.md)
- [chat join/leave](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-custom-joinleave.md)
- [chat prefixes](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-luckperms-prefix.md)
- [chat more /msg](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-more-msg-commands.md)
