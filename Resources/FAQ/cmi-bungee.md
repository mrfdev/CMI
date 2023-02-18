# This page has been moved, the latest version can be found here:
<https://www.zrips.net/bungeecord/>

# This page will be deleted during the fall of 2022.
Edit: now deprecated, next update in November where this page' content will be purged.

# FAQ - How can I use CMI Chat with Bungee?

<topMenu>
<details>
    <summary><strong>FAQ Menu</strong></summary>
    <p>
     • <a href="https://faq.cmi.support/bungee">CMI and Bungeecord info-</a>, 
     • <a href="https://faq.cmi.support/chance">Chance example</a>, 
     • <a href="https://faq.cmi.support/chat">CMI Chat manager</a>, 
     • <a href="https://faq.cmi.support/format">Chat format info</a>, 
     • <a href="https://faq.cmi.support/chatfilter">Chat filter</a>, 
     • <a href="https://faq.cmi.support/chatrooms">Chat rooms</a>, 
     • <a href="https://faq.cmi.support/commands">CMI Commands info</a>, 
     • <a href="https://faq.cmi.support/joinleave">Custom Join and Leave</a>, 
     • <a href="https://faq.cmi.support/economy">CMI Economy manager</a>, 
     • <a href="https://faq.cmi.support/eventcommands">Event commands</a>, 
     • <a href="https://faq.cmi.support/ext-cmds">Extending commands</a>, 
     • <a href="https://faq.cmi.support/gettingstarted">Getting started with CMI</a>, 
     • <a href="https://faq.cmi.support/glow">Glow info</a>, 
     • <a href="https://faq.cmi.support/help">Create custom /help</a>, 
     • <a href="https://faq.cmi.support/hexcolors">CMI Hex colors</a>, 
     • <a href="https://faq.cmi.support/import">Importing data into CMI</a>, 
     • <a href="https://faq.cmi.support/library">CMILib library info</a>, 
     • <a href="https://faq.cmi.support/locale">Customizing CMI Locale</a>, 
     • <a href="https://faq.cmi.support/prefix">CMI Chat with LuckPerms prefix</a>, 
     • <a href="https://faq.cmi.support/migrate">Migrate to MySQL database</a>, 
     • <a href="https://faq.cmi.support/mode-stuck">Player stuck in Mode?</a>, 
     • <a href="https://faq.cmi.support/moderation">User-moderation info</a>, 
     • <a href="https://faq.cmi.support/more-msg-cmds">More message commands</a>, 
     • <a href="https://faq.cmi.support/motd">MOTD</a>, 
     • <a href="https://faq.cmi.support/params">Parameters explained</a>, 
     • <a href="https://faq.cmi.support/ranks">Ranks info</a>, 
     • <a href="https://faq.cmi.support/rules">Create custom /rules</a>, 
     • <a href="https://faq.cmi.support/running">Running CMI</a>, 
     • <a href="https://faq.cmi.support/safety">Safety tips</a>, 
     • <a href="https://faq.cmi.support/specialized">Specialized commands info</a>, 
     • <a href="https://faq.cmi.support/toggle">Toggle example</a>, 
     • <a href="https://faq.cmi.support/trash">Trash example</a>, 
     • <a href="https://faq.cmi.support/votes">CMI Vote manager</a>,
     • <a href="https://faq.cmi.support/worth">Worth info</a>.
    </p>
</details>

<details>
    <summary><strong>Official Zrips Links</strong></summary>
    <ul>
        <li><a href="https://zrips.net/">Zrips Website</a>
         <pre>https://www.zrips.net/<br>The official website, wiki/documentation/information</pre></li>
        <li><a href="https://discord.gg/dDMamN4">Zrips Discord</a>
         <pre>https://discord.gg/dDMamN4<br>The official Discord community server with member-driven support</pre></li>
        <li><a href="https://github.com/Zrips/">Zrips Github</a>
         <pre>https://github.com/Zrips<br>The place for bug reports and feature suggestions</pre></li>
    </ul>
</details>

