# FAQ - How can I add more CMI /msg commands?

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

Note: Since CMI version 9.0.3.x you can create your own .yml files and store them in the `~/plugins/CMI/CustomAlias/` directory.

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI can do more /msg commands like /w, /whisper and /tell

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

---

More information about Luckperms usage: https://luckperms.net/wiki/Home
More information about CMI's custom Aliases: https://www.zrips.net/cmi/commands/custom-alias/

