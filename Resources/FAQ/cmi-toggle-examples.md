# FAQ - CMI Toggle Examples

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
        <li>All my FAQ pages have been written for Spigot / Paper 1.18.1 and CMI 9.1.1.1 or newer.</li>
        <li>The mrfdev github page is not an official resource, we're sharing our knowledge as a courtesy.</li>
        <li>I am a team member on the Zrips Discord, this does not mean what I share on here is official.</li>
    </ul>
</details>
</topMenu>

Note: Since CMI version 9.0.3.x you can create your own .yml files and store them in the `~/plugins/CMI/CustomAlias/` directory.

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Learning examples about using CMI to add feature/option toggling.

CMI is flexible and dynamic enough that it can do fancy tricks. One of them is a way to allow you to toggle certain things. This page has some examples to demonstrate how you could learn from them and apply it to your edge case situation.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Toggle example 1

This one is provided by @dkalaxdk#2228

The example below uses a toggle, to allow you to toggle between two different modes.

Whether this two different ranks, or two different command modes for whatever need you may have.
```yaml
# First two lines adds the required meta values to the player, if they haven't been created before.
# This can also be done using an OnJoinEvent from eventcommands.

    # State is the current state of the toggle, The name means nothing, and can be replaced with whatever you want(Can also be the current rank of the user).
    # The toggle usermeta, has to be a meta data value.
    # It is recommended to only have one, and then use that for every command, to limit the amount of usermeta needed.
    - check:%cmi_user_meta_State%==null! asConsole! usermeta [playerName] add State 1
    - check:%cmi_user_metaint_toggle%==null! asConsole! usermeta [playerName] add toggle 0

    # The messages can be replaced with whatever command you want to run. (Either permissions change or something like that.)
    - check:%cmi_user_meta_State%==1! asConsole! msg [playerName] 1
    - check:%cmi_user_meta_State%==0! asConsole! msg [playerName] 0
    # The following contains the actual checks.
    # Firstly, it checks the current state, and depending on that, uses usermeta to decide whether or not the value should be toggled.
    - check:%cmi_user_meta_State%==1! asConsole! usermeta [playerName] add State 1
    - check:%cmi_user_meta_toggle%==1! asConsole! usermeta [playerName] add toggle 0
    - check:%cmi_user_meta_toggle%==0! asConsole! usermeta [playerName] add toggle 1
    #Resets the toggle when done.
    - asConsole! usermeta [playerName] add State 0
```

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> FLASHLIGHT example

Turn on night vision, and turn it off, using the /flashlight command, append this at the end of customalias.yml and restart
```yaml
  flashlight:
    Cmds:
    - check:%cmi_user_meta_flashlightToggle%==null! asConsole! cmi usermeta [playerName] add flashlightToggle off
    - check:%cmi_user_meta_flashlightState%==null! asConsole! cmi usermeta [playerName] add flashlightState off
    - check:%cmi_user_meta_flashlightState%==off! check:%cmi_user_meta_flashlightToggle%==off! asConsole! cmi effect [playerName] night_vision 999 1
    - check:%cmi_user_meta_flashlightState%==off! check:%cmi_user_meta_flashlightToggle%==off! asConsole! cmi usermeta [playerName] add flashlightToggle on
    - check:%cmi_user_meta_flashlightState%==on! check:%cmi_user_meta_flashlightToggle%==on! asConsole! cmi effect [playerName] night_vision 1 1
    - check:%cmi_user_meta_flashlightState%==on! check:%cmi_user_meta_flashlightToggle%==on! asConsole! cmi usermeta [playerName] add flashlightToggle off
    - check:%cmi_user_meta_flashlightState%==off! check:%cmi_user_meta_flashlightToggle%==on! asConsole! cmi usermeta [playerName] add flashlightState on
    - check:%cmi_user_meta_flashlightState%==on! check:%cmi_user_meta_flashlightToggle%==off! asConsole! cmi usermeta [playerName] add flashlightState off
    Tab: false
```

Using the user meta feature from cmi a temp value can be stored, and then checked against. Allowing you within the same command to manage this value, use it to achieve something unique, including a toggle.

---
