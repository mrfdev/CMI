# FAQ - How can I import from other plugins into CMI?

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

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI can import data from EssentialsX

- Configure CMI to your liking. 

- Then turn on Maintenance mode:
```
/cmi maintenance true Working on the server, back later
/stop
```
- Start the server again. You will do this quite a few times, hence why I recommend enabling maintenance mode, and to do the rest from console.

- Do not let anybody, including yourself, login to the server. Work from console.

- First I would import old users into CMI, if possible:
Note: When it's done, do a little save-all, stop, and start the server again.
```
cmi importoldusers
save-all
stop
```
- Start the server again.

- EssentialsX does not need to be loaded to import data to CMI. The only thing that is needed is the plugin's folder. Read up on this page first: <https://www.zrips.net/cmi/faq/>

- Now to import from EssentialsX, and still from console.
Note: After each imported bit of data, do a save-all, stop the server, and then start the server again. Next, confirm the imported data is there, if possible.
```
cmi importfrom essentials home
save-all
stop
```
- Start the server again. If the data was successfully imported:
```
cmi importfrom essentials logoutlocation
save-all
stop
```
- Start the server again. If the data was successfully imported:
```
cmi importfrom essentials mail
save-all
stop
```
- Start the server again. If the data was successfully imported:
```
cmi importfrom essentials money
save-all
stop
```
- Start the server again. If the data was successfully imported:
```
cmi importfrom essentials nick
save-all
stop
```
- Start the server again. If the data was successfully imported:
```
cmi importfrom essentials warp
save-all
stop
```
- Although this is annoying, some servers may have issues doing it all at once. This is what worked for me. Going through it one by one, and checking the data in between. If something worked, I would make a backup, so that I have a copy I can roll back to and try again in case anything goes wrong. 

- Next, CMI also has a worth.yml file. You can simply drop the worth.yml file from EssentialsX into the CMI folder, and it will overwrite CMI's worth.yml file. 

- CMI doesn't have a kit importer, but, you can create the kits in-game using /cmi kiteditor, give yourself the kit from EssentialsX, then put those items in the CMI kit, and you're set.

- World management addons from EssentialsX are not 100% in CMI, but most features are, and even more so [GriefDefender](https://www.spigotmc.org/resources/1-12-2-1-19-griefdefender-claim-plugin-grief-prevention-protection.68900/), Zrips' [Residence](https://www.spigotmc.org/resources/residence-1-7-10-up-to-1-19.11480/), or [WorldGuard](https://dev.bukkit.org/projects/worldguard), all have world management features that do exactly that anyway.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI can import data from HolographicDisplays

- Configure CMI to your liking. 

- Then turn on Maintenance mode:
```
/cmi maintenance true Working on the server, back later
/stop
```
- Start the server again. You will do this quite a few times, hence why I recommend enabling maintenance mode, and to do the rest from console.

- Do not let anybody, including yourself, login to the server. Work from console.

- HolographicDisplays does not need to be loaded to import data to CMI. The only thing that is needed is the plugin's folder. Read up on this page first: <https://www.zrips.net/cmi/faq/>

- Now to import from HolographicDisplays, and still from console.
Note: After you have imported the data to CMI, do a save-all, stop the server, and then start the server again. Next, confirm the imported data is there, if possible.
```
cmi importfrom hd
save-all
stop
```
- Start the server again. If the data was successfully imported:

- Check the FAQ here, to see how to get started using CMI, for example how to setup CMI as a chat manager and an economy manager, how to setup BungeeCord chat, custom /help, custom /rules, deal with NuVotifier votes, hex colors, how to setup custom alias commands or configure CMI's base commands, etc.
<https://github.com/mrfdev/CMI/tree/master/Resources/FAQ>

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Unofficial Import Tool

Someone recently made me aware of this [import](https://github.com/BlackBeltPanda/Essentials-Kits-To-CMI) tool. Please note that I did not review the code, or the provided jar file. Please vet it before using it yourself. It's not an official tool, using it is at your own risk. But I think it's worth mentioning. This should help servers with loads of kits to maybe do the bigger part of the import work, after which they can clean things up.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> FAQ

- How can I use all the EssentialsX commands and aliases?

A lot of them are in the Alias.yml file of CMI. I would recommend going through them. I also have an Alias_true.yml [file](https://github.com/mrfdev/CMI/blob/master/Resources/Alternatives/Alias_true.yml) on my GitHub repository, under Resources > Alternatives > Alias_true.yml, where all of the commands are set to true.

Although some of the EssentialsX commands and aliases are there, you may notice that not all of them are there. If you want to be able to use all of EssentialsX's commands and aliases in CMI, you can use this [addon](https://github.com/mrfdev/CMI/tree/master/Resources/Add-ons/essentialsx) that I've made, that manually adds all the missing commands and aliases from EssentialsX to CMI. Read the information before downloading, and be sure to backup your data before using it.

---
