# FAQ - How can I use CMI Chat with Bungee?

<topMenu>
<details>
    <summary><strong>FAQ Menu</strong></summary>
    <p>
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
        <li>All my FAQ pages have been written for Spigot / Paper 1.17.1 and CMI 9.0.6.x or newer.</li>
        <li>The mrfdev github page is not an official resource, we're sharing our knowledge as a courtesy.</li>
        <li>I am a team member on the Zrips Discord, this does not mean what I share on here is official.</li>
    </ul>
</details>
</topMenu>

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI Chat + Bungee Chat

- Download and Install CMI-Bungeecord on your proxy server (<https://www.zrips.net/wp-content/uploads/2020/02/CMIB1.0.0.4.jar>)
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

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Misc.

**Placeholders:**
```
%cmi_user_bungeeserver%
%cmi_bungee_total_spawn%
%cmi_bungee_current_spawn%
%cmi_bungee_motd_spawn%
%cmi_bungee_onlinestatus_spawn%
```

**Commands:**
```
cmi server [serverName] (playerName) (-f) (Connects [playerName] to bungeecord server)
cmi serverlist (Show server list)
cmi bbroadcast (!) [message] (-s:[serverName,serverName]) (Sends special message to all players on all servers)
cmi sendall [serverName] (Send all online players to target server)
(and through CMI chat: /msg, /r, /staffmsg, .. i assume?)
```

**Permissions:**
```
cmi.command.serverlist - Show server list
cmi.command.serverlist.others - Show server list
cmi.command.server.others - Connect to bungeecord server
cmi.command.bbroadcast - Sends special message to all players on all servers
cmi.bungee.publicmessages.spawn - Allows to send public messages to target server
cmi.command.sendall.bypass - Prevents player from being sent to target server
cmi.command.sendall - Send all online players to target server
cmi.command.server - Connect to bungeecord server
```

**config.yml:**
```yaml
  # Attention! This will require you to have CMI Bungee plugin which can be found at zrips.net
  # Or direct download https://www.zrips.net/cmi/
  # Do you want to enable private messaging over bungeecord
  BungeeMessages: false
  # Do you want to enable public messaging over bungeecord
  BungeePublicMessages: false
  # Do you want to enable staff messaging over bungeecord
  BungeeStaffMessages: false

BungeeCord:
  # You can disable bungeecord support entirely if you are exrperiencing issues with it
  # When setting this to false some features like public messages over bungee cord, private messages over bungeecord, portals over bungecoord and other features will stop working
  # Keep in mind that regular behavior of those features will remain intacted
  Enabled: false
  # When set to true player names from entire bungee network will be included into tab complete
  NamesInTabComplete: false
```

**Installation instructions:** (from what i gathered)
- Buy CMI for the network
- Install CMI on each server
- Get CMI Bungee jar and put it on the proxy
- Configure CMI properly, use CMI chat, and enable Bungee as per above config things.

I do not believe there's any `modules.yml` things that need to get enabled.

**FAQ:**
```
- if i run 3 servers and they're all on the same network, do i need three licenses? no, from what i gather that license covers the network
- is chat global? yes
- can i sync up economy on all servers? no, probably not (mysql player-data bridge plugin supporst cmi though)
- can all the /warps be the same on all servers? no
- what about homes? no
- can i use portals to teleport ppl to another server on the network? yes
- can i use /server or /server the way i want? yes alias.yml (/cmi server) (there's also /cmi serverlist)
- if a command doesn't support running on another server, can i still send it? what? no, i dont think so
- if a command doesn't move a player to another server, can i still do it? no, but yes, with /cmi aliaseditor you can make your own command that uses /cmi server and/or placeholders.
- are my inventories shared between servers? i doubt it, you probably need a bungee-inventory plugin dedicated to this (mysql player-data bridge plugin supporst cmi though)
- can i use 1 database for all cmi instances? no, default is sqlite, use mysql, and make sure they all use a unique prefix. Using 1 user table for every server for example will very very very likely cause massive issues.
- i put CMIB jar on the proxy (bungeecord) but it did not make any files or folders? yes, i dont think it does. On your 'servers' on the network type: /cmi version, if bungee is hooked, it should show there.
```

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> LATEST
Per CMI 9.0.4.3 this was in the changelog:
```
- Added better support for bungeeservers in the sense that now we can show custom messages when player switch servers to and from it. This will only works after you update CMIB plugin and only applies when you have custom login/logout messages enabled. New locale lines got added to CMI locale file
- Updating CMIB plugin will properly take player out of afk mode if he uses bungee only commands which previously would have been ignored
```
