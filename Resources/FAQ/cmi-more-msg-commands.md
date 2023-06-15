# FAQ - How can I add more CMI /msg commands?

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
         <pre>https://www.spigotmc.org/resources/3742/<br>Get the CMI plugin if you haven't already, and then install it on all your servers</pre></li>
        <li><a href="https://www.spigotmc.org/resources/87610/">Also Download CMILib</a> (free library) (<a href="https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md">more info</a>)
         <pre>https://www.spigotmc.org/resources/87610/<br>All Zrips plugins require the CMILib .jar file. Get it and also put it on all your servers.</pre></li>
        <li>All my FAQ pages have been written for Spigot / Paper 1.20.x and CMI 9.6.x.x or newer.</li>
        <li>The mrfdev Github page is not an official resource, we're building up our knowledge base as a courtesy.</li>
        <li>I am an admin on the Zrips Discord, this does not mean what I share on here is official.</li>
    </ul>
</details>
</topMenu>

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

- Next, update CMI's `Settings/Alias.yml` and set `/chat` from `false` (default) to `true`
```yaml
  # /cmi msg $1-
  /msg:
    Enabled: true
    Tab: true
```

- Next, save the below code to a file at this path: `~/plugins/CMI/CustomAlias/1MB-more-msg-cmds.yml`, and type `/cmi reload`

```yaml
CustomAlias:
  w:
    Cmds:
    - asPlayer! cmi msg $1-
    AddTabs: true
  whisper:
    Cmds:
    - asPlayer! cmi msg $1-
    AddTabs: true
  tell:
    Cmds:
    - asPlayer! cmi msg $1-
    AddTabs: true
  m:
    Cmds:
    - asPlayer! cmi msg $1-
    AddTabs: true
  pm:
    Cmds:
    - asPlayer! cmi msg $1-
    AddTabs: true
```

Note: You can customize the above commands as you desire.

- Before we are done, as promised some additional permission information. `/cmi checkperm msg` discloses to us a few specific permissions, review them all for a custom setup and full control:
```
cmi.command.msg - Sends message to player
cmi.command.msg.[maingroupname].send - Allows to send private messages to specific player groups
cmi.command.msg.vanish - Allows to send private messages to vanished players
```

- And finally, if you get red commands, then /stop, and start the server back up again.

---

- More information about Luckperms usage: https://luckperms.net/wiki/Home
- More information about CMI's custom Aliases: https://www.zrips.net/cmi/commands/custom-alias/
