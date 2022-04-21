# :star: 1MoreBlock.com CMI Add-on

## CMI Global Commands

This is a `CMI CustomAlias` add-on made by Floris, for CMI 9.1.4.x or newer, and Minecraft 1.18.2

1MB Global Commands are a helper for the server owner or their team members to easily add the ability to run certain commands on all players that currently do not support this. 

## Commands

This is meant for team members, not for players, there is a required permission to see (see below).

```
/gcmd
This is the main command, below it we will have a preset of per-player commands for easy server management. Typing just /gcmd will result in a bit of introduction info and displays the syntax on how to use this custom command.

/gcmd help
This will display all the (current) added commands you can pick from, it will try to briefly explain what will happen when you use it. 

/gcmd <command> (param)
Follow the tab suggestions to pick a command from the preset of commands, and some commands have additional params.
```

```
/gcmd tfly <timeInSeconds>
Give all players temp fly for x seconds

/gcmd tgod <timeInSeconds>
Give all players temp immortality (god mode) for x seconds

/gcmd launch
Fling all the players into the air at an angle (there shouldn't be damage on landing)

/gcmd mobs <type> 
Type can be blaze, creeper, or zombie. Of course you can add your own.
This will load 3 of them in a range around the player, and tries to target that player.

/gcmd msg <yourmsg>
This will send a /cmi msg to all players in a fixed format. Kinda useless, if it is a msg to all, you might as well use /cmi broadcast of course, but for demo purposes I've included it.
```

## Permission

Commands selected will run from asConsole!, but you can ofcourse customize anything you want in the addon. 

Required permission node for the person who is allowed to use /gcmd
```
cmi.customalias.gcmd
```
Example for luckperms: `/lp user bobby permission set cmi.customalias.gcmd true`

Okay, **let's get started**. Thank you for being interested in this little add-on.

Prerequisites. Make sure your Spigot or Paper jar is up to date and at least 1.18.2, as well as CMI / CMILib. And of course backup everything before making changes. And that you've given players the appropriate permission nodes.

## Download Instructions

You only need the CMI add-on for this to work.

- :file_folder: (CMI Add-on) [1MB-gcmd.yml](/Resources/Add-ons/globalcommand/1MB-gcmd.yml)


## Installation Instructions

- Get the `.yml` file and open it in your favorite YAML editor. Such as Notepad++ on Windows or Sublime Text 4 on macOS. You cannot use a regular notepad or Microsoft Word.

- After some initial customizing or perhaps adding any command you want to include, you could delete the commands you don't wish to use. And/or add more to your liking.

- You can now start adding the permission to the appropriate group(s) or user(s).

- Next, add the CMI file into the `~/plugins/CMI/CustomAlias/` folder, so you get: `~/plugins/CMI/CustomAlias/1MB-gcmd.yml` and type `/CMI reload`.

- Ideally, to properly register all these commands I do recommend to `/stop` the server, and start it again. Just a /cmi reload will work, but the commands will show red until you restart. And tab-suggestions probably won't work until you restart either. So, /stop and start again is my suggestion!

You can now go into the game and try out the commands on your players.

## How to use this 1MB-Addon .yml file?

You can open it in your favorite editor, make changes accordingly. You can also in-game edit and delete commands, or even add more. 

This video shows you a bit more behind the scenes: https://youtu.be/acZS_Ci88uo

## Contributions?

You're more than welcome to offer fixes, contributions, adjustments, suggestions. Feel free to clone and make a pull request. We can discuss and review your contributions and probably merge them into the main branch. 

## TODO

n/a

## The reason for this Add-on

On the Zrips Discord Community server I see the question in the CMI #help channel every once in a while. I thought, instead of having a dozen little .yml add-ons to demo how to do it for that command, why not build a collectino under a common /gcmd instead in just one add-on. Here it is. 

# Misc.

- Last updated on April 21st, 2022 | Version 1.0.0 build 002 (first public beta), by Floris