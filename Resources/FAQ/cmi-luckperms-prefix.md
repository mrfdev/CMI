# FAQ - Configuring CMI to use LuckPerms prefix in Chat and Tab

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
     • <a href="https://faq.cmi.support/moderation">User-Moderation</a>,
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
        <li>All my FAQ pages have been written for Spigot / Paper 1.18.2 and CMI 9.1.4.x or newer.</li>
        <li>The mrfdev github page is not an official resource, we're building up our knowledge base as a courtesy.</li>
        <li>I am an admin on the Zrips Discord, this does not mean what I share on here is official.</li>
    </ul>
</details>
</topMenu>

---

For server owners who want to use add a LuckPerms prefix to CMI Chat and/or CMI Tablist. 

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI can handle LuckPerms placeholders

- Start using CMI as Chat Manager, if you were using something else.
 * https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-chat.md

- Install LuckPerms version 5.4.18 or newer for 1.18.2 (<https://www.spigotmc.org/resources/28140/>)

- Install PlaceholderAPI version 2.11.2-DEV-152 or newer for 1.18.2 (<https://www.spigotmc.org/resources/6245/>)

Before we get to the CMI part of things, let's explain this to help you get some overview:
> In order to get prefixes to show up in CMI, you need LuckPerms and PlaceholderAPI properly installed first. Also, you need to use CMI as chat manager. This way whatever LP placeholder is available to CMI through PAPI. 

So assuming you've got the above steps completed the next step is to check the LuckPerms wiki and learn to install the LP ecloud extention on PAPI, then reload PAPI, and then finally you can configure CMI chat to use these placeholders. 

- In console type (or as command in-game):
```
papi ecloud download LuckPerms
papi reload
```

- As per this page, the placeholder for the prefix is `%luckperms_prefix%`:
<https://github.com/lucko/LuckPerms/wiki/Placeholders>

- Next, you have to set the prefix for each group that you want to have one, you can do this from the console, in-game chat as a command, or through the `lp editor` web interface. However you desire to do so, you should end up with for example the VIP group to have this prefix, and the admin to have this other prefix:
```
prefix.14.&c(owner)
prefix.6.&6[VIP]
```
You can learn more about LuckPerms prefixes here: <https://github.com/lucko/LuckPerms/wiki/Prefixes,-Suffixes-&-Meta> 
Here's an example of how this looks and how you can test this:
```
> lp editor
  [LP] Preparing a new editor session, please wait...
  [LP] Click the link below to open the editor:
  https://luckperms.net/editor/C0xRbDj9T1
> lp user mrfloris info
  [LP] > User Info: mrfloris
  [LP] - UUID: 631e3896-da2a-4077-974b-d047859d76bc
  [LP]     (type: mojang)
  [LP] - Status: Offline
  [LP] - Parent Groups:
  [LP]     > 1mb_owner
  [LP] - Contextual Data: (mode: server)
  [LP]     Contexts: None
  [LP]     Prefix: ""
  [LP]     Suffix: None
  [LP]     Primary Group: 1mb_owner
  [LP]     Meta: (weight=14) (primarygroup=1mb_owner)
> lp applyedits AgHNFd5TCt
   [LP] Web editor data was applied to group 1mb_owner successfully.
   [LP] (1 addition and 1 deletion)
   +  prefix.14.&4(Owner) (true)
   -  prefix.14.&4 (true)
> lp user mrfloris info
  [LP] > User Info: mrfloris
  [LP] - UUID: 631e3896-da2a-4077-974b-d047859d76bc
  [LP]     (type: mojang)
  [LP] - Status: Offline
  [LP] - Parent Groups:
  [LP]     > 1mb_owner
  [LP] - Contextual Data: (mode: server)
  [LP]     Contexts: None
  [LP]     Prefix: "(Owner)"
  [LP]     Suffix: None
  [LP]     Primary Group: 1mb_owner
  [LP]     Meta: (weight=14) (primarygroup=1mb_owner)
>
```
(note, this is just a visual example, those aren't command instructions, I hope that's clear)

- You should be done now with PAPI and LP, after adding all the prefixes, weights, meta info, etc. 

- Go in-game and type: `/cmi placeholders parse %luckperms_prefix%`

If you for example are in that admin group that has this prefix set up, you can now see it should reply (owner) or VIP. This means CMI can see the LuckPerms placeholders correctly. You can now use it in CMI Chat and/or CMI Tablist.

- For **CMI Chat**, open `config.yml` and find `GroupFormat:`, at the `%luckperms_prefix%` at the appropriate place for the right groups.

- Restart the server, and start typing, it should show up now.

- For **CMI Tablist**, open `Modules.yml` and find `tablist: true` make sure it's set to true. 

- Then go to `tablist.yml` and find `GroupFormat:` and go through the `PlayerName:` parts and add the `%luckperms_prefix%` at the appropriate place for the right groups.

- Restart the server, and press tab, it should show up now.

---