<details>
    <summary><strong>Prerequisites</strong></summary>
    <ul>
        <li><a href="https://www.spigotmc.org/resources/3742/">Buy and Download CMI</a> (premium plugin)
         <pre>https://www.spigotmc.org/resources/3742/<br>Get the CMI plugin if you haven't already, and then Install it on all your servers</pre></li>
        <li><a href="https://www.spigotmc.org/resources/87610/">Also Download CMILib</a> (free library) (<a href="https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md">more info</a>)
         <pre>https://www.spigotmc.org/resources/87610/<br>All Zrips plugins require the CMILib .jar file. Get it and also put it on all your servers.</pre></li>
        <li>All my FAQ pages have been written for Spigot / Paper 1.19 and CMI 9.2.x or newer.</li>
        <li>The mrfdev github page is not an official resource, we're building up our knowledge base as a courtesy.</li>
        <li>I am an admin on the Zrips Discord, this does not mean what I share on here is official.</li>
    </ul>
</details>
</topMenu>

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI Chat and BungeeCord Chat

- Download and install CMI's BungeeCord jar on your proxy server (https://www.zrips.net/cmib/).
- Update the `config.yml` (see below).
```yaml
BungeeCord:
  # You can disable bungeecord support entirely if you are exrperiencing issues with it
  # When setting this to false some features like public messages over bungee cord, private messages over bungeecord, portals over bungecoord and other features will stop working
  # Keep in mind that regular behavior of those features will remain intacted
  Enabled: true
```
You must also enable the following:
```yaml
Chat:
  # Will try to modify chat to display it in defined format
  ModifyChatFormat: true
```
Additionally, you can also enable the following settings:
```yaml
  Bungee:
    # Attention! This will require you to have CMI Bungee plugin which can be found at zrips.net
    # Or direct download https://www.zrips.net/cmi/
    # Do you want to enable private messaging over bungeecord
    Messages: false
    # Do you want to enable public messaging over bungeecord
    # Player needs to have cmi.bungee.publicmessages.[servername] permission node to be able to send messages to target server
    PublicMessages: false
    # Do you want to enable staff messaging over bungeecord
    StaffMessages: false
```
Then walk through all the other options related to chat. 

Don't forget to set up appropriate permissions, such as:
`cmi.bungee.publicmessages.[servername]`


- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. More information on <https://www.zrips.net/cmi/>.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Miscellaneous

**Placeholders:**
```
%cmi_user_bungeeserver%
%cmi_bungee_total_[serverName]%
%cmi_bungee_current_[serverName]%
%cmi_bungee_motd_[serverName]%
%cmi_bungee_onlinestatus_[serverName]%
```

**Commands and Permissions:**
```
/cmi bbroadcast (!) [message] (-s:[serverName,serverName])
-> cmi.command.bbroadcast - Sends special message to all players on all servers

/cmi msg [playerName] [message]
-> cmi.command.msg.togglebypass - Allows to send private messages even if player has pm toggled off
-> cmi.command.msg - Sends message to player
-> cmi.command.msg.[maingroupname].send - Allows to send private messages to specific player groups
-> cmi.command.msg.clean - Allows to send clean messages to player using ! at beginning
-> cmi.command.msg.noreply - Allows to send clean messages to player by using !- at beginning without option to reply
-> cmi.command.msg.vanish - Allows to send private messages to vanished players

/cmi options (playerName) (option) (enable/disable/toggle/status) (-s)
-> cmi.command.options.[visibleholograms/shiftsignedit/totembossbar/bassbarcompass/tagsound/chatspy/cmdspy/signspy/acceptingpm/acceptingtpa/acceptingmoney] - Allows to modify specific options
-> cmi.command.options.others - Modify personal options
-> cmi.command.options - Modify personal options

/cmi reply [message]
-> cmi.command.reply - Reply to last message sender

/cmi sendall [serverName]
-> cmi.command.sendall.bypass - Prevents player from being sent to target server
-> cmi.command.sendall - Send all online players to target server

/cmi server [serverName] (playerName) (-f)
-> cmi.command.server.others - Connect to bungeecord server
-> cmi.command.server - Connect to bungeecord server

/cmi serverlist
-> cmi.command.serverlist - Show server list
-> cmi.command.serverlist.others - Show server list

/cmi staffmsg [message/toggle/on/off]
-> cmi.command.staffmsg - Sends message to staff channel
```
**Miscellaneous:**
```
-> cmi.bungee.publicmessages.[servername] - Allows to send public messages to target server
```

