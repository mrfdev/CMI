# FAQ - Some CMI (safety) tips for server owners

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

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI can check for quite some stuff

Enjoy the server, but as server owner, you might wish to check out a few things every once in a while. I run a few survival servers and I would like to double check some things. Who's still in god mode that shouldn't be? Who is still flying, that shouldn't be? Does anybody have any oversized items in their inventory? Things like that. 

It's worth to mention this is a collection of some basic cmi safety tips to get you started. This does not cover generic server security guidelines, tips to backup your data, or how to configure your network, firewall, etc. 

Note: This is just the first draft of this document, feel free to make suggestions and I will add your tips as well. I am just making this to a- remind myself, and b- to help others go 'yeah I should probably check that once a year lat least'.

Note: You can always manually inspect a player with `/cmi info playername` and toggle god/fly/etc there.

- **FLY MODE** (This reports back which players are still with fly-mode turned on.)
```
/cmi search fly true
```

- **GOD MODE** (This reports back which players are still with god-mode turned on.)
```
/cmi search god true
```

- **CREATIVE MODE** (This reports back which players are still in creative-mode.)
```
/cmi search gm creative
```
Note: You can also use this to find people in spectator mode.

- **MAX HP** (This reports back users who have potentially way too much maxhp.)

```
/cmi search maxhp 40
```
Note: 20 is the default (full hearts), 40 is double (maybe from events, etc?), this reports back anybody with more than double the hearts.

- **OVERSIZED STACKS** (This reports back which players have oversized stacks)
Note: For example, a shulker box in the enderchest with a stack of chestplates.
```
/cmi search oversize
```
Note: This is for online/offline players, you can also check oversized in a region, please note though that this will have a performance impact if you do say 200 or a whole world, etc.
```
/cmi scan oversize r 25
```
For example, if you wish to find out in general who has stacks of more than 32 diamond blocks, and are perhaps cheating, you could use this (again: performance):
```
/cmi scan id diamond_block r g q 32
```

- **OPERATOR LIST** (This reports back which players are set as operators (yikes))
```
/cmi oplist
```
Note: Nobody should be an operator these days anymore, use LuckPerms for example, and make a sub-group that you can add to your members who require escalated permissions as a team member.

- **CHECK ACCOUNT** (This reports back which player is potentially an alt of another)
```
/cmi checkaccount <playername>
/cmi sameip
```

- **LOCK IP** (This could improve staff security)
Note: You need console access to remove the lock on your own account
```
/cmi lockip <playername> add <your unique non changing ip>
(Prevents logging into account from different ip)
```

- **EXPLOIT** (Let's you configure basic anti exploit things)
```
Config.yml:

ExploitPatcher:
  # When enabled this will prevent exp bottles being destroyed on portal edge and duplicating them in result of that
  PreventExpPortals: true
  # When enabled this will prevent players from performing commands which could lead to some bugs
  # By default its disabled to keep vanilla behavior, but is recommended to enable it to avoid issues
  NoCommandsInBed: true

Modules.yml:

# Exploit prevention, like using trident for infinite flight or self damage with arrow
# Applies for servers from 1.9.x and up
elytraExploit: true
```

- **OTHER** (Things to consider)
```
- Disable command block in server.properties if you don't use it anyway
- /cmi gamerule, double check your per world game rule settings
- CMI Jail, review who is still in jail, just in case
```

- **SECURITY.KEY / cmi.sqlite.db** (Something to consider)

`Pointing out you should be aware of the files you are sharing.`

CMI has for example two files like the sqlite database `cmi.sqlite.db` and the file `security.key`. These are personal to your server. They contain your player data, and the encryption for attached items. 

I recommend to be aware of this before sharing files with others. 

Also, perhaps don't just blindly copy these over to another server you run. Let them build a unique new `security.key` file. This extends to all the files. If you have certain data that you consider confidential/ personal.

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. 

---
