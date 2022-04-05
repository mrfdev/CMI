# FAQ - CMI's User-Moderation features

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
        <li>All my FAQ pages have been written for Spigot / Paper 1.18.2 and CMI 9.1.3.x or newer.</li>
        <li>The mrfdev github page is not an official resource, we're building up our knowledge base as a courtesy.</li>
        <li>I am an admin on the Zrips Discord, this does not mean what I share on here is official.</li>
    </ul>
</details>
</topMenu>

---

Every server is different, and that means that some people need specialized 'ban management' tools, while the other 80% might be fine with a variety of commands and features. This page tries to list what you can find in CMI, where, and what to expect. 

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> User Moderation features

There's no bungeecord support at the moment, as far as I understand. And there's no GUI to pick online-users from, what is available is listed below:

## Commands

```
> cmi checkcommand kick
 --------------------------------------------------
 1. chat [create/join/leave/list/invite/kick/listrooms] (chatName/playerName) (-private)
 2. kick [playerName/all] (message) (-s)
```

```
> cmi checkcommand ban
 --------------------------------------------------
 1. unban [playerName/ip] (-s)
 2. banlist
 3. tempban [playerName] [timeValue] (reason) (-s)
 4. ipbanlist
 5. tempipban [ip/playerName] [time] (reason) (-s)
 6. ban [playerName] (reason) (-s)
 7. ipban [ip/playerName] (reason) (-s)
 8. checkban (playerName)
```

```
> cmi checkcommand warn
 --------------------------------------------------
 1. warnings (playerName)
 2. editwarnings (playerName/clearall) (clear)
 3. warn [playerName] (category) (reason) (-s)
```

```
> cmi checkcommand jail
 --------------------------------------------------
 1. jail [playerName] (time) (jailName) (cellId) (-s) (r:jail_reason)
 2. jaillist (jailName) (cellId)
 3. jailedit
 4. unjail [playerName]
```

```
> cmi checkcommand note
 --------------------------------------------------
 1. note (playerName) [add/remove/clear/list] (id/note)
```

For a list of all the CMI commands, you can go [here](https://www.zrips.net/cmi/commands/)

## Permissions

```
> cmi checkperm kick
 --------------------------------------------------
 1. cmi.command.kick.bypass - Prevent player from being kicked from server
 2. cmi.command.kick - Kick player with custom message
 3. cmi.command.chat.kick - Allows to kick players from chat room
 4. cmi.command.afk.kickbypass - Prevents player from being kicked out of server when afk mode triggers event
 5. cmi.command.afk.kickOutIn.[[seconds]] - Defines time in seconds when player needs to be kicked after he enter afk mode
```

```
> cmi checkperm ban
 --------------------------------------------------
 1. cmi.command.ipban - Ban ip
 2. cmi.command.ipbanlist - Ban ip list
 3. cmi.command.banip.bypass - Prevents player from being banned by ip
 4. cmi.command.tempipban - Temp ban ip
 5. cmi.command.checkban - Check players ban status
 6. cmi.command.tempban - TempBan player
 7. cmi.command.tempban.bypass - Prevents player from being tempbanned
 8. cmi.command.tempban.max.unlimited - Allows to temp ban for more than config allows
 9. cmi.command.tempban.max.[anypositivenumber] - Allows to temp ban for defined max time
 10. cmi.command.ban - Ban player
 11. cmi.command.unban - Unban player or ip
 12. cmi.command.banlist - Ban list
 13. cmi.command.checkban.seereason - Allows to see players ban reason
 14. cmi.command.ban.bypass - Prevents player from being banned
```

```
> cmi checkperm warn
 --------------------------------------------------
 1. cmi.command.warnings.others - Check player warnings
---->When command is used on another player<----
Base command required
 2. cmi.command.editwarnings.others - Check player warnings
---->When command is used on another player<----
Base command required
 3. cmi.command.warn - Warn player
 4. cmi.command.warnings - Check player warnings
 5. cmi.command.warn.bypass - Prevents player from being warned
 6. cmi.command.editwarnings - Check player warnings
```

```
> cmi checkperm jail
 --------------------------------------------------
 1. cmi.command.jail.maxtime.[seconds] - Defines max amount of time player can jail someone
 2. cmi.command.jail.bypass - Prevents player from being jailed
 3. cmi.command.jail.bypasscmd - Allows command usage while jailed
 4. cmi.command.jail - Jail player for time period
 5. cmi.command.jaillist - List jails
 6. cmi.command.unjail - Release player from jail
 7. cmi.command.jailedit - Edit jails
```

```
> cmi checkperm note
 --------------------------------------------------
 1. cmi.command.note.others - Manage players notes
---->When command is used on another player<----
Base command required
 2. cmi.command.note.remove - Allows to remove or clear notes
 3. cmi.command.note.add - Allows to add notes
 4. cmi.command.note - Manage players notes
```

For a list of all the CMI permissions, you can go [here](https://www.zrips.net/cmi/permissions/)

## Placeholders



## Misc.

---

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. 

---
