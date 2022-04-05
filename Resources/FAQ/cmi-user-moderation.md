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

There's no GUI to pick online-users from, what is available is listed below. I would also like to point out that I personally believe a team of staff on any server shouldn't be there to abuse their powers, be toxic, nor that they should not first communicate with their (regular) community members, before jumping to conclussions and perm banning someone. Offer the option of a ban-appeal so mistakes made by team members can be discussed and corrected. You're there to moderate a community, not to police it. Of course, you can make exceptions to that idea in case of blatant breaking of certain rules such as 'no hate speech'.

## Commands

```
> cmi checkcommand kick
 --------------------------------------------------
 1. chat [create/join/leave/list/invite/kick/listrooms] (chatName/playerName) (-private)
 2. kick [playerName/all] (message) (-s)
```

```
> cmi checkcommand cuff
 --------------------------------------------------
 1. cuff [playername] (true/false) (-s)
```

```
> cmi checkcommand mute
 --------------------------------------------------
 1. mute [playerName] (time) (-s) (reason)
 2. unmutechat (-s)
 3. mutechat (time) (-s) (reason)
 4. shadowmute [playerName] (time) (-s) (reason)
 5. unmute [playerName] (-s)
```

```
> cmi checkcommand clearchat
 --------------------------------------------------
 1. clearchat (self)
```

```
> cmi checkcommand spy
 --------------------------------------------------
 1. signspy (playerName)
 2. socialspy (playerName)
 3. commandspy (playerName) (-s)
```

```
> cmi checkcommand vanish
 --------------------------------------------------
 1. vanishedit (playerName)
 2. vanish (playerName/list) (on/off)
```

```
> cmi checkcommand patrol
 --------------------------------------------------
 1. patrol
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
> cmi checkperm cuff
 --------------------------------------------------
 1. cmi.command.cuff.bypass - Allows command usage while cuffed
 2. cmi.command.cuff - Suspends players actions
```

```
> cmi checkperm mute
 --------------------------------------------------
 1. cmi.command.shadowmute - Mute player without telling him that he is muted
 2. cmi.command.mute.bypass - Bypass personal public chat mute
 3. cmi.command.mute - Mute player
 4. cmi.command.mutechat - Prevent public messages
 5. cmi.command.unmutechat - Unmute public chat
 6. cmi.command.unmute - Unmute player
 7. cmi.command.mute.max.[anypositivenumber] - Allows to temp mute for defined max time
 8. cmi.command.mutechat.bypass - Bypass public chat mute
```

```
> cmi checkperm clearchat
 --------------------------------------------------
 1. cmi.command.clearchat.bypass - Players chat with permission will not be cleared
 2. cmi.command.clearchat - Clears chat
```

```
> cmi checkperm spy
 --------------------------------------------------
 1. cmi.command.signspy.hide - Hides created signs from signspy
 2. cmi.command.commandspy - Toggle command spy
 3. cmi.command.socialspy.others - Toggle social spy
---->When command is used on another player<----
Base command required
 4. cmi.command.socialspy.hide - Hides social messages from social spy
 5. cmi.command.signspy - Toggle sign spy
 6. cmi.command.socialspy - Toggle social spy
 7. cmi.command.signspy.others - Toggle sign spy
---->When command is used on another player<----
Base command required
 8. cmi.command.commandspy.bypass - Bypasses blacklisted command spy commands
 9. cmi.command.commandspy.others - Toggle command spy
---->When command is used on another player<----
Base command required
 10. cmi.chat.rangespy - Allows to see all messages over greater distances
 11. cmi.command.commandspy.hide - Hides performed commands from commandspy
```

```
> cmi checkperm vanish
 --------------------------------------------------
 1. cmi.command.vanish - Vanish player
 2. cmi.command.vanishedit.others - Edit vanish mode for player
---->When command is used on another player<----
Base command required
 3. cmi.command.vanishedit - Edit vanish mode for player
 4. cmi.command.msg.vanish - Allows to send private messages to vanished players
 5. cmi.command.vanish.others - Vanish player
---->When command is used on another player<----
Base command required
 6. cmi.seevanished - Allows to see vanished people
```

```
> cmi checkperm patrol
 --------------------------------------------------
 1. cmi.command.patrol - Patrol
 2. cmi.command.patrol.bypass - Player with permission will not be included into patrol list
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

```
> cmi placeholders

