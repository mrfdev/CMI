# FAQ - How do I deal with CMI commands?

<topMenu>
    <details>
        <summary><strong>FAQ Menu</strong></summary>
        <p>
         • <a href="https://faq.cmi.support/bungee">Bungeecord-Info</a>, 
         • <a href="https://faq.cmi.support/chance">Chance-Example</a>, 
         • <a href="https://faq.cmi.support/chat">Chat-Manager</a>, 
         • <a href="https://faq.cmi.support/format">Chat-Format</a>, 
         • <a href="https://faq.cmi.support/chatfilter">Chat-Filter</a>, 
         • <a href="https://faq.cmi.support/chatrooms">Chat-Rooms</a>, 
         • <a href="https://faq.cmi.support/commands">Commands-Manager</a>, 
         • <a href="https://faq.cmi.support/joinleave">Custom-Join-Leave</a>, 
         • <a href="https://faq.cmi.support/economy">Economy-Manager</a>, 
         • <a href="https://faq.cmi.support/eventcommands">Event-Commands</a>, 
         • <a href="https://faq.cmi.support/ext-cmds">Extending-Commands</a>, 
         • <a href="https://faq.cmi.support/gettingstarted">Getting-Started</a>, 
         • <a href="https://faq.cmi.support/glow">Glow</a>, 
         • <a href="https://faq.cmi.support/help">Custom-Help</a>, 
         • <a href="https://faq.cmi.support/hexcolors">Hex-Colors</a>, 
         • <a href="https://faq.cmi.support/import">Importing-Data</a>, 
         • <a href="https://faq.cmi.support/library">CMILib</a>, 
         • <a href="https://faq.cmi.support/locale">Locale</a>, 
         • <a href="https://faq.cmi.support/prefix">LuckPerms-Prefix</a>, 
         • <a href="https://faq.cmi.support/migrate">Migrate-Database</a>, 
         • <a href="https://faq.cmi.support/mode-stuck">Mode-Stuck</a>, 
         • <a href="https://faq.cmi.support/moderation">User-Moderation</a>, 
         • <a href="https://faq.cmi.support/more-msg-cmds">More-Msg-Commands</a>, 
         • <a href="https://faq.cmi.support/motd">MOTD</a>, 
         • <a href="https://faq.cmi.support/params">Parameters</a>, 
         • <a href="https://faq.cmi.support/ranks">Ranks</a>, 
         • <a href="https://faq.cmi.support/rules">Custom-Rules</a>, 
         • <a href="https://faq.cmi.support/running">Running-CMI</a>, 
         • <a href="https://faq.cmi.support/safety">Safety-Tips</a>, 
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
            <li>All my FAQ pages have been written for Spigot / Paper 1.18.2 and CMI 9.1.5.x or newer.</li>
            <li>The mrfdev github page is not an official resource, we're building up our knowledge base as a courtesy.</li>
            <li>I am an admin on the Zrips Discord, this does not mean what I share on here is official.</li>
        </ul>
    </details>
</topMenu>

---

Both base commands and your own custom commands

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI can handle Commands.

By default CMI has all it's commands underneath `/cmi <command>` you can find them all by typing: `/cmi help` and by viewing the list on the website here: (<https://www.zrips.net/cmi/commands/>)
If you wish to use `/<command>` and not just `/cmi <command>`, then you can edit the `Alias.yml` file and toggle the false value to true.
```yaml
# Random Example
# Enabling /home, so players don't have to type: /cmi home
# Find the /command and toggle it from false to true:

  # /cmi home $1-
  /home: true
```
You can now save the file and type: `/cmi reload`, but to properly register the commands a /stop and restart is required.

Another option is to add your own commands! For example: `/banana`.
Note: Custom Alias (commands) are stored in the cmi file: `CustomAlias.yml` and from version 9.0.3.x upwards you can also store your own commands in their own .yml file in the `~/plugins/CMI/CustomAlias/` directory.
To get started, In-game you type: `/cmi aliaseditor new banana` (obvious replace banana with the command you want)
There will be a green `+` to press, it will now as you to enter a command to execute. 
Type (without the starting /) for example: `cmi say I am a banana`
You can press the green + again to add another command. 
This feature is very extensive, dynamic, and you can learn much more about it here: (<https://www.zrips.net/cmi/commands/custom-alias/>)

The new (/banana) command might show red, but it will work. And the next time you restart the server it will properly register it and auto-complete as well. 
To edit existing custom alias commands, you can type: `/cmi aliaseditor` and then click on the command in the list. 

A visual youtube tutorial can be found here <https://www.youtube.com/watch?v=LN54XU12Zjc>

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. 

---
