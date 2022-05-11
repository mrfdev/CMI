# :star: 1MoreBlock.com CMI Add-on

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Daily Reward

This is a `CMI CustomAlias` add-on made by Floris, for CMI 9.1.4.5 or newer, and Minecraft 1.18.2

1MB Daily Rewards are a few files that together add a new `/daily` command to the server, for players to run daily. When run it will check if they've got a reward pending for pickup, or if they've already gone one. In a future version it will be possible to receive a bonus for a streak.

This add-on is mainly an example to show to server owners what they can create using some of the CMI features together. In this case, the CMI custom alias features, CMI kits features, CMI event commands features, and possibly more. 

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Commands

By default, the `/daily` command is available to all players, all other sub-commands are kinda hidden under `/_daily<something>`, and shouldn't be called directly. 

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Permissions

Since the `/daily` command is available to all players, it doesn't require any permission. If you wish, you can type: `/cmi aliaseditor daily`
, and click on `Require Permission`, the permission the groups/users then should have in order to use /daily will be: `cmi.customalias.daily`

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Prerequisites

Okay, **let's get started**. Thank you for being interested in this little add-on.

Make sure your Spigot or Paper jar is up to date and at least 1.18.2, as well as CMI / CMILib are their latest builds. And of course backup everything before making changes. We also assume you've updated your server to not have an existing /daily command. Then read through the installation instructions.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Download Instructions

You will need to append some data to some existing files, and add the below file to your `~/plugins/CMI/CustomAlias/` directory.

- :file_folder: (CMI Add-on) [1MB-Addon-CMI-DailyReward.yml](/Resources/Add-ons/dailyreward/1MB-Addon-CMI-DailyReward.yml)

The other files here, should not replace your existing kits and eventcommands yml files, but it should be added at the bottom of the existing files. 

- :file_folder: (CMI Add-on) [1MB-Addon-CMI-DailyReward-kits.yml](/Resources/Add-ons/dailyreward/1MB-Addon-CMI-DailyReward-kits.yml)
- :file_folder: (CMI Add-on) [1MB-Addon-CMI-DailyReward-eventcommands.yml](/Resources/Add-ons/dailyreward/1MB-Addon-CMI-DailyReward-eventcommands.yml)

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Installation Instructions

- Get the `1MB-Addon-CMI-DailyReward.yml` file, add the CMI file into the `~/plugins/CMI/CustomAlias/` folder, so you get: `~/plugins/CMI/CustomAlias/1MB-Addon-CMI-DailyReward.yml`.

- Open the `1MB-Addon-CMI-DailyReward-kits.yml` file in your favourite YAML editor, such as Notepad++ on Windows, or Sublime Text 4 on macOS, and copy the full content, then open your `~/plugins/CMI/kits.yml` file, and go all the way to the bottom, and on a new line paste what you've copied. Make sure of course you stay YAML compliant.

- Open the `1MB-Addon-CMI-DailyReward-eventcommands.yml` file in your favourite YAML editor, such as Notepad++ on Windows, or Sublime Text 4 on macOS, and copy the full content, then open your `~/plugins/CMI/eventcommands.yml` file, and find the `joinServer:` event, and make sure `Enabled:` says `true`. Then below `Commands:` on a new line paste what you've copied. Make sure of course you stay YAML compliant.

- Ideally, to properly register all these commands I do recommend to `/stop` the server, and start it again. Just a /cmi reload will work, but the commands will show red until you restart.

You can now go into the game and try out the command `/daily`, or join the server as a player.

- Optionally, if you want to change the on join delay, edit eventCommands.yml, 5 is the default.

- And finally, in-game you can type `/cmi kiteditor` to customize the kits, by default each day is a custom cheque giving a 100 bucks (and a plank).

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> How to use this 1MB-Addon .yml file?

You can open it in your favorite editor, make changes accordingly. You can also in-game edit and delete commands, or even add more. 

This video shows you a bit more behind the scenes: https://youtu.be/ldC3LQ0S3DY

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Contributions?

You're more than welcome to offer fixes, contributions, adjustments, suggestions. Feel free to clone and make a pull request. We can discuss and review your contributions and probably merge them into the main branch. 

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> TODO

- Potentially simplify installation

- Add support for bonus streak

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> The reason for this Add-on

My personal interest has always been there to add a simple daily reward feature to some of my servers. And with CMI being a modern server manager plugin that has dynamic and flexible enough features, I thought it would be possible to give this a try. And, on the Zrips Discord, I've seen people ask for daily rewards every once in a while. It would be nice to share what I use with them.

# Misc.

- Last updated on May 11th, 2022 | Version 0.1.0 build 009 (second alpha, working build), by Floris