%cmi_user_name%
%cmi_user_uuid%

%cmi_user_bungeeserver%

%cmi_user_cuffed%
%cmi_user_muted%

%cmi_user_warning_count%
%cmi_user_warning_points%

%cmi_user_spy%
%cmi_user_cmdspy%
%cmi_user_signspy%

%cmi_user_banned%

%cmi_user_vanished_symbol%

%cmi_user_jailed%
%cmi_user_jailname%
%cmi_user_jailcell%
%cmi_user_jailtime%
%cmi_user_jailreason%

%cmi_user_toggle_[msg|pay|tp|compass|sospy|sispy|cospy|schest|autoflightrecharge|totem|shiftedit]%
%cmi_user_togglename_[msg|pay|tp|compass|sospy|sispy|cospy|schest|autoflightrecharge|totem|shiftedit]%

%cmi_chatmute_time%
%cmi_chatmute_reason%

%cmi_jail_time_[jailName]_[cellId]%
%cmi_jail_username_[jailName]_[cellId]%
%cmi_jail_reason_[jailName]_[cellId]%

%cmi_maintenance_state%
%cmi_maintenance_message%
```

For a list of all the CMI placehodlers, you can go [here](https://www.zrips.net/cmi/placeholders/)

## Spy features

It's possible as a person or person in a group to have permissions to use certain spy features to help moderate the Minecraft server. This means that when toggled on, and with the correct permission, it will be possible to see what others are messaging each other, what's being put on signs, or which commands they're typing. To be clear, you should respect the privacy of your players, it's merely a tool to help you review potential issues with players suspected of things like breaking the advertising rule. 

The commands, permissions, and placeholders are listed further up in this article. But you might wish to check modules.yml, and config.yml, and think about the available user-toggles to allow team members to have control over some settings.

**Vanish and Patrol**

You can also more actively spy on players by going into vanish mode, there's various settings in a gui (opening a chest silently, etc) and you can use the patrol feature to make sure you go from player to player.

Commands and perms for vanish and patrol can be found in the list higher up on this page.

## Community Wide Moderation

Besides per-user commands to help fix a situation with a rule-breaker. You should not forget that there is a community as a whole. A wider range of features are also available to help manage and moderate all players at once. I'd like to point out a few.

**Maintenance mode**

A quick way to close a server while keeping certain groups online. It isn't meant to be used like this, but it sure is a fun panic button. You can temporarily grant higher groups access to stay during maintenance mode. This way they can still log in while others can't. Especially handy during a flood attack by bots or something along those lines.

**Chat filter**

A global chat filter feature is available by CMI, using dynamic regular expressions to catch phrases and bypasses of phrases in a smart way. This should help auto-replace words in public and private messages, as well as auto warn, kick, ban, mute, etc. So even when you're not online you can fight hate speech, user safety, advertising, and such. 

More about the chat filter features [here](https://www.zrips.net/cmi/extra/chat-filter/)

**Global Chat Mute / Clearing**

If a situation gets out of hand and it doens't involve just one or a couple of users, you can consider using a temporary global chat mute. This way nobody can chat until the chat is unmuted again. Giving your team members time to process what is going on and take appropriate actions if needed.

Mute commands and permissions are listed higher up in this article.

There's also a clearing of the chat feature, allowing you to push some empty lines to remove the chat history really quickly for all players. 

## /rules and /motd

It is important to properly inform the community of your existing set of rules, even if it's a quick summery that links to the full set on a website, discord server, etc. For example, I recommend to have a central place where rules can be summerized, and have some examples there. But have the most important top 10 rules listed in a /rules command, and present them as soon as someone joins the server. This way they're informed prior to playing, and in a ban-appeal you can mention this. 

You can use CMI to create your own welcome message (message of the day) and your own rules command using the custom-text feature of CMI. I've made an FAQ article for both of these to help you get started, you can find them here:

- FAQ: [/rules](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-rules.md), and [/motd](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-motd.md)

If you have AND a website, AND a forum, AND more than one server, AND a mailing list, AND a discord, etc. Make sure your rules are mentioned on each one of them, be it in a footer link, welcome message, info channel, etc. 

## Bungeecord / Velocity

From what I understand there's currently no proxy support, what I do know CMI supports for Bungee I've put in this [article](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-bungee.md)

## Misc.

## xx

---

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. 

---
