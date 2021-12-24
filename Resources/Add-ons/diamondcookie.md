# 1MB Add-on: Diamond Cookie, for CMI

## Version

This is version: `1.1.1 build 004`, for `CMI version 9.1.0.4`, running on: `Minecraft 1.18.1`. 
Last updated on December 24th, 2021.

## Introduction

This is a little exampe add-on that lets a server owner use CMI to add a custom item (in this case food) to the server. Players can craft it, find information about it. And they can consume this item to run a few commands to make it a fun experience. 

This document explains how to install it. How you use it, customize it, improve on it, etc. is up to you.

## Contributions, bugs, questions, suggestions

If you have a concern, problem, question, suggestion or code contribution, please open a new Issue ticket.
https://github.com/mrfdev/CMI/issues/new/choose
Make sure it's clear this is about the diamond cookie add-on of course. 

## Usage

Once installed, a player can open a workbench in-game, add a diamond in the middle, with a cookie on the right. And take out a unique item called a Diamond Cookie. 
They can view the item, which uses hex colors in the title to look all fancy, and read the lore for some basic information. It also informs them there's more to learn through a command: /diamondcookie.
The /diamondcookie command lists some information, and what happens when you eat a diamond cookie.
The diamond cookie can only be eaten when there's hunger, just like regular food. 
Upon consumption it will run a few commands. Such as playing a sound in the world at their location (so others can hear it who are nearby), shows a couple of particle effects (that others can see too). Shows a heart above the head when it heals them (that others can see too), and it then runs the cmi feed and cmi heal command. Along with giving them some random exp.

## Customizing

You can of course have it run any command, this is done through the private `/_diamondcookie` alias. You can edit this with /cmi aliaseditor, then pick it from the list, and customize/add to your liking. 

Note: The `$1`, `$2` etc values are set in the attached command, if you need more add `$7` yourself. 
```
$1 = [playerName] (name of the player) (used in every command in /_diamondcookie)
$2 = %player_world% (the world the player is in) (used for sound)
$3 = %player_x% (players x coordinate) (used for sound)
$4 = %player_y% (players y coordinate) (used for sound)
$5 = %player_z% (players z coordinate) (used for sound)
$6 = %cmi_random_3_20% (the result of a random number between 3 and 20, this is used by the exp command)
```

Explanation: Whatever you add in the attachedcommand, we're using that result to feed our custom private `/_diamondcookie` command. 

## Setup Steps

- Make a dimaond cookie
- Make a custom recipe
- Make a private `/_diamondcookie` command
- Make a public `/diamondcookie` command
- Test, and then test as a player.

## Setup: Make a Diamond Cookie

In-game, give yourself a regular diamond, and type the following commands to give it a unique item title, item lore description, and then use the attach command to set up the item to feed information to our private command we will set-up in a minute.

Hold the item in your hand, and:
```
/cmi itemname {#00d8e6>}Diamond{#00aee6<} {#e67c00>}Cookie{#e6a500<}
/cmi itemlore 1 {#tarawera}--------------------------
/cmi itemlore 4 {#tarawera}--------------------------
/cmi itemlore 6 {#tarawera}--------------------------
/cmi itemlore 2 {#00aee6}Nothing beats a Diamond Cookie
/cmi itemlore 3 {#00aee6}when you're hungry *nomnom*
/cmi itemlore 5 {#bluelagoon}More info: /diamondcookie
/attachcommand !consume!;;!cc!_diamondcookie [playerName] %player_world% %player_x% %player_y% %player_z% %cmi_random_3_20%
```

Now that we have a diamond cookie item, we can't use it just yet. So don't bother testing. We can test things when we're done. 

## Setup: Make a Custom Recipe for the Diamond Cookie
Give yourself a regular cookie and a regular diamond, then type:
`/cmi customrecipe`

From the menu, select `Make New Shaped Recipe`, and in the middle of what represents the crafting table, add the regular diamond, on the right of the diamond add the cookie. And in the output slot on the right of that, add the custom diamond cookie. Then click on the bottom left `Save`. And we're done with this step. 

If you were to go back into /cmi customrecipe, the gui should have the diamond cookie listed. But let's continue to the next step.

