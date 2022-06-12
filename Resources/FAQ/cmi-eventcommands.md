# FAQ - CMI Event Commands Information

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

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI EventCommands.yml Introduction

A file you can find in the `~/plugins/CMI/` directory, it's called `eventCommands.yml` and has a set amount of events that you can use to run commands, even with conditions, to extend the functionality and management of your Minecraft server. It is very dynamic and flexible, but do be aware that the more events and commands you add, the more time the server will need to process it all. Be mindful of the potential perormance impact.

## Custom Join / Leave Mesages

You can use CMI to turn off the default join/leave messages via config.yml, and you can indeed use eventCommands.yml, but personally since I use the CMI CHAT feature of CMI anyway as chat manager, I do prefer (and recommend) to use this method instead: [faq.cmi.support/joinleave](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-custom-joinleave.md)

A note to make here is that it is really cool how dynamic CMI is, you can use the above method for custom join/leave messages, and on top you can still use the event commands feature to extend it. For example, add a custom message to first time players, or a special announcement when a founder or donator joins. Or maybe a private message that only a staff or team member would see. 

For example, in combination with LuckPerms you can check against the highest group and send out a broadcast to everybody when a player in the VIP group has joined:
```yaml
joinServer:
  Enabled: true
  Commands:
  - delay! 0.4
  - check:%luckperms_in_group_vip%==yes! broadcast! {#Denim>} OMG, a &lVIP
    player{#Cerulean<>} just joined!!{#Denim<}\n&r
```
Pro tip; to better control the join event and when a message shows up, I do suggest to consider using a tiny delay of 0.3 or 0.4 with the join event. Giving the welcomeMessage some time to display, as well as the custom message to show after the regular joined-server message. Every server configuration is different; test!

## Message of the Day (welcomeMessage.txt, /motd)

The welcome message you can send players when they join the server can be handled by eventCommands.yml, but personally since it's a built-in feature of CMI, I do prefer (and recommend) to use that instead. All you have to do is make a ctext (custom text) file called welcomeMessage.txt and put it in the customText/ directory (and /cmi reload). More about this, and how to add the old familiar /motd command, is all explained here. [faq.cmi.support/motd](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-motd.md)

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Misc

You can find the default file here in case you need it: [eventCommands.yml](https://github.com/mrfdev/CMI/blob/master/Resources/Alternatives/eventCommands.yml)

And here's an alternative version by me that has all the events enabled, handy for debugging: [eventCommands-debug.yml](https://github.com/mrfdev/CMI/blob/master/Resources/Alternatives/eventCommands-debug.yml), by the way, here are [some screenshots](https://imgur.com/a/ewH5B8h) of how that looks

