# FAQ - Setting up CMI Chat Format

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
        <li>All my FAQ pages have been written for Spigot / Paper 1.18.1 and CMI 9.1.0.4 or newer.</li>
        <li>The mrfdev github page is not an official resource, we're sharing our knowledge as a courtesy.</li>
        <li>I am a team member on the Zrips Discord, this does not mean what I share on here is official.</li>
    </ul>
</details>
</topMenu>

---

This requires you to have set up CMI as Chat Manager (https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-chat.md).

This document helps you to change the group format and group message format using LuckPerms, if you use a different way to get prefixes you have to try and understand this method and apply it to your situation. 

Don't forget to back up your data first, before making changes to your server.

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Understanding group format and group message format

In CMI's `config.yml` you will find two sections under the chat section. It's `GroupFormat:` and `GroupMessageFormat:`. But what is the difference?

**GroupFormat** will help you build up the part of the in-game chat before the actual message. This is where you can control per group colors, add placeholders, prefixes, and such. Leave the `{message}` part alone.

**GroupMessageFormat** will help you build up the part of the in-game chat that's the actual {message}. This is where you can control how the message itself will show up in the chat. For example, giving each group their own colors. 

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> GroupFormat and Permissions

The "groups" part of Groupformat is really handy, because it lets you control per group how things should look. It's important to know that the default and loweest group in LuckPerms should be the lowest in the list. And that you should just up increment the number from there. For eaxmple, if you have set up LuckPerms groups like this:
```
default
vip
donor
mod
admin
```
Then the admin is the highest group, they should get the highest number, and the default is the lowest group, and should get the lowest number. Group format would basically look like this:
```yaml
  GroupFormat:
    '1': '{displayName} > {message}'
    '2': '{displayName} > {message}'
    '3': '{displayName} > {message}'
    '4': '{displayName} > {message}'
    '5': '{displayName} > {message}'
```
In this simplified example the 1 would be default, 2 would be vip, etc. And admin would be 5.

As per the commented out section above the `GroupFormat:` section you need to grant each group their CMI permission node in the form of `cmi.chatgroup.[id]`

So run these commands for this example (obviously, change it to the groups you use on your server!):
```
lp group default permission set cmi.chatgroup.1 true
lp group vip permission set cmi.chatgroup.2 true
lp group donor permission set cmi.chatgroup.3 true
lp group mod permission set cmi.chatgroup.4 true
lp group admin permission set cmi.chatgroup.5 true
```

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> GroupFormat customization

If you would use the CMI chat now in-game you won't notice much difference, but let's change that with some temporary debug messages.

```yaml
  GroupFormat:
    '1': '&e DEBUG1 {displayName} > {message}'
    '2': '&6 DEBUG2 {displayName} > {message}'
    '3': '&b DEBUG3 {displayName} > {message}'
    '4': '&e DEBUG4 {displayName} > {message}'
    '5': '&c DEBUG5 {displayName} > {message}'
```
As you can see, and when you chat as a person from that particular group, they will have a random color, and a debug msg. Super handy to see what happens to which group for each player. Yes, obviously this is not how you would like it to finally look like - We're learning you step by step what things mean so you can do more complex edge-case personalization to your own server.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> GroupMessageFormat to match

Please note that if you have a certain amount of groups, like the 5 in our example, that you need 1,2,3,4,5 for GroupFormat and 5 for GroupMessageFormat.

```yaml
  GroupMessageFormat:
    '1': '{message}'
    '2': '{message}'
    '3': '{message}'
    '4': '{message}'
    '5': '{message}'
```

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> GroupMessageFormat permissions.

And just like the per group permission nodes for the format, we need them for the message as well. In luckperm, grant the permissions for cmi.chatmessagegroup.1 (and 2,3,4, and 5) as well. Just how we did earlier. 

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> GroupMessageFormat customization.

What's next is to customize the way it looks in game per group, you do NOT have to do this, but I know some people like this for their server so including it as an example. You can completely skip this step. 

```yaml
  GroupMessageFormat:
    '1': '{#yellow}{message}'
    '2': '{#orange}{message}'
    '3': '{#blue}{message}'
    '4': '{#green}{message}'
    '5': '{#red}{message}'
```
And yes, these are horrible color codes, again, we're just giving you an example. Please pick reasonable ones for your server. CMI Hex Colors are supported for both GroupFormat and GroupMessageFormat. 

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Customizing the Hover Over text.

This is more a bonus, or pro tip, there's a hoverable effect when you use CMI Chat. And you can customize it!

`ClickHoverMessages: true` should be true.

In the Locale file of `plugins/CMILib/Translations/Locale_EN.yml` you can find the `Chat:` section, which has `publicHover:` 

You can customize this public hover locale with your own text, CMI hex colors, and placeholders. Making it very dynamic. 

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Prefixes

You can learn how to configure LuckPerms to use LuckPerms prefixes in CMI Chat here:

https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-luckperms-prefix.md

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Done

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. 

---