## Setup: Add the Private and Public Commands

In the Minecraft Server's `~/plugins/CMI` directory is a file called `CustomAlias.yml`, open this file up with for example Sublime Text 3 on macOS or NotePad++ on Windows.

At the very bottom add this code:
```
  _diamondcookie:
    Cmds:
    - asConsole! cmi sound entity_experience_orb_pickup -p:1 -v:0.8 $1 $2 $3 $4 $5
      -s
    - asConsole! cmi panimation preset:TpDown;target:$1
    - asConsole! cmi exp $1 add $6
    - asConsole! cmi feed $1 -s
    - asConsole! cmi heal $1 100% -s
    - asConsole! cmi panimation preset:GColumn;target:$1
    - asConsole! cmi sound block_beehive_exit -p:0.8 -v:0.8 $1 $2 $3 $4 $5 -s
    - asConsole! cmi effect $1 regeneration 13 2 -s -visual
    - asConsole! cmi actionbarmsg $1 {#00d8e6}D{#00d0e6}i{#00cae6}a{#00c3e6}m{#00bce6}o{#00b5e6}n{#00aee6}d
      {#e67c00}C{#e68200}o{#e68900}o{#e69000}k{#e69700}i{#e69e00}e{#e6a500}s {#680099}are
      delicious!
    Perm: true
  diamondcookie:
    Cmds:
    - 'asConsole! cmi msg [playerName] !{#00d8e6}D{#00d0e6}i{#00cae6}a{#00c3e6}m{#00bce6}o{#00b5e6}n{#00aee6}d
      {#e67c00}C{#e68400}o{#e68c00}o{#e69400}k{#e69c00}i{#e6a500}e {#680099}Information:'
    - asConsole! cmi msg [playerName] !{#00d8e6}When you're hungry, you can consume
      a diamond cookie, it will restore your hearts and hunger bar. Feeding you NOMNOM.
    - asConsole! cmi msg [playerName] !{#00d8e6}It will also give you about 13 seconds
      of Regeneration II effect. And a bit of random exp!
    - asConsole! cmi msg [playerName] !{#00d8e6}Players nearby you will notice you're
      eating this awesome food, because you make a sound, and they can see some cool
      particles around you. Pretty nifty!
    - 'asConsole! cmi msg [playerName] !{#e67c00}To craft a diamond cookie: /craft,
      and in the middle put a diamond, with a cookie on the right. So simple. BUT
      SO DELICIOUS!'
```
Now save the file, if your server is running you could leave it running, the commands should work in a second after typing: `/cmi reload`. But ideally to properly register these commands I do recommend to /stop first, add this, and start the server up again. 

Note please that the `/_makediamond` isn't a command you should run, hence why it requires a permission. Eating the diamond cookie will trigger it. So just leave it alone. 

Players can run the `/diamondcookie` command, that one is public. It isn't limited by a permission. 

## Setup: Testing

This is simple. Give yourself another regular cookie and a regular diamond, and either use /cmi craft, or place a workbench down and right click it. Craft yourself a diamond cookie by putting the diamond in the middle, the cookie on the right. The diamond cookie will show up - take it. 

You can now eat it. If your hunger bar is full, you shouldn't be able to. You could /cmi hunger 5, on yourself. And then eat it. Your should notice the effects, hear the sounds, and see your hearts and hunger get restored. 

Then test this as a player, and keep an eye on the console, just in case there's some error, or permission issue. If so: fix it, or report back to us (see above how to make a new issue).

## Demo

Live-testing? Connect with 1.16.4 to our java edition live server, get yourself a cookie and a diamond by playing survival, craft it, eat it! MMmm enjoy it! Diamonds Cookies are the best.

Or watch my YouTube video: https://youtu.be/iI7UR3NtJcg

## Disclaimer

Yes, this isn't an easy copy paste, this is a long winded step by step example on how to add something unique without having to write a plugin. You can expand on this by making a /food command that runs a ctext file with a book with hoverable clickable events, explaining all the types of food, and load up /cmi recipe on these items, and i dunno what. How you utalize this is up to you. I just want to show you can do more with CMI's attached command, to make fun gameplay things for your players. 
