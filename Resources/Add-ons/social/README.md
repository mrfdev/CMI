# :star: 1MoreBlock.com CMI Add-on

## Social

This is a `CMI CustomAlias` add-on made by Floris, for CMI 9.0.4.1 or newer, and Minecraft 1.17.1

1MB Social allows a server owner to offer a set of informative commands to their players. These commands focus on the online social platforms like Twitter, Instagram, their website, where they live-stream on Youtube, etc. And using CMI's built-in `/cmi aliaseditor`, these can be customized on the fly (without having to reload the plugin or restart the server).

And `/social` (`/social gui` if you have BSP as well) is a way for a player to find out where the official social pages are of the server. They can also type `/youtube` or `/snapchat`, etc.

And yes, cooldowns are possible, again, you can customize every social command in-game. 

Final note: By default the permissions are set to false. A quick search/replace on the .yml file before applying it to your server will allow you to mass turn on permissions and disable them all at once. Then just grant the groups access to the commands they should have. Generally a permission for any of the provided commands will be `cmi.customalias.[social]` So `/youtube` will be `cmi.customalias.youtube`. 

Okay, **let's get started**. Thank you for being interested in this little add-on.

Prerequisites. Make sure your Spigot or Paper jar is up to date, as well as CMI / CMILib. And of course backup everything before making changes. 

## Download Instructions

You only need the CMI add-on for this to work, but if you want a fancy gui, I've included the BossShopPro shop gui as well.

- :file_folder: (CMI Add-on) [1MB-social.yml](/Resources/Add-ons/social/1MB-social.yml)
- :file_folder: (BSP Add-on) [1MB-social-gui.yml](/Resources/Add-ons/social/1MB-social-gui.yml)

## Installation Instructions

Get the .yml file(s) and open it in your favourite YAML editor. Such as Notepad++ on Windows or Sublime Text 3 on macOS. You cannot use regular notepad or Microsoft Word.

After some initial customizing or perhaps adding any permission requirements, you could delete the emotes you don't wish to use.

Optional step, you can now start adding the CMI custom alias social permissions to the appropriate groups.

Now add the CMI file into `~/plugins/CMI/CustomAlias/` so you get `~/plugins/CMI/CustomAlias/1MB-social.yml` and type `/cmi reload`.

Optionally you can put the BSP file into `~/plugins/BossShopPro/shops/` so you get `~/plugins/BossShopPro/shops/1MB-social-gui.yml` and then type `/bs reload`.

You can now go into the game and try out the commands.

## Overview of Social Commands included

(This list was last updated on September 18th, 2021 ~ note please that not all commands are in the yml file yet. Working on it.)

```
- /social
- /social gui
- /website (and /site, /sites, /web -> /sites)
- /forum (and /forums -> /forum)
- /discord
- /twitter
- /reddit
- /contact (and /email -> /contact)
- /facebook (and /fb -> /facebook)
- /instagram (and /insta, /ig -> /instagram)
- /snapchat (and /snap -> /snapchat)
- /youtube (and /yt -> /youtube)
- /teamspeak (and /ts -> /teamspeak)
- /skype
- /irc (and /chat -> discord?irc)
- /store (and /shop, /shops, /buy -> /store)
- /tiktok
- /twitch
- /github
- /live (and /livestream, /streaming -> /live)
- /requestsocial (mail for player, to request their own social command)
- /bcsocial (announcer that shouts to ppl "we went live" " we . are streaming on /twitch" , etc.
```

Note: Obviously to have 'something' at least, the information in there links to my details. That's useless on your server, so don't just copy/paste, please read through the file and customize it to your data before using. 
