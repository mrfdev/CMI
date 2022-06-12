# FAQ - How can I import from EssentialsX into CMI?

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
        <li>All my FAQ pages have been written for Spigot / Paper 1.19 and CMI 9.2.0.x or newer.</li>
        <li>The mrfdev github page is not an official resource, we're building up our knowledge base as a courtesy.</li>
        <li>I am an admin on the Zrips Discord, this does not mean what I share on here is official.</li>
    </ul>
</details>
</topMenu>

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI can import data from EssentialsX

- Configure CMI to your liking. 

- Then turn on Maintenance mode:
```yaml
/cmi maintenance true Working on the server, back later
/stop
```
- Start the server again, you will do this quite a few times, hence why I recommend moving to maintenance mode true, and to do the rest from console.

- Do not let anybody, including yourself, login to the server. Work from console.

- First I would import old users into CMI if any, if possible: (# Imports users from playerdata folder in main world folder. Server can suffer lag spike during import)
Note: When it's done, do a little save-all, stop, and start the server again.
```yaml
cmi importoldusers
```

- Before we import from EssentialsX, Essentials plugin is not needed for it to work. But the folder from that plugin obviously is needed. Read up on this page first: <https://www.zrips.net/cmi/faq/> 

- Now to import from EssentialsX, and still from console.
Note: `importfrom [essentials/hd] [home/warp/nick/logoutlocation/money/mail]`
Note: After EACH imported bit of data, do a little save-all, stop, and start the server again. Only now, confirm the data is there, if possible.
```yaml
cmi importfrom essentials (ONE THING AT A TIME)
so, .. first, 
cmi importfrom essentials home
then, save-all, stop, and start the server again. If all is well:
cmi importfrom essentials logoutlocation
then, save-all, stop, and start the server again. If all is well:
cmi importfrom essentials money
restart again
cmi importfrom essentials mail
restart again
cmi importfrom essentials nick
restart again
cmi importfrom essentials warp
```

Note: Yes, annoying, but .. doing it all at once, I've had issues in the past, every server is different. This is what has worked for me. Going through it one by one, and checking the data in between. If something worked, I even made a backup, so i have a snapshot to roll back to and try again. 

- Next, CMI also has a worth.yml file, from what I understand you can just drop the essentialsx worth.yml, overwriting the cmi one. 

- And, CMI doesn't have a kit importer, but, you can in-game create the cmi kits with /cmi kiteditor, and then give yourself the essentialsx kit, then put those items in the cmi kit, and you're set.

- World management addons from EssentialsX are not 100% in CMI, but most features are, and even more so grief defender, or zrips' residence, or worldguard, all have world management features that do exactly that anyway.

- Check the FAQ here, to see how to get started using CMI, for example.. how to setup cmi as chat manager, economy manager, bungee chat, custom /help, custom /rules, deal with NuVotifier votes, hex colors, how to setup custom alias commands or configure cmi's base commands. etc..
<https://github.com/mrfdev/CMI/tree/master/Resources/FAQ>

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Unofficial Import Tool

Hi there, someone recently made me aware of this import tool. Please note that I did not review the code, or the provided jar file. Please vet it before using it yourself. It's not an official tool, using it is at your own risk. But I think it's worth to mention at least. <https://github.com/BlackBeltPanda/Essentials-Kits-To-CMI> This should help servers with loads of kits to maybe do the bigger part of the import work, after which they can clean things up. Might save time.

## All the EssentialsX Commands ?

Question: Me and my players are used to a lot of the original EssentialsX commands and their aliases, where are they! 

Answer: A lot of them are in the CMI Alias.yml file, go through them. On my github repo here I also have under resources > alternative > alias_true.yml where they're all set to true. 

Anyway, anything that's not in CMI can be manually added, I've made a nice little add-on that you can use, here: <https://github.com/mrfdev/CMI/tree/master/Resources/Add-ons/essentialsx> Read the readme before downloading, and backup your data before using it of course.

---
