# :star: 1MoreBlock.com CMI Add-on

## Social

This is a `CustomAlias.yml` add-on made by Floris, for CMI 8.7.3.0 or newer and Minecraft 1.16.1. 

1MB Social allows a server owner to offer a set of informative commands to their players. These commands focus on the online social platforms like Twitter, Instagram, their website, where they live-stream on Youtube, etc. And using CMI's built-in `/cmi aliaseditor`, these can be customized on the fly (without having to reload the plugin or restart the server).

A social is a way for a player to find out where the official social pages are of the server. They just type /youtube or /snapchat, etc. 

And yes, cooldowns are possible, again, you can customize every social command in-game. 

Final note: By default the permissions are set to false. A quick search/replace on the .yml file before applying it to your server will allow you to mass turn on permissions and disable them all at once. Then just grant the groups access to the commands they should have. Generally a permisson for any of the provided commands will be `cmi.customalias.[social]` So `/youtube` will be `cmi.customalias.youtube`. 

Okay, **let's get started**. Thank you for being interested in this little add-on.

Prequisites. Make sure your Spigot or Paper jar is up to date, as well as CMI. And of course back-up everything before making changes. 

## Download Instructions

Get the .yml file and open it in your favourite YAML editor. Such as Notepad++ on Windows or Sublime Text 3 on macOS. You cannot use regular notepad.

- (Add-on) [social.yml](/Resources/Add-ons/social.yml)

## Installation Instructions

After some intial customizing or perhaps adding any permission requirements, you could delete the emotes you don't wish to use. 

Then select everything you want to use, and copy it to your clipboard. 

Now open CMI's plugins/customAlias.yml file and go all the way to the bottom. On a new line riiiight below the last line, paste your clipboard and you should see them all neatly there. Matching exactly how other commands are listed. Indentation should be perfect.

Save the file, and on your server type: /cmi reload. 

Optional step, you can now start adding the CMI custom alias social permissions to the appropriate groups.

## Overview of Social Commands included

(This list was last updated on July 21st, 2020)
Note: over time as I finalize the socials, I will explain what each social does approx. 

```
- /social
- /website (and /site, /web -> /sites)
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
