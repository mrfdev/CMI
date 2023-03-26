# FAQ - How do I setup CMI Chat for chatrooms?

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

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI Chat Rooms feature (information, commands, permissions, etc)

The CMI Chat feature allows players to create public and private chat rooms that people can join, away from the global chat. 

**Commands:**
(CMI works best if you properly configure your config.yml and your permissions.)
```
/cmi chat
You can toggle it to true in alias.yml so you can use /chat

Syntax:
/cmi chat [create/join/leave/list/invite/kick] (chatName/playerName) (-private) (-locked) (-persistent)
```

**Permissions:**
(LuckPerms allows you to grant and negate permissions per user, group, rank, world, etc.)
```
cmi.command.chat.kick - Allows to kick players from chat room
cmi.chat.rangebypass - Allows to send messges over greater distances
cmi.command.chat.create - Allows to create chatroom
cmi.command.chat.invite - Allows to intite player into chatroom
cmi.chatgroup.[groupnumber] - Defines player custom chat group for public message format
cmi.chat.shout - Allows to send messges over greater distances
cmi.command.chat.create.private - Allows to create private chatrooms
cmi.command.chat.list - Allows to list players in chat room
cmi.command.chat.joinbypass - Allows to join private chat room without invitation
cmi.command.chat - Create and join chat rooms
cmi.command.chat.listrooms - Allows to list all chat rooms
```

**Some information from the changelogs:**

By default, if nobody's left in a chat room it will delete itself after about an hour.

Permission `cmi.command.chat.joinbypass` allows you to join a private chat room without an invitation.

Command `/cmi listroom` will display basic information about the available chat rooms. Requires permission `cmi.command.chat.listrooms` (private rooms are still protected and you will need invitation or bypass permission)

You can create private chat rooms by adding `-private`. (Players will require an invitation to join private chat rooms)

Players who got invitation to private chat room can rejoin chat room as many times as he wants, until he gets kicked from it.

`-private` will make chat room accessible only with invites from room creator

`-locked` will prevent players from leaving chat room

`-persistent` creates room which remains after server restart

Note: To remove a persistent room, you have to delete it manually from the `chatRooms.yml` file. Then `/cmi reload`, make sure to kick people out of the room first.

---
