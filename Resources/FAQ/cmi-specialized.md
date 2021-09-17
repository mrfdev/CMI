# FAQ - CMI's Specialized Commands Information

Zrips Discord @ https://discord.gg/dDMamN4

This page should help explain some of the basics what I personally think is the way to use CMI specialized commands features on Spigot-, and Paper 1.17.1 with CMI 9.x

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> There's already a wiki page

https://www.zrips.net/cmi/commands/specialized/

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Condition-Characters Legend

There are a few special condition characters or operators that CMI uses in some specialized commands that help nitpick the outcome. Which is handy, you can check if someone has a permission, and run a command if that is true, or use `@` for opposite, so when it's not true.

```
[@] - happens when Condition is opposite
[?] - informs when condition failed and why
[#] - break up everything when condition is not true
```

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Comparison Operators Legend

When a specialized command syntax requires a comparison you have to stick to a specific set, these all mean different things. Below is an example that uses the same check for balances, and they help you go check against exact matches, bigger or smaller matches,etc. WHich can be really helpful.

```
== (is equal to) 
!= (is not equal to) 

> (is less than)
>= (is less than or equal to)

< (is greater than)
<= (is greater than or equal to)
```

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> What makes them specialized commands? (SYNTAX)

Every specialized command is basically a keyword that CMI recognizes, then whatever is behind the `:` is the condition that should result in a true/false or something logical. And it always ends with an `!`.

For example:
```
check:!
perm:!

i.e.
check:%placeholder%==banana!
perm:cmi.something.permname!
```

Each type of "keyword" might have different expectations, the wiki will have examples and more indepth info. This is more to help you understand how a specialized command is specific to CMI and can be ussed with certain CMI features, such as scheduler / eventcommands / aliaseditor / interactive commands.

There are a few specific exceptions, such as the ones below. 
```
asPlayer!
asConsole!
delay! 5
```

Here you can see they don't have the `:` thingy, but they also don't take a condition. 

The wiki has way more info about this, go play on a test server with it!

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Checking Empty Results

You can check against null and empty, in case you specifically need to know if a paramter for example is empty or not.

In case you want to compare value against empty field, use “`null`” or “`[empty]`” for example `check:$1==null!`

```
check:$1==null! msg! [playerName] Please provide an argument
check:something==[empty]! msg! [playerName] Your argument was empty
```

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Stacking Specialized Commands

Yes, it's possible to stack a couple, I would not overdo it.

For example, the easiest stacking is a check if a condition is met, and if someone has a specific permission for example. THEN Run a command, but as a console command. 

So in this example that would be the use of `check:!` and `perm:!` and then `asConsole!` This is what we consider stacking, and the command only runs if the `check:` and `perm:` results to true for BOTH of them.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Reminder: Every line of commands will get executed.

If you make a custom alias command with CMI through `/cmi aliaseditor` for example, and you add multiple commands to the list, please be reminded that each line will get run. So if you have a check at the top, but then later you should not assume that check is still valid. Recheck, or at least match the conditions. Note that per CMI 9.0.4.x you can also use an if conditional at the top, and then check true or false against that - this could help with more complex repeatative conditions.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Simplifying your checks example

You can avoid complex situations by breaking it down to PER line checks. They will either be true or false, and when it's true, the command gets executed. 

```
- check:[playerName]==You! msg! [playerName] This command get executed because your name is "You".
- check:[playerName]!=You! msg! [playerName] This command get executed because your name is enything elxe than "You".
- check:%cmi_user_balance%>1000! msg! [playerName] This command get executed because your Balance is higher than 1000.
- check:%cmi_user_balance%=<1000! msg! [playerName] This command get executed because your Balance is lower than 1001.
```

This is great for creating very specific situations, so one user in one group in a particular world will have a different result than someone else from another group in another world (to just randomly mention something..) 

You can use this to create "chance" or figure out "random" results. Which is great to help you build a mini "crate" addon with just CMI features. Or have dynamic rewards for voting or kits or teleport locations, etc. 

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Resources

More information about CMI: https://www.zrips.net/cmi/
More info about Specliaized Commands: https://www.zrips.net/cmi/commands/specialized/

#### Contributions

Thank you Zrips for all the help with expanding this feature over time, it's helping the features on my server to be super flexible and dynamic! 
And for Cloude_LeCaw, Alax, and others from the Zrips Discord Community with helping explain things and help build this particular FAQ page.
