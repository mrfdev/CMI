# :star: 1MoreBlock.com CMI Add-on

## EssentialsX to CMI Mapped Commands / Aliasses

This is a `CMI CustomAlias` add-on made by Floris, for CMI 9.1.2.x or newer, and Minecraft 1.18.1

1MB EssentialsX to CMI Commands allows a server owner to offer the set of familiar old EssentialsX commands and their aliasses to their players. These are the ones that aren't already default under `/cmi <command>` or aren't mapped by default in `Alias.yml` yet.

Final note: By default the permissions are set to inherit (minus a few like `/tnt`). Technically if the Main cmi command has a permission granted, then these alias will just act as such. So you don't have to worry about much here. Generally a permission for any of the provided commands will be `cmi.customalias.[command]` So `/tnt` will be `cmi.customalias.tnt`. 

Okay, **let's get started**. Thank you for being interested in this little add-on.

Prerequisites. Make sure your Spigot or Paper jar is up to date and at least 1.18.1, as well as CMI / CMILib. And of course backup everything before making changes. 

## Download Instructions

You only need the CMI add-on for this to work.

- :file_folder: (CMI Add-on) [1MB-1MB-EssentialsX-cmds.yml](/Resources/Add-ons/essentialsx/1MB-EssentialsX-cmds.yml)


## Installation Instructions

Get the .yml file(s) and open it in your favourite YAML editor. Such as Notepad++ on Windows or Sublime Text 4 on macOS. You cannot use regular notepad or Microsoft Word.

After some initial customizing or perhaps adding any permission requirements, you could delete the commands you don't wish to use.

Optional step, you can now start adding the CMI custom alias permissions to the appropriate groups.

Now add the CMI file into `~/plugins/CMI/CustomAlias/` so you get `~/plugins/CMI/CustomAlias/1MB-EssentialsX-cmds.yml` and type `/cmi reload`.

- Ideally to properly register all these commands I do recommend to `/stop` the server. Then put the yml file inside the customAlias folder and then start the server. 

- Don't forget if you already have mapped or made any old EssentialsX commands, to either remove it that location or remove them from this file. 

Optionally you can put the BSP file into `~/plugins/BossShopPro/shops/` so you get `~/plugins/BossShopPro/shops/1MB-social-gui.yml` and then type `/bs reload`.

You can now go into the game and try out the commands.

## Overview of Commands included:

<https://faq.cmi.support/essentialsx-commands>

This website will show you if the EssentialsX command/alias is either in alias.yml or in the custom alias (this addon). If it doesn't mention such a thing, then it's not included yet, as this is a project in progress.

(This list was last updated on February 25th, 2022 | 120 commands/alias)
version 003, by Floris

## How to use the CMI Alias.yml file?

You can map all `/cmi <command>` commands as `/<command>` by editing the `~/plugins/CMI/Alias.yml` file. Full info and instructions can be found here: <https://faq.cmi.support/commands>. And you can find an alternative alias file with every command enabled by default, here: <https://github.com/mrfdev/CMI/blob/master/Resources/Alternatives/Alias_true.yml>

## Contributions?

You're more than welcome to offer fixes, contributions, adjustments, suggestions. Feel free to clone and make a pull request. We can discuss and review your contributions and probably merge them into the main branch. 

## TODO

The focus is on the main commands now for module Essentials, not e-discord, or e-XMPP, etc. But ideally I'd add these in the future at some point.
