# FAQ - Running CMI on Spigot / Paper 1.17.1

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

This page should help explain what I personally think is the way to run CMI on Spigot-, and Paper 1.17.1.

```
> cmi version
    --------------------------------------------------
    CMI plugin version: 9.0.4.5 SqLite
    CMILib: 1.0.3.11
    Server: Paper(281) 1.17.1-R0.1-SNAPSHOT
    CMI economy: Enabled Vault: 1.7.3-b CMI Chat: Enabled
    Modules -> 55 enabled 1 disabled: flightCharge
    --------------------------------------------------
>
```

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Note ahead.

- This is about CMI 9 and Spigot or Paper server version 1.17.1 mainly, apply to 1.16.5 and other lower versions accordingly.
- CMI version 9.0.4.x is considered the Stable version you can run on a live production environment. It is stable enough for 1.17.1, if you want to run it live that's fine. But backup your data and test things first! 
- CMILib will try to automatically download and attempt to replace older CMILib jars. This is okay. If it fails, you can do this manually as well.
- Zrips' libraries and other resources are linked below.

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Backup

- First, I strongly recommend before making any changes to your live server to take it offline with /stop and make a complete backup of the full directory, do not forget to backup your MySQL databases if you use any. 

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Test setup

- Before you actually update your live server it's recommended to have a test instance you can try stuff out on. This way you can detect issues and concerns early and learn to address those. Without risking your live server. especially while CMI 9 is in beta, and Minecraft 1.17 is still unstable.
- If this testing takes hours and days and you have new live data because players keep playing, obviously take the live server offline and backup again, before making the final changes.

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Before we start to install and/or upgrade CMI 9

- /stop your server. Do the backup thing, and make a test server.

- Go to SpigotMC and buy CMI if you haven't yet. And use BuildTools.jar from SpigotMC to build the latest version of Spigot 1.17.0 or download Paper 1.17 from their site, and get the latest release of CMI 9, here is the link: <https://www.spigotmc.org/resources/3742/>

- If you are not yet running CMI Lib then it will automatically download it. If this isn't the case due to firewalls or whatever reason, you can also manually download it here: <https://www.spigotmc.org/resources/87610/>

- Now that we have the latest files and are installing or upgrading from an older version to a new version, and we have a backup. It's time to replace any existing jars.

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> First time Installalation

If you already are running CMI, you can skip this and go straight to Upgrading (see below).

- Put the downloaded CMI `.jar` in the plugins/ directory. 

- Start the server and let it complete loading.

- Keep an eye on the console, the `latest.log` will also have all the details. If something goes wrong, take note. And try to figure out what is up and try again. 

- If you spot any bugs, confirm them, and report them to Zrip's Github as a new issue.

- When the server has started, CMI will automatically download languages, CMI Lib and you're ready to **Finish** (see below)

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Upgrading CMI

If you are installing it for the first time, go to the Installing steps above and skip the upgrading steps.

- Keep the existing `plugins/CMI/` folder, do not delete it.

- Keep the existing `plugins/CMILib/` folder, do not delete it.

- If you don't have the cmilib folder, don't worry, CMI will create it for you.

- If you have the old CMI Lib version, don't worry, CMI will auto-upgrade it, and we will clean up after.

- Remove the old CMI `.jar` you're using from the plugins/ directory. 

- Put the freshly downloaded CMI `.jar` in the plugins/ directory. 

- Start the server and let it complete loading.

- Keep an eye on the console, the `latest.log` will also have all the details. If something goes wrong, take note. And try to figure out what is up and try again.

- When the server has started, CMI will automatically download languages, CMI Lib and you're ready to **Finish** (see below)

- If your plugins/ directory has the old CMI Lib `.jar` files, it is okay to remove them now. Keep the new .jar of course.

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Finishing up.

Okay, you've backed everything up, you've made a test setup, and you've either fresh installed or upgraded CMI. Just one more thing before you can play with this test setup that is now running.

- This test setup has to /stop and restart once. This way any new languages, converted data, and updated libraries can be put to use.

- And now you can start it again. Keep an eye on the console (or `latest.log`) again and make sure there's no weird errors.

And that's it! You're done.

What a list huh, okay, now you have experience, you have tested, and you can do it again: but on the live server! Have fun with CMI.

#### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> What about 1.16.5?

That's a different page with different instructions:
<https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-running-1.16.5.md>

#### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Resources

SpigotMC's Buildtools.jar can be found here <https://hub.spigotmc.org/jenkins/job/BuildTools/>

These are for CMI 9.x:
`CMI Vault` Economy-compile for best results
<https://www.zrips.net/wp-content/uploads/2020/07/Vault-1.7.3.jar>

`CMI Injector` Use your own Vault? Use this economy injector
<https://www.zrips.net/wp-content/uploads/2020/07/CMIEInjector1.0.2.3.jar>

`CMI Bungee` Basic bungee chat support
<https://www.zrips.net/wp-content/uploads/2020/02/CMIB1.0.0.4.jar>

`CMI Library` Base Library 
<https://www.spigotmc.org/resources/cmilib.87610/>

`Spigot website` This is where you can get buildtools and make a spigot 1.17.1 jar
<https://hub.spigotmc.org/jenkins/job/BuildTools/>

`Paper website` This is where you can get Paper's 1.17.1 jar
<https://papermc.io/downloads>

---
