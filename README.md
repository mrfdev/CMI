# :star: Welcome to 1MB CMI!

This repository has a few purposes. 

 - Outdated backup to fall back on.
 - Share configurations with our 1MB team members (and you)
 - Show others examples of how I run CMI sometimes.
 - Share a select few 1MB CMI add-ons with the public.

Note: I think it's fair to point out a few things

- No, this does not come with the [CMI jar](https://www.spigotmc.org/resources/3742/), you still have you buy that yourself.
- No, this is not a complete copy of our live servers, these are select files.
- No, these are not default files, they're (recently) outdated copies.
- Yes, you can [open a New Issue](https://github.com/The456gamerDev/CMI/issues) to request an update on a specific file.
- And no, this is not the repository to ask for CMI customer support.

Oh yeah, and always make a ***backup*** of your data before making any changes.


## :file_folder: Files

The most common reason you're perhaps here are some of these add-ons or files

- The 1MoreBlock.com CMI Add-on called "[emotes](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/1MB-ADDON-emotes.yml)" 
- The 1MoreBlock.com CMI Add-on called "[finduser](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/1MB-ADDON-finduser.sh)" 
- The 1MoreBlock.com CMI Add-on called "[placeholders](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/CustomText/placeholders.txt)" 
- The 1MoreBlock.com CMI Custom Alias "[commands](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/CustomAlias.yml)" 
- The 1MoreBlock.com CMI Materials and Item "[worth](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/worth.yml)" 

Quick links to other common CMI files are these

- [Alias.yml](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/Alias.yml) (live, [all false](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/Alias_false.yml), [all true](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/Alias_true.yml))
- [config.yml](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/config.yml) (live)
- [CustomAlias.yml](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/CustomAlias.yml) (live)
- [eventCommands.yml](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/eventCommands.yml) (live)
- [Modules.yml](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/Modules.yml) (live, [all false](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/Modules_false.yml), [all true](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/Modules_true.yml))
- [ranks.yml](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/ranks.yml) (live)
- [schedules.yml](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/schedules.yml) (live)
- [tabList.yml](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/tabList.yml) (live)
- [worth.yml](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/worth.yml) (live, does not have 1.16.1 items yet, probably unbalanced)

And if you came here to find examples of the 1MB CMI CustomText/ files

- [rules.txt](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/CustomText/rules.txt) (handy for /rules)
- [welcomeMessage.txt](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/CustomText/welcomeMessage.txt) (handy for /motd (and onJoin msg)) 
- [placeholders.txt](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/CustomText/placeholders.txt) (1MB CMI add-on for 1MB team command)
- [donate.txt](https://github.com/The456gamerDev/CMI/blob/master/live-1mb-2.8.1-mc-1.16.1/plugins/CMI/CustomText/donate.txt) (handy for /donate)

## :thumbsup: How to use any of this?

As things get created in this github repository, I am sure we will make an attempt at some Wiki pages with extended information. Please check those first before you blindly take a file and assume everything will be fine.

Oh, and of course backup your data before you make any changes to anything.

Basically, these are the easiest steps to use any of these files.

- Backup your existing data, clone your live-server, and change the port of it. Then remove certain things like Discord or Voting plugins. Then in CMI's config.yml set the Maintenance to true, and in the server.properties file turn on whitelist. 
- Get the file you want, and go through it for the reasons you believe you need it. Either specifically copy/paste something from it to your existing file. Or just completely replace it. This really 100% depends on the file in question and why you want to use any of the files we offer on this repository. 
- Start your cloned server, and test. Does all the old stuff still work as expected, are the changes you've made working?
- If everything is fine (otherwise fix it), then make those changes to your live server.
- There may be extra instructions	

**TLDR;** Get the file you want, use it (partially), test it all first.

## :four_leaf_clover: What version?

1MB CMI Project version **0.0.1**, for live-1mb-2.8.1-mc-1.16.1

Today it is July 20th, 2020. And the `1MoreBlock.com:25565` Minecraft Survival server is marked: `live-1mb-2.8.1-mc-1.16.1`
```
-live- (live server)
-1MB- (1moreblock linked to network hub called 1mb)
-2.8.1- (1MB version 2.8.1, network version)
-mc- (Minecraft, but it is Spigot jar at the moment)
-1.16.1- (Minecraft version 1.16.1)
```
**TLDR;** These files are for 1.16.x and probably any CMI version that works with 1.16.x

## :information_source: Support

To clarify, you can not use this repository to ask for CMI customer support.

You can [open a New Issue](https://github.com/The456gamerDev/CMI/issues), if

- You have a question about 1MB CMI Add-on files
- You have a question about some specific 1MB Customization in a CMI-file.
- Request to get an update on a specific file on this repository.
- Request for 'where do I look to get started to fix this'
- Report an issue with any of the files on this repository.
- Make a suggestion or contribution to any of the files on this repository.

For Discord I've created a couple of **CMI FAQ** entries that are pinned to the CMI #help channel. You can find them here as well. And you're free to point out outdated instructions, incorrect information, or contribute with improvement or missed steps/commands/permissions.

- CMI Economy
- CMI Chat (Chatrooms) (Bungee-chat)
- CMI Commands
- CMI Custom Text (/help, /motd, /rules)
- CMI Votes
- CMI Hex Colors

*CMI Customer Support on this repository will honestly be ignored (ticket closed), nothing personal. Please use the below link instead*

- View CMI Customer Support tickets: [https://github.com/Zrips/CMI/issues](https://github.com/Zrips/CMI/issues)

## :tv: My CMI Youtube Playlist

Just throwing this in here, but I've made some [1MB CMI Youtube videos](https://www.youtube.com/playlist?list=PLAgWLDdkOWlq8pnYuzIVAl2doNg1vmDD_) as well. They're probably not of any quality, and they're probably outdated, but, I made an effort and people ask me for the link every once in a while.

## :crown: Contributions and bragging rights

I want to say thank you to the following people, myself ([@mrfloris](https://github.com/mrfloris)), because I am selfi.. no just kidding. I want to say thank you to Mikey ([@Madmikeyb](https://github.com/Madmikeyb)), Nix, Fumblehead, [@Zrips](https://github.com/Zrips), [@md_5](https://github.com/md-5/) and [@the456gamer](https://github.com/the456gamer).

## :grey_exclamation: License

Whatever I (Floris) make, I consider 'my work', I highly appreciate it if you at least value that; do not blatantly copy and distribute it. Rather, contribute to the project and get your own name credited where appropriate. You're free to use my work on your own (networked) servers. You do not have to buy a license, pay a fee, or something like that. 

You are not free to distribute my work, please link others instead to the source here.

CMI is a premium plugin, made by Zrips. In order to use CMI files, you must have a valid and active license. You can buy it from [SpigotMC.org](https://www.spigotmc.org/resources/3742/). 

_Disclaimer; I am a moderator on their Discord, it's an unpaid position_

## :punch: Support this project

This is not my work, there's no salary. This is a hobby, and a hobby costs money. If you wish to say thank you for your support, thank you for sharing what you've learned with others: Please consider a free donation through contributing to this project. Or perhaps through a personal-gift of a beer or pizza slice with [a PayPal donation](https://www.paypal.me/mrfloris). 