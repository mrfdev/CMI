# FAQ - How can I use CMI as Chat Manager?

<details><summary><strong>FAQ Menu</strong></summary>
 • <a href="https://faq.cmi.support/bungee">Bungeecord-Info</a>, 
 • <a href="https://faq.cmi.support/chance">Chance-Example</a>, 
 • <a href="https://faq.cmi.support/format">Chat-Format</a>, 
 • <a href="https://faq.cmi.support/chat">Chat-Manager</a>, 
 • <a href="https://faq.cmi.support/chatfilter">Chat-Filter</a>, 
 • <a href="https://faq.cmi.support/chatrooms">Chat-Rooms</a>, 
 • <a href="https://faq.cmi.support/commands">Commands-Manager</a>, 
 • <a href="https://faq.cmi.support/joinleave">Custom-Join-Leave</a>, 
 • <a href="https://faq.cmi.support/economy">Economy-Manager</a>, 
 • <a href="https://faq.cmi.support/ext-cmds">Extending-Commands</a>, 
 • <a href="https://faq.cmi.support/gettingstarted">Getting-Started</a>, 
 • <a href="https://faq.cmi.support/glow">Glow</a>, 
 • <a href="https://faq.cmi.support/help">Custom-Help</a>, 
 • <a href="https://faq.cmi.support/hexcolors">Hex-Colors</a>, 
 • <a href="https://faq.cmi.support/import">Importing-Data</a>, 
 • <a href="https://faq.cmi.support/library">CMILib</a>, 
 • <a href="https://faq.cmi.support/prefix">LuckPerms-Prefix</a>, 
 • <a href="https://faq.cmi.support/migrate">Migrate-Database</a>, 
 • <a href="https://faq.cmi.support/mode-stuck">Mode-Stuck</a>, 
 • <a href="https://faq.cmi.support/more-msg-cmds">More-Msg-Commands</a>, 
 • <a href="https://faq.cmi.support/motd">MOTD</a>, 
 • <a href="https://faq.cmi.support/params">Parameters</a>, 
 • <a href="https://faq.cmi.support/ranks">Ranks</a>, 
 • <a href="https://faq.cmi.support/rules">Custom-Rules</a>, 
 • <a href="https://faq.cmi.support/running">Running-CMI</a>, 
 • <a href="https://faq.cmi.support/safety">Safety-Tips</a>, 
 • <a href="https://faq.cmi.support/social">Social-Addon</a>, 
 • <a href="https://faq.cmi.support/specialized">Specialized-Cmds</a>, 
 • <a href="https://faq.cmi.support/toggle">Toggle-Example</a>, 
 • <a href="https://faq.cmi.support/trash">Trash</a>, 
 • <a href="https://faq.cmi.support/votes">Vote-Manager</a>.
</details>

<details><summary><strong>Official Zrips Links</strong></summary>
 • <a href="https://zrips.net/">Zrips Website</a> <pre>https://www.zrips.net/<br>The official website, wiki/documentation/information</pre>
 • <a href="https://discord.gg/dDMamN4">Zrips Discord</a> <pre>https://discord.gg/dDMamN4<br>The official Discord community, member-driven support</pre>
 • <a href="https://github.com/Zrips/">Zrips Github</a> <pre>https://github.com/Zrips<br>The place for bug reports and feature suggestions</pre>
</details>

<details><summary><strong>Prerequisites</strong></summary>
 • <a href="https://www.spigotmc.org/resources/3742/">Buy and Download CMI</a> (premium plugin) <pre>https://www.spigotmc.org/resources/3742/<br>Get the CMI plugin if you haven't already, and then Install it on all your servers</pre>
 • <a href="https://www.spigotmc.org/resources/87610/">Also Download CMILib</a> (free library) (<a href="https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md">more info</a>)<pre>https://www.spigotmc.org/resources/87610/<br>All Zrips plugins require the CMILib .jar file. Get it and also put it on all your servers.</pre>
 • All my FAQ pages have been written for Spigot / Paper 1.17.1 and CMI 9.0.4.x or newer.<br>
 • The mrfdev github page is not an official resource, we're sharing our knowledge as a courtesy.<br>
 • I am a team member on the Zrips Discord, this does not mean what I say is official.
</details>

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI can handle the in-game Chat (Chat Manager)

- Stop using the old Chat Manager, if you were using one.

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

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Misc

Once you're using CMI as Chat Manager, make sure you stop using other chat managers as they can cause conflicts (two plugins trying to do the same thing). Next, you can configure the group format (customize how it looks, and set the right permissions), as well as configure LuckPerms to use its prefixes. 

- [set up cmi chat group chat format](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-chat-format.md)
- [chat filter](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-chatfilter.md)
- [chat rooms](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-chatrooms.md)
- [chat bungee](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-bungee.md)
- [chat join/leave](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-custom-joinleave.md)
- [chat prefixes](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-luckperms-prefix.md)
- [chat more /msg](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-more-msg-commands.md)
