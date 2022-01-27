# FAQ - How do I use Hex Colors with CMI?

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
     • <a href="https://faq.cmi.support/votes">Vote-Manager</a>,
     • <a href="https://faq.cmi.support/worth">Worth</a>.
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
        <li>All my FAQ pages have been written for Spigot / Paper 1.18.1 and CMI 9.1.1.1 or newer.</li>
        <li>The mrfdev github page is not an official resource, we're sharing our knowledge as a courtesy.</li>
        <li>I am a team member on the Zrips Discord, this does not mean what I share on here is official.</li>
    </ul>
</details>
</topMenu>

How to use CMI to deal with Hex color support. More information on the official site [zrips.net](https://www.zrips.net/cmi/hex-colors/) here

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI can handle Hex Colors

Expected format: `{#8b4726}`

- Set-up CMI to handle the chat.
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

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. 

---
