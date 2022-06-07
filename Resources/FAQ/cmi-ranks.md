# FAQ - CMI Rankup System Information

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

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> What is a Rankup System?

A 'default' player in the game can be active, levelling up on various statistics, gameplay elements, including levels and points for things like mcMMO and Jobs. As a player grows in their game they can automatically rank up. Going from a beginner to an elite player. You can pick the ranks with CMI, set them up to auto upgrade, and set the requirements. When a rank-up happens, commands can be executed. Which is super helpful to grant perks, manage the permissions involved, etc.

More information: <https://www.zrips.net/cmi/rankup-system/>

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> How to use CMI Ranks (rankup system)

- Go to your server folder, find `spigot.yml` and within it find: `stats->disable-saving: false`, and make sure it is indeed set to `false`.

Please note that a player will get default rank group depending on the set permission node `cmi.rank.[rankName]`, if your first rank is `FirstRankName:` then grant them in LuckPerms (for example) the permission `cmi.rank.FirstRankName` like so: `lp user mrfloris permission set cmi.rank.FirstRankName true`, of course, you can also do this for the default group, like so: `lp group default permission set cmi.rank.FirstRankName true`.

And please note that not enabled ranks will be ignored!

- The CMI plugin directory (`~/pluyins/CMI/ranks.yml`) has a few example ranks, and a big chunk of text at the top (all the text starting with the `#` in front of them). I strongly recommend to take a bit of time to read through these comments, and to try to understand the examples. 

Please note that I strongly recommend to use `double quotes: ".."` around, and to *not* use `spaces` in the `StatsRequirements` that you set. This seems to make for the best working results. And after you set it and start the server up, if CMI updates it to something else, that's perfectly fine. 

Example what not to do:
```
  StatsRequirements:
  - PlayTime:21600
  -  walk:30000
  - 'MonsterKills : 1000'
  - "blocksmined: 30000"
```
*Example of what I recommend to do:*
```yaml
  StatsRequirements:
  - "PlayTime:21600"
  - "walk:30000"
  - "MonsterKills:1000"
  - "blocksmined:30000"
```

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> More Information

- <https://www.zrips.net/cmi/rankup-system/>

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Finally

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. 

---
