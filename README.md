# :star: Welcome to 1MB CMI!

This repository has a few purposes. 

 - Outdated backup to fall back on.
 - Share configurations with our 1MB team members (and you)
 - Show others examples of how I run CMI sometimes.
 - Share a select few 1MB CMI add-ons with the public.
 - Organize the FAQ entries we link CMI customers to on Zrips' Discord.

## Table of Contents

   * [<g-emoji class="g-emoji" alias="star" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2b50.png">⭐</g-emoji> Welcome to 1MB CMI!](#star-welcome-to-1mb-cmi)
      * [<g-emoji class="g-emoji" alias="file_folder" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f4c1.png">📁</g-emoji> Files](#file_folder-files)
      * [<g-emoji class="g-emoji" alias=" 1" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f44d.png">👍</g-emoji> How to use any of this?](#thumbsup-how-to-use-any-of-this)
      * [<g-emoji class="g-emoji" alias="four_leaf_clover" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f340.png">🍀</g-emoji> What version?](#four_leaf_clover-what-version)
      * [<g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Support](#information_source-support)
      * [<g-emoji class="g-emoji" alias="tv" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f4fa.png">📺</g-emoji> My CMI Youtube Playlist](#tv-my-cmi-youtube-playlist)
      * [<g-emoji class="g-emoji" alias="crown" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f451.png">👑</g-emoji> Contributions and bragging rights](#crown-contributions-and-bragging-rights)
      * [<g-emoji class="g-emoji" alias="grey_exclamation" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2755.png">❕</g-emoji> License](#grey_exclamation-license)
      * [<g-emoji class="g-emoji" alias="fist_oncoming" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f44a.png">👊</g-emoji> Support this project](#punch-support-this-project)


Note: I think it's fair to point out a few things

- No, this does not come with the [CMI jar](https://www.spigotmc.org/resources/3742/), you still have you buy that yourself.
- No, this is not a complete copy of our live servers, these are select files.
- No, these are not default files, they're (fairly) outdated copies.
- Yes, you can [open a New Issue](https://github.com/mrfdev/CMI/issues) to request an update on a specific file.
- And no, this is not the repository to ask for CMI customer support.

Oh yeah, and always make a ***backup*** of your data before making any changes.


## :file_folder: Files

The most common reason you're perhaps here are some of these 1MoreBlock.com Add-on files:

- (Add-on) [diamondcookie.md](/Resources/Add-ons/diamondcookie.md)
- (Add-on) [emotes.yml](/Resources/Add-ons/emotes.yml)
- (Add-on) [social](/Resources/Add-ons/social/)
- (Add-on) [finduser.sh](/Resources/Scripts/finduser.sh) 
- (Add-on) [placeholders.txt](/Resources/Add-ons/placeholders.txt)
- (Add-on) [discord-helper.yml](/Resources/Add-ons/discord-helper.yml)
- (Custom) [CustomAlias/](/live-1mb-3.0.2-mc-1.18.1/plugins/CMI/CustomAlias) 
- (Custom) [worth.yml](/live-1mb-3.0.2-mc-1.18.1/plugins/CMI/worth.yml)

Or maybe for one of the common CMI files that I've customized for my server:

- [Alias.yml](/live-1mb-3.0.2-mc-1.18.1/plugins/CMI/Alias.yml) (live, [all false](/Resources/Alternatives/Alias_false.yml), [all true](/Resources/Alternatives/Alias_true.yml))
- [config.yml](/live-1mb-3.0.2-mc-1.18.1/plugins/CMI/config.yml) (live)
- [eventCommands.yml](/live-1mb-3.0.2-mc-1.18.1/plugins/CMI/eventCommands.yml) (live)
- [Modules.yml](/live-1mb-3.0.2-mc-1.18.1/plugins/CMI/Modules.yml) (live, [all false](/Resources/Alternatives/Modules_false.yml), [all true](/Resources/Alternatives/Modules_true.yml))
- [ranks.yml](/live-1mb-3.0.2-mc-1.18.1/plugins/CMI/ranks.yml) (live)
- [schedules.yml](/live-1mb-3.0.2-mc-1.18.1/plugins/CMI/schedules.yml) (live)
- [tabList.yml](/live-1mb-3.0.2-mc-1.18.1/plugins/CMI/tabList.yml) (live)

And if you came here to find examples of the 1MB CMI CustomText/ files

- [rules.txt](/live-1mb-3.0.2-mc-1.18.1/plugins/CMI/CustomText/rules.txt) (handy for /rules)
- [welcomeMessage.txt](/live-1mb-3.0.2-mc-1.18.1/plugins/CMI/CustomText/welcomeMessage.txt) (handy for /motd (and onJoin msg)) 
- [placeholders.txt](/Resources/Add-ons/placeholders.txt) (1MB CMI add-on for 1MB team command)
- [donate.txt](/live-1mb-3.0.2-mc-1.18.1/plugins/CMI/CustomText/donate.txt) (handy for /donate)

(See further down the page for the Discord FAQ messages)

## :thumbsup: How to use any of this?

As things get created in this github repository, I am sure we will make an attempt at some Wiki pages with extended information. Please check those first before you blindly take a file and assume everything will be fine.

Oh, and of course backup your data before you make any changes to anything.

Basically, these are the easiest steps to use any of these files.

- Backup your existing data, clone your live-server, and change the port of it. Then remove certain things like Discord or Voting plugins. Then in CMI's config.yml set the Maintenance to true, and in the server.properties file turn on whitelist. 
- Get the file you want, and go through it for the reasons you believe you need it. Either specifically copy/paste something from it to your existing file. Or just completely replace it.  
- Start your cloned server, and test. Does all the old stuff still work as expected, are the changes you've made working?
- If everything is fine (otherwise fix it), then make those changes to your live server.
- If everything is fine, turn off maintenance and invite your testers/players.
- There may be extra instructions, depending on which file you're trying to use.

**TLDR;** Get the file you want, use it (partially), test it all first. 

## :information_source: Support

Before asking for support, please read the documentation/wiki properly. 

- (Add-on) [emotes documentation](https://github.com/mrfdev/CMI/wiki/emotes)
- (Add-on) [social documentation](/Resources/Add-ons/social)
- (Add-on) [finduser documentation](https://github.com/mrfdev/CMI/wiki/finduser) 
- (Add-on) [placeholders documentation](https://github.com/mrfdev/CMI/wiki/placeholders)

You can [open a New Issue](https://github.com/mrfdev/CMI/issues), if

- You have a question about 1MB CMI Add-on files
- You have a question about some specific 1MB Customization in a CMI-file.
- Request to get an update on a specific file on this repository.
- Request for 'where do I look to get started to fix this'
- Report an issue with any of the files on this repository.
- Make a suggestion or contribution to any of the files on this repository.

For Discord I've created a couple of **CMI FAQ** entries that are pinned to the CMI #help channel. You can find them here as well. And you're free to point out outdated instructions, incorrect information, or contribute with improvement or missed steps/commands/permissions.

- [CMI Getting Started](/Resources/FAQ/cmi-gettingstarted.md)
- [CMI Running 1.18.1](/Resources/FAQ//cmi-running-1.18.1.md)
- [CMI Economy](/Resources/FAQ/cmi-economy.md)
- [CMI Chat](/Resources/FAQ/cmi-chat.md) ([Chatrooms](/Resources/FAQ/cmi-chatrooms.md)) ([Bungee-chat](/Resources/FAQ/cmi-bungee.md)) ([Chat Format](/Resources/FAQ/cmi-chat-format.md)) ([Chat Filter](/Resources/FAQ/cmi-chatfilter.md))
- [CMI LuckPerms Prefix](/Resources/FAQ/cmi-luckperms-prefix.md)
- [CMI Commands](/Resources/FAQ/cmi-commands.md) ([Extending Commands](/Resources/FAQ/cmi-extending-commands.md))
- CMI Custom Text ([/help](/Resources/FAQ/cmi-help.md), [/motd](/Resources/FAQ/cmi-motd.md), [/rules](/Resources/FAQ/cmi-rules.md))
- [CMI Votes](/Resources/FAQ/cmi-votes.md)
- [CMI Hex Colors](/Resources/FAQ/cmi-hexcolors.md)
- [CMI Import](/Resources/FAQ/cmi-import.md)
- [CMI Migrate Database](/Resources/FAQ/cmi-migrate-database.md)
- [CMI Chance](/Resources/FAQ/cmi-chance.md)
- [CMI Paramters](/Resources/FAQ/cmi-parameters.md)
- [CMI Toggle Examples](/Resources/FAQ/cmi-toggle-examples.md)
- [CMI Ranks](/Resources/FAQ/cmi-ranks.md)
- [CMI Custom Join / Leave](/Resources/FAQ/cmi-custom-joinleave.md)
- [CMI Trash Feature](/Resources/FAQ/cmi-trash.md)
- [CMI Safety Tips](/Resources/FAQ/cmi-safety-tips.md)
- [CMI Mode Stuck on Join](/Resources/FAQ/cmi-mode-stuck-on-join.md)
- [CMI Library (CMILIB)](/Resources/FAQ/cmi-library.md)
- [And more!](/Resources/FAQ/)

*To clarify, you can not use this repository to ask for CMI customer support. CMI Customer Support on this repository will honestly be ignored (ticket closed), nothing personal. Please use the below link instead*

- View CMI Customer Support tickets: [https://github.com/Zrips/CMI/issues](https://github.com/Zrips/CMI/issues)

## :tv: My CMI Youtube Playlist

Just throwing this in here, but I've made some [1MB CMI Youtube videos](https://www.youtube.com/playlist?list=PLAgWLDdkOWlq8pnYuzIVAl2doNg1vmDD_) as well. They're probably not of any quality, and they're probably outdated, but, I made an effort and people ask me for the link every once in a while.

## :crown: Contributions and bragging rights

I want to say thank you to the following people, myself ([@mrfloris](https://github.com/mrfloris)), because I am selfi.. no just kidding. I want to say thank you to [@Madmikeyb](https://github.com/Madmikeyb), Nix, Fumblehead, [@Zrips](https://github.com/Zrips), [@md_5](https://github.com/md-5/) and [@the456gamer](https://github.com/the456gamer).

## :grey_exclamation: License

Whatever I (Floris) make, I consider 'my work', I highly appreciate it if you at least value that; do not blatantly copy and distribute it. Rather, contribute to the project and get your own name credited where appropriate. You're free to use my work on your own (networked) servers. You do not have to buy a license, pay a fee, or something like that. 

You are not free to distribute my work, please link others instead to the source here.

CMI is a premium plugin, made by Zrips. In order to use CMI files, you must have a valid and active license. You can buy it from [SpigotMC.org](https://www.spigotmc.org/resources/3742/). 

_Disclaimer; I am an admin on the zrips Discord_

Oh yeah, and Floris, OMGboards.com nor 1MoreBlock.com claim or pretend to be-, nor are associated with-, and are not supported by Zrips, Mojang or Microsoft.

## :punch: Support this project

This is not my work, there's no salary. This is a hobby, and a hobby costs money. If you wish to say thank you for your support, thank you for sharing what you've learned with others: Please consider a free donation through contributing to this project. Or perhaps through a personal-gift of a beer or pizza slice with [a PayPal donation](https://www.paypal.me/mrfloris). 

## :four_leaf_clover: What version?

1MB CMI Project version **0.2.20** (February 18th, 2022), for live-1mb-3.0.2-mc-1.18.1

The `1MoreBlock.com:25565` Minecraft Survival server is marked: `live-1mb-3.0.2-mc-1.18.1`
```
-live- (live server)
-1MB- (1moreblock linked to network hub called 1MB)
-3.0.2- (1MB version 3.0.2, history version)
-mc- (Minecraft, but it is Paper jar at the moment)
-1.18.1- (Minecraft version 1.18.1)
```
**TLDR;** These files are for 1.18.x and probably any CMI version 9.1.x that works with 1.18.1.
