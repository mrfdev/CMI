# FAQ - How do I use chance in CMI commands?

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

You can use CMI to make dynamic features using specialized commands and smart use of placeholders.

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI can deal with % chance

- Realise you can use this probably in various features of CMI, such as CMI chat, custom aliassed commands, holograms, etc. Generally everywhere that you can use both specialized commands and placeholders and run commands. So this includes eventcommands.yml and scheduler.yml. 

- The trick here is to temporary set a randomized result between 1 and 100, and check against it to make CMI do what we want. Below are a few example to demonstrate this.

- Use chance to run one or multiple commands (quick example by floris)
```
  chancetest:
    Cmds:
    - asConsole! cmi usermeta [playerName] add chance %cmi_random_1_100%
    - check:%cmi_user_meta_chance%>=75! msg! [playerName] More than 75%
    - check:%cmi_user_meta_chance%>=50! msg! [playerName] More than 50%
    - check:%cmi_user_meta_chance%>=25! msg! [playerName] More than 25%
    - check:%cmi_user_meta_chance%>=1! msg! [playerName] More than 1%
    - asConsole! cmi usermeta [playerName] remove chance

```
Please note that you can add almost 100 individual commands here, one for every possible % chance. And that instead of a msg, you could use give or kit or whatever you need to achieve. And in this example, if they get the number 2, it will show all four messages. But if the number is for example 91, it would only show one message. 

Another example, where we only give a certain item when it's a certain %, instead of running multiple commands. Again, you could refine this to your preference and run any reasonable command, such as cmi kit, or a message, broadcast, whatever.

- Use chance to run one command (quick example by gensecrets)
```
  giverandomitems:
    Cmds:
    - asConsole! cmi usermeta [playerName] remove randomchance -s
    - asConsole! cmi usermeta [playerName] add randomchance %cmi_random_1_100% -s
    - asConsole! cmi ctellraw [playerName] <T>&aYour random chance number was %cmi_user_meta_randomchance%</T>
    - check:%cmi_user_meta_randomchance%<20! asConsole! give [playerName] diamond
    - check:%cmi_user_meta_randomchance%>=20#!
    - check:%cmi_user_meta_randomchance%<40! asConsole! give [playerName] gold_ingot
    - check:%cmi_user_meta_randomchance%>=40#!
    - check:%cmi_user_meta_randomchance%<60! asConsole! give [playerName] emerald
    - check:%cmi_user_meta_randomchance%>=60#!
    - check:%cmi_user_meta_randomchance%<80! asConsole! give [playerName] redstone
    - check:%cmi_user_meta_randomchance%>=80#!
    - check:%cmi_user_meta_randomchance%<=100! asConsole! give [playerName] oak_planks
```
Please note that there are commands that will stop the later commands from executing  (via the # icon)

Okay next one, using the above we can make a private random item generator, and a public command for staff that can use this generator to reward players with an item when needed.

```
  _itemList:
    Cmds:
    - asConsole! cmi usermeta $1 remove randomchance -s
    - asConsole! cmi usermeta $1 remove randomitem -s
    - asConsole! cmi usermeta $1 add randomchance %cmi_random_1_100% -s
    - ptarget:$1! check:%cmi_user_meta_randomchance%<10! asConsole! cmi usermeta $1 add randomitem dirt -s
    - ptarget:$1! check:%cmi_user_meta_randomchance%>=10#!
    - ptarget:$1! check:%cmi_user_meta_randomchance%<20! asConsole! cmi usermeta $1 add randomitem sand -s
    - ptarget:$1! check:%cmi_user_meta_randomchance%>=20#!
    - ptarget:$1! check:%cmi_user_meta_randomchance%<30! asConsole! cmi usermeta $1 add randomitem stone -s
    - ptarget:$1! check:%cmi_user_meta_randomchance%>=30#!
    - ptarget:$1! check:%cmi_user_meta_randomchance%<40! asConsole! cmi usermeta $1 add randomitem emerald -s
    - ptarget:$1! check:%cmi_user_meta_randomchance%>=40#!
    - ptarget:$1! check:%cmi_user_meta_randomchance%<50! asConsole! cmi usermeta $1 add randomitem diamond -s
    - ptarget:$1! check:%cmi_user_meta_randomchance%>=50#!
    - ptarget:$1! check:%cmi_user_meta_randomchance%<60! asConsole! cmi usermeta $1 add randomitem stick -s
    - ptarget:$1! check:%cmi_user_meta_randomchance%>=60#!
    - ptarget:$1! check:%cmi_user_meta_randomchance%<70! asConsole! cmi usermeta $1 add randomitem coarse_dirt -s
    - ptarget:$1! check:%cmi_user_meta_randomchance%>=70#!
    - ptarget:$1! check:%cmi_user_meta_randomchance%<80! asConsole! cmi usermeta $1 add randomitem ancient_debris -s
    - ptarget:$1! check:%cmi_user_meta_randomchance%>=80#!
    - ptarget:$1! check:%cmi_user_meta_randomchance%<90! asConsole! cmi usermeta $1 add randomitem grass_block -s
    - ptarget:$1! check:%cmi_user_meta_randomchance%>=90#!
    - ptarget:$1! check:%cmi_user_meta_randomchance%<=100! asConsole! cmi usermeta $1 add randomitem cornflower -s
    Perm: true
    Tab: false
  giverandomitem:
    Cmds:
    - 'check:$1==null! asConsole! cmi msg [playerName] !{#orange}Yo, use a playername:
      /$0 <playername>'
    - 'check:$1!=null! ifoffline:$1! asConsole! cmi msg [playerName] !{#orange}Yo,
      it is: /$0 <playername> and that param is not an online player'
    - check:$1!=null! ifonline:$1! asConsole! _itemList [playerName]
    - check:$1!=null! ifonline:$1! asConsole! give $1 %cmi_user_meta_randomitem%
    - 'check:$1!=null! ifonline:$1! asConsole! cmi msg [playerName] !{#orange}Given $1 random
      item: %cmi_user_meta_randomitem%'
    Perm: true
    CustomTabs:
    - '[playername]'
```
The above can be added on a new line at the end of customalias.yml, then stop and start the server, dont use `_itemList` yourself, use `/giverandomitem <player>` instead.

Note: You can add custom alias commands to `~/plugins/CMI/CustomAlias/CustomAlias.yml`, or make a new files if you rather organize additional commands like these.

You can learn more about specialized commands, and placeholders by CMI here:
- https://www.zrips.net/cmi/commands/specialized/
- https://www.zrips.net/cmi/placeholders/
- https://www.zrips.net/cmi/commands/custom-alias/

How to install these examples?
- You can install these above examples by typing them over in-game, start /cmi aliaseditor and click on the green + to add a new custom alias command, give it a name and then add the above commands one by one.. 
- Or obviously, what is easier, stop the server, open `CustomAlias.yml` and paste it at the bottom, and start the server again. You can then also edit it in-game. 

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. More information on <https://www.zrips.net/cmi/>

---
