# FAQ - CMI's Specialized Commands Information

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

This page should help explain some of the basics what I personally think is the way to use CMI specialized commands features.

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> There's already a wiki page

https://www.zrips.net/cmi/commands/specialized/

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Condition-Characters Legend

There are a few special condition characters or operators that CMI uses in some specialized commands that help nitpick the outcome. Which is handy, you can check if someone has a permission, and run a command if that is true, or use `@` for opposite, so when it's not true.

```
[@] - happens when Condition is opposite
[?] - informs when condition failed and why
[#] - break up everything when condition is not true
```

You can use `#` specifically to stop the rest of the alias from executing i.e:
```yml
- check:someFailedCheck#! First command
- SecondCOmmand
- Thirdcommand
```
In the example above, no commands would be run.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Comparison Operators Legend

When a specialized command syntax requires a comparison you have to stick to a specific set, these all mean different things. Below is an example that uses the same check for balances, and they help you go check against exact matches, bigger or smaller matches, etc. Which can be really helpful.

```
==      (is equal to) 
!=      (is not equal to) 

>       (is less than)
>=      (is less than or equal to)

<       (is greater than)
<=      (is greater than or equal to)
```

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> What makes them specialized commands? (SYNTAX)

Every specialized command is basically a keyword that CMI recognizes, then whatever is behind the `:` is the condition that should result in a true/false or something logical. And it always ends with an `!`.

For example:
```
check:!
perm:!
```
i.e.
```yml
- check:%placeholder%==banana! msg! [playerName] It's a banana!
- perm:cmi.something.permname! msg! [playerName] You have the right permissions!
```

Each type of "keyword" might have different expectations, the wiki will have examples and more indepth info. This is more to help you understand how a specialized command is specific to CMI and can be ussed with certain CMI features, such as (scheduler)[https://www.zrips.net/schedule/] / (eventcommands)[] / (aliaseditor)[https://www.zrips.net/cmi/commands/custom-alias/] / (interactive commands)[https://www.zrips.net/cmi/commands/interactive-commands/].

There are a few specific exceptions, such as the ones below. 
```
asPlayer!
asConsole!
delay! 5
```
i.e.
```yml
- asPlayer! warp spawn
- delay! 2.5
- asConsole! cmi heal [playerName]
```
Here you can see they don't have the `:` thingy, but they also don't take a condition. 

The wiki has way more info about this, go play on a test server with it!

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Checking Empty Results

You can check against null and empty results, in case you specifically need to know if a (parameter)[https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-parameters.md] for example is empty or not.

In case you want to compare value against empty field, use “`null`” or “`[empty]`”:
```yml
- check:$1==null! msg! [playerName] Please provide an argument
- check:something==[empty]! msg! [playerName] Your argument was empty
```

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Stacking Specialized Commands

Yes, it's possible to stack a couple of them, I would not overdo it. A pro tip for when you really really need to stap loads and it doesn't work or fit, is to make a private custom alias command, feed the info to it, parse things there, and use the results from that to complete this particular command (handy for attachcommands btw)

For example, the easiest stacking is a check if a condition is met, and if someone has a specific permission for example. THEN run a command, but as a console command. 

So in this example that would be the use of `check:!` and `perm:!` and then `asConsole!` This is what we consider stacking, and the command only runs if the `check:` and `perm:` results to true for BOTH of them.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Reminder: Every line of commands will get executed.

If you make a custom alias command with CMI through `/cmi aliaseditor` for example, and you add multiple commands to the list, please be reminded that each line will get run. So if you have a check at the top, but then later you should not assume that check is still valid. Recheck, or at least match the conditions. Note that per CMI 9.0.4.x you can also use an if conditional at the top, and then check true or false against that - this could help with more complex repeatative conditions. (These are called _Statements_ on the wiki page)

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Simplifying your checks example

You can avoid complex situations by breaking it down to PER line checks. They will either be true or false, and when it's true, the command gets executed. 

```yml
- check:[playerName]==Notch! msg! [playerName] This command get executed because your name is "Notch".
- check:[playerName]!=Notch! msg! [playerName] This command get executed because you are nit "Notch".
- check:%cmi_user_balance%>1000! msg! [playerName] This command get executed because your cmi /balance is more than 1000.
- check:%cmi_user_balance%=<1000! msg! [playerName] This command get executed because your cmi /balance is less than or equal to 1000.
```

This is great for creating very specific situations, so one user in one group in a particular world will have a different result than someone else from another group in another world (to just randomly mention something..) 

You can use this to create "(chance)[https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-chance.md]" or figure out "random" results or even dynamic "(toggles)[https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-toggle-examples.md]". Which is great to help you build a mini "crate" addon with just CMI features. Or have dynamic rewards for voting or kits or teleport locations, etc. 

---

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Resources

More info about Specliaized Commands: https://www.zrips.net/cmi/commands/specialized/
More info about CMI Paramters: https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-parameters.md

#### Contributions

Thank you Zrips for all the help with expanding this feature over time, it's helping the features on my server to be super flexible and dynamic! 
And for Cloude_LeCaw, Alax, and others from the Zrips Discord Community with helping explain things and help build this particular FAQ page.
