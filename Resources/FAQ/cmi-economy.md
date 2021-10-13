# FAQ - How can I use CMI for Economy?

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

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI can handle Economy

- Download and Install CMI's Vault build (<https://www.zrips.net/wp-content/uploads/2020/07/Vault-1.7.3.jar>)
- Note: If you wish to use the original Vault build, then please get CMI-Injector <https://www.zrips.net/wp-content/uploads/2020/07/CMIEInjector1.0.2.3.jar>)
- Update `config.yml` (see below)
-
```yaml
# CMI config.yml, enable:
Economy:
  # Enable or disable CMI economy in general
  # In case CMIInjector is present, then this will be set to true automatically.
  Enabled: true
```

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. 

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Using the economy

Once your server starts up and the economy shows properly in `/cmi version`, you can start using commands such as
```
/cmi pay
/cmi money
/cmi balance
```
You can check the commands page on zrips.net and the permissions page on zrips.net to learn which commands and permissions along with them can be part of what you want out of your economy. 

Other plugins can now use CMI's economy engine via hooking into vault to transfer and store money for players. 

---

You can find more information about the CMI plugin on the official site: [zrips.net/cmi](https://www.zrips.net/cmi/)
