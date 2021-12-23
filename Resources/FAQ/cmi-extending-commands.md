# FAQ - How do I extend a CMI command?

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
        <li>All my FAQ pages have been written for Spigot / Paper 1.18.1 and CMI 9.1.0.4 or newer.</li>
        <li>The mrfdev github page is not an official resource, we're sharing our knowledge as a courtesy.</li>
        <li>I am a team member on the Zrips Discord, this does not mean what I share on here is official.</li>
    </ul>
</details>
</topMenu>

---

There's a video: https://youtu.be/TLKAusnisqs

Make commands even more dynamic and do exactly what you want, using the alias editor. 

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI commands can be extended through the aliaseditor

- You can go to `Alias.yml` and find the command you wish to extend. For example: `/clearchat: true`, make sure it's set to `false`, save the file.

- Then, either blindly copy the below example (instructions at the end) or make your own comamnds using the in-game custom aliaseditor feature. Let's go with that one for educational purposes.

- `/cmi aliaseditor`, then press enter, click on the green `+` icon to enter a name for a new command, we're going with `clearchat`.

- Then click on the next green `+` icon to start adding commands to it. You can use specialized commands, placeholders, commands from other plugins, and cmi commands. Among a few things. 

- Check the below code to see an example of how it looks inside the `CustomAlias.yml` file. 

- In the example of /clearchat we're using tab suggestions, a custom permission, using specialized commands to check against parameters entered, and we show different results to players as we do to staff members. 

Note: I am not saying this is THE WAY to do this, it's an example to help you learn how to disable the base command from CMI and make your own, so you can extend it. Which is fantastic, because you can use sounds, title or action msgs, bossbarmsgs, a list of commands, you can check against conditionals, use chance, placeholders, check against permissions and more. But this example should help you get started.

```yaml
  clearchat:
    Cmds:
    - check:$2==inform! asConsole! cmi sound block_anvil_land -all
    - asPlayer! cmi clearchat
    - check:$1==selfclear! asPlayer! cmi clearchat self
    - asConsole! cmi broadcast !&r \n {#orange}----------------------------------- \n &r
    - check:$2==inform! check:$3==null! asConsole! cmi broadcast !{#cerulean} •&l&m &r{#cerulean}• {#feijoa}The chat has been cleared {#cerulean} •&l&m &r{#cerulean}•
    - check:$2==inform! check:$3==tellstaff! asConsole! cmi broadcast !{#cerulean} •&l&m &r{#cerulean}• {#feijoa}The chat has been cleared {#cerulean} •&l&m &r{#cerulean}•
    - check:$2==inform! check:$3==tellall! asConsole! cmi broadcast !{#cerulean} •&l&m &r{#cerulean}• {#feijoa}The chat has been cleared {#cerulean} •&l&m &r{#cerulean}• ($4)
    - asPlayer! cmi staffmsg {#feijoa}Cleaned up chat, reason:{#cerulean}&l $4-
    - asConsole! cmi broadcast !&r \n {#orange}----------------------------------- \n &r
    Perm: true
    CustomTabs:
    - selfclear,selfkeep inform,quiet tellall,tellstaff noreason,user-drama,user-swearing,user-hatespeech,event,broadcast [playername]
```

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> How to install these examples?

- You can install these above examples by openning `CustomAlias.yml` and pasting the code at the bottom. Note that since CMI version 9.0.3.x you can create your own .yml files and store them in the `~/plugins/CMI/CustomAlias/` directory.

- For best results, stop the server, make your changes, and start the server again. This way commands can register properly and they can be used right away.

---
