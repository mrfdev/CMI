# :star: 1MoreBlock.com CMI Add-on

## EssentialsX to CMI Mapped Commands / Aliasses

This is a `CMI CustomAlias` add-on made by Floris, for CMI 9.2.x.x or newer, and Minecraft 1.19

1MB EssentialsX to CMI Commands allows a server owner to offer the set of familiar old EssentialsX commands and their aliases to their players. These are the ones that do not already default under `/CMI <command>` or aren't mapped by default in `Alias.yml` yet.

Final note: By default, the permissions are set to inherit (minus a few like `/tnt`). Technically if the Main CMI command has permission granted, then this alias will just act as such. So you don't have to worry about much here. Generally a permission for any of the provided commands will be `cmi.customalias.[command]` So `/tnt` will be `cmi.customalias.tnt`. 

Okay, **let's get started**. Thank you for being interested in this little add-on.

Prerequisites. Make sure your Spigot or Paper jar is up to date and at least 1.18.1, as well as CMI / CMILib. And of course backup everything before making changes. 

## Download Instructions

You only need the CMI add-on for this to work.

- :file_folder: (CMI Add-on) [1MB-1MB-EssentialsX-cmds.yml](/Resources/Add-ons/essentialsx/1MB-EssentialsX-cmds.yml)


## Installation Instructions

Get the .yml file(s) and open it in your favorite YAML editor. Such as Notepad++ on Windows or Sublime Text 4 on macOS. You cannot use a regular notepad or Microsoft Word.

After some initial customizing or perhaps adding any permission requirements, you could delete the commands you don't wish to use.

Optional step, you can now start adding the CMI custom alias permissions to the appropriate groups.

Now add the CMI file into `~/plugins/CMI/CustomAlias/` so you get `~/plugins/CMI/CustomAlias/1MB-EssentialsX-cmds.yml` and type `/CMI reload`.

- Ideally, to properly register all these commands I do recommend to `/stop` the server. Then put the yml file inside the customAlias folder and then start the server. 

- Don't forget if you already have mapped or made any old EssentialsX commands, to either remove that location or remove them from this file. 

You can now go into the game and try out the commands.

## How to use this 1MB-Addon .yml file?

You can open it in your favorite editor, make changes accordingly. You can also in-game edit and delete commands, or even add more. 

This video shows you a bit more behind the scenes: <https://youtu.be/oWKW-CZTqB8>

## How to use the CMI Alias.yml file?

You can map all `/CMI <command>` commands as `/<command>` by editing the `~/plugins/CMI/Alias.yml` file. Full info and instructions can be found here: <https://faq.CMI.support/commands>. And you can find an alternative alias file with every command enabled by default, here: <https://github.com/mrfdev/CMI/blob/master/Resources/Alternatives/Alias_true.yml>

## Contributions?

You're more than welcome to offer fixes, contributions, adjustments, suggestions. Feel free to clone and make a pull request. We can discuss and review your contributions and probably merge them into the main branch. 

Other contributions by @MrCrazys 

## TODO

The focus is on the main commands now for module Essentials, not e-discord, or e-XMPP, etc. But ideally, I'd add these in the future at some point.

## Overview of Commands included:

<https://faq.CMI.support/essentialsx-commands>

This website will show you if the EssentialsX command/alias is either in alias.yml or in the custom alias (this addon).

Note that at the moment module-addons aren't added (yet).

- This list was last updated on May 18th, 2022
- 475 EssentialsX commands and their aliases | version 1.0.1 build 017, by Floris + (contributions)
