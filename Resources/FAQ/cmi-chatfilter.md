# FAQ - CMI Chat Filter Information

<details><summary><strong>FAQ Menu</strong></summary>
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
 • <a href="https://faq.cmi.support/votes">Vote-Manager</a>.
</details>

<details><summary><strong>Official Zrips Links</strong></summary>
 • <a href="https://zrips.net/">Zrips Website</a> <pre>https://www.zrips.net/<br>The official website, wiki/documentation/information</pre>
 • <a href="https://discord.gg/dDMamN4">Zrips Discord</a> <pre>https://discord.gg/dDMamN4<br>The official Discord community, member-driven support</pre>
 • <a href="https://github.com/Zrips/">Zrips Github</a> <pre>https://github.com/Zrips<br>The place for bug reports and feature suggestions</pre>
</details>

<details><summary><strong>Prerequisites</strong></summary>
 • <a href="https://www.spigotmc.org/resources/3742/">Buy and Download CMI</a> (premium plugin) <pre>https://www.spigotmc.org/resources/3742/<br>Get the CMI plugin if you haven't already, and then Install it on all your servers</pre>
 • <a href="https://www.spigotmc.org/resources/87610/">Also Download CMILib</a> (free library) (<a href="https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md">more info</a>)<pre>https://www.spigotmc.org/resources/87610/<br>All Zrips plugins require the CMILib .jar file. Get it and also put it on all your servers.</pre>
 • All my FAQ pages have been written for Spigot / Paper 1.17.1 and CMI 9.0.4.x or newer.<br>
 • The mrfdev github page is not an official resource, we're sharing our knowledge as a courtesy.<br>
 • I am a team member on the Zrips Discord, this does not mean what I say is official.
</details>

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> chatfilter.yml

CMI offers a way to filter what players in-game are typing. This can trigger on a word, matching regex, swearing, and capitatlization. 

This is a draft, I haven't confirmed yet if this requires you to use CMI Chat (cmi as chat manager) or if it can grab chat going through another chat manager. I will assume it's a cmi chat feature. 

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Chatfilter.yml

The file is chatfilter.yml, you can edit it, add your own filters, and configure the chat filter features from cmi here. 

You can use this to catch swearing, urls, add whitelisted urls, and more.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Regex

Regular expressions (regex) is complicated, but makes this a very dynamic feature. It allows you to catch and filter a word like banana, but allow bananapie.

### Unofficial CMI chatfilter helper

A great tool created by @dkalaxdk#2228 can be found here: https://dkalaxdk.github.io/CMIRegexFilter/

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Testing

I strongly recommend to always test first, back up your existing data before mkaing changes. You don't want to make a mistake and auto ban everybody due to bad filtering. 

When testing, the website [regex101](https://regex101.com/) can be used to verify/test the different filters, to see whether they catch the expected input.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Commands

If chat gets out of hand you can't filter it quick enough, you can use commands like these
```
/cmi mute [playerName] (time) (-s) (reason)
and /cmu unmute [playerName] (-s)
/cmi mutechat (time) (-s) (reason)
and /cmi unmutechat (-s)
/cmi clearchat (self) (clears chat for all players (or just you))
```

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Permissions

```
cmi.chatfilter.bypass.[groupname] - Allows to bypass particular chat filter group
cmi.chatfilter.inform - Informs player when some one breaks chat filter rules
cmi.chatfilter.spambypass - Allows to bypass chat spam filter
```

---
