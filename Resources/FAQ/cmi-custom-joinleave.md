# FAQ - How do I configure CMI for custom (first) join / leave messages?

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

Turn on and display a custom join and leave message to players. 

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI Chat + Custom Join/Leave messages

- Start using CMI as Chat Manager, if you were using something else.
 * https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-chat.md

- Update `config.yml` (see below)
```yaml
Messages:
  Login:
    # If set to true, login message wont be shown
    Disabled: false
    # Defines number of players from which to automatically start hiding join messages
    # Set to -1 to disable this
    AutoHideFrom: -1
    Custom:
      # If set to true, custom login message will be used. cmi.messages.disablelogin can be used to disable message for player
      Use: true
  Logout:
    # If set to true, logout message wont be shown
    Disabled: false
    # Defines number of players from which to automatically start hiding logout messages
    # Set to -1 to disable this
    AutoHideFrom: -1
    Custom:
      # If set to true, custom logout message will be used. cmi.messages.disablequit can be used to disable message for player
      Use: true
  # Check locale file for translation and custom placeholders: [playername], [totalUsers], [onlinePlayers]
  FirstJoinMessage:
    Use: true
  DeathMessage:
    # Defines number of players from which to automatically start hiding death messages
    # Set to -1 to disable this
    AutoHideFrom: -1
```
Note: If you are still on an outdated version below 9.0.7.x, the directory will be `plugins/CMILib/Translations`.

Next, inside the `plugins/CMI/Translations/` directory there is at least the file `Locale_EN.yml`, where you can find:
```yaml
Chat:
  localPrefix: ''
  shoutPrefix: '&c[S]&r'
  LocalNoOne: '!actionbar!&cNobody hear you, write ! before message for global chat'
  shoutDeduction: '!actionbar!&cDeducted &e[amount] &cfor shout'
  # Use \n to add new line
  publicHover: '&eSent time: &6%server_time_hh:mm:ss%'
  privateHover: '&eSent time: &6%server_time_hh:mm:ss%'
  staffHover: '&eSent time: &6%server_time_hh:mm:ss%'
  helpopHover: '&eSent time: &6%server_time_hh:mm:ss%'
  link: '&l&4[&7LINK&4]'
  item: '&7[%cmi_iteminhand_realname%[amount]&7]'
  itemAmount: ' x[amount]'
  itemEmpty: '&7[Mighty fist]'
```
And below is an example of some basic text you could use / customize:

```yaml
  FirstJoin: '{#Cerulean} 1MB Server »{#Feijoa} Welcome new player &6[playerDisplayName]{#Feijoa}
    to 1MoreBlock.com!'
  LogoutCustom: '{#Cerulean} - {#Feijoa}Player &l[playerDisplayName]&r {#Feijoa}left.'
  LoginCustom: '{#Cerulean} 1MB Server »{#Feijoa} Welcome back &6[playerDisplayName]
    {#Feijoa}❤'
```
As you can see you can use certain variables, CMI's hex colors, and set the text to whatever you want. Note that the above is a customization and not the default text, but gives you the info to search for within the locale file.

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Other Languages

Of course, if you use another language you will have to adjust that file. They are also in the `translations/` directory.

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Hiding certain Groups/Players

If you wish to hide the join/leave messages for a certain group or user, you can use these permissions:
```
> cmi checkperm disable

  cmi.messages.disablelogin - Disables login message
  cmi.messages.disablequit - Disables logout message
```
- LuckPerm: `lp group owner permission set cmi.messages.disablejoin true`
- LuckPerm: `lp user mrfloris permission set cmi.messages.disablequit true`

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Extending CMI Join Events

If you want to give first-time players something extra, you can utilise the `eventCommands.yml` file at the `onfirstjoin` and `onjoin` sections: _(for example, you can make another .txt file, run certain commands, or do whatever)_
```yaml
firstJoinServer:
  Enabled: true
  Commands:
  - msg! [playerName] This is event command example!
..etc..
```

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Switching (Bungee) Servers

In the `~/plugins/CMI/Translations/` folder, the `locale_EN.yml` file has the following, which you can customize:
```yaml
  ServerSwitchOut: ' &6[playerDisplayName] &eswitched server to &6[serverName]'
  ServerSwitchIn: ' &6[playerDisplayName] &ecame from &6[serverName] &eserver'
```

---
