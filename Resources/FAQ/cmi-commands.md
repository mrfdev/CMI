# FAQ - How do I deal with CMI commands?

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
        <li>All my FAQ pages have been written for Spigot / Paper 1.19.x and CMI 9.5.x.x or newer.</li>
        <li>The mrfdev Github page is not an official resource, we're building up our knowledge base as a courtesy.</li>
        <li>I am an admin on the Zrips Discord, this does not mean what I share on here is official.</li>
    </ul>
</details>
</topMenu>

---

Both base commands and your own custom commands

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI can handle Commands.

By default CMI has all it's commands underneath `/cmi <command>` you can find them all by typing: `/cmi help` and by viewing the list on the website here: (<https://www.zrips.net/cmi/commands/>)
If you wish to use `/<command>` and not just `/cmi <command>`, then you can edit the `/Saves/Alias.yml` file and change the `Enabled` option from false to true.
```yaml
  #  
  # /cmi home $1-
  /home:
    Enabled: true
    Tab: true
```
You can now save the file and type: `/cmi reload`, but to properly register the commands, you must /stop your server and start it again.


## Your own custom alias commands

Another option is to add your own commands. For example: `/banana`.
Custom Aliases (commands) are stored in the `~/plugins/CMI/CustomAlias/` folder, and by default, are stored in the `CustomAlias.yml` file. However, as of version 9.0.3.x and upwards, you can also store Custom Aliases in their own .yml file in the `~/plugins/CMI/CustomAlias/` directory.
To get started type `/cmi aliaseditor`. It will come up with an interface of all the registered custom aliases. Clicking on the green `+` will display a prompt in chat, asking you to enter the name of the command in the chat.
Once you have done this, it will open another interface which will also show a green `+`. Clicking on it will prompt you to enter the command that should be executed in the chat box, without the starting /. For example: `cmi say I am a banana.` 
You can press the green `+` again to add another command.
This feature is very dynamic, extensive and flexible. You can learn much more about it [here](https://www.zrips.net/cmi/commands/custom-alias/).

Your new command will show red, but it will still work. To properly register it, you must /stop your server and start it again. Once the server has restarted, the command will be properly registered and will auto-complete too. 
To edit existing custom aliases, you can type `/cmi aliaseditor` and then click on the command in the list. Optionally, you can type `/cmi aliaseditor <command>` to quickly navigate to a specific command. 

A visual YouTube tutorial can be found [here](https://www.youtube.com/watch?v=LN54XU12Zjc)

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. 

---