**config.yml:**
```yaml
  # Attention! This will require you to have CMI Bungee plugin which can be found at zrips.net
  # Or direct download https://www.zrips.net/cmi/
  # Do you want to enable private messaging over bungeecord
  BungeeMessages: false
  # Do you want to enable public messaging over bungeecord
  # Player needs to have cmi.bungee.publicmessages.[servername] permission node to be able to send messages to target server
  BungeePublicMessages: false
  # Do you want to enable staff messaging over bungeecord
  BungeeStaffMessages: false
```
Additionally, the following can be changed:
```yaml
BungeeCord:
  # You can disable bungeecord support entirely if you are exrperiencing issues with it
  # When setting this to false some features like public messages over bungee cord, private messages over bungeecord, portals over bungecoord and other features will stop working
  # Keep in mind that regular behavior of those features will remain intacted
  Enabled: false
  # When set to true player names from entire bungee network will be included into tab complete
  NamesInTabComplete: false
```

**Installation Instructions:**
- Buy a CMI license to use on your network, if you don't already have one.
- Install CMI on each individual server, except for the proxy.
- Get the CMI Bungee file and put it on the proxy only.
- Configure CMI, enable the CMI Chat, and enable BungeeCord using the instructions from this article.

**FAQ:**

- If I run 3 servers and they're all on the same network, do I need three licenses?

No, a single license covers the entire network.

- Is the chat global?

Yes, the chat will show on all servers across your network.

- Can I synchronize money on all of my servers?

This is not currently possible. However, using a [plugin](https://www.spigotmc.org/resources/mysql-player-data-bridge.8117/) called MySQL Player Data Bridge, which supports synchronizing some of CMI's data across a BungeeCord network, this can be achieved by using the plugin on top of CMI.

- Can all of the warps synchronize across each of the servers?

No, this is unfortunately not possible using CMI.

- Can homes synchronize across each of the servers?

No. Like warps, this is unfortunately not possible using CMI.

- Can I use portals to teleport players to another server on the network?

Yes, this can be achieved using the portals system of CMI. More information about portals can be found [here](https://www.zrips.net/cmi/portals/).

- Can I use /server and /serverlist instead of /cmi server and /cmi serverlist?

Navigate to the Alias.yml file of CMI, and enable the following:
```yaml
  #  
  # /cmi server $1-
  /server:
    Enabled: true
    Tab: true
  #  
  # /cmi serverlist $1-
  /serverlist:
    Enabled: true
    Tab: true
```

- If a command cannot be run on a server, can I still send it?

No, this is not possible with CMI currently.

- If a command doesn't move a player to another server, can I still do it?

Yes, you can use /cmi aliaseditor that uses /cmi server and/or placeholders.

- Can I share inventories between servers?

This is not currently possible. However, using a [plugin](https://www.spigotmc.org/resources/mysql-player-data-bridge.8117/) called MySQL Player Data Bridge, which supports synchronizing some of CMI's data across a BungeeCord network, this can be achieved by using the plugin on top of CMI.

- Can I use a single database for all my CMI instances?

No, the default is SQLite. You can optionally use MySQL, but make sure that the `tablePrefix` option is unique for each of your servers to avoid issues.

- Why isn't the CMI BungeeCord file generating any folders?

This is completely normal. CMI's BungeeCord file does not currently generate any additional files or folders. You can verify that CMI is hooked with BungeeCord and checking `/cmi version` on any of your backend servers. It should show that BungeeCord is hooked.

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Will CMI's BungeeCord File Help Synchronize x y z?

At the moment the answer is probably no. It won't sync inventories, money, or things like warps and homes. Is there an interest by Zrips to add more support for this? Yes, from what I gathered there is. I have no ETA on this. 

Currently it's mainly for syncing public and private chats, staff messages, and to better support /cmi server, /cmi serverlist, and jumping through portals, and custom messages changing between servers. 

There's a third party (and unsupported) plugin on SpigotMC that claims to have support for CMI (<https://www.spigotmc.org/resources/mysql-player-data-bridge.8117/>).

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Velocity Support

There's currently no Velocity support. A comment below a review had Zrips confirm that it's in the works. I have no ETA for this. 

People have said they are using Snap to get CMI / CMIB working on Velocity as well. You need to put the CMIB jar in the plugin directory inside the Snap directory, I believe.

