# :star: 1MoreBlock.com CMI Add-on

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> DiscordSRV `alerts.yml` collection

This is a `DiscordSRV alerts.yml` collection made by @mrfloris, for CMI 9.7.x.x / CMILib 1.5.x.x / DisocrdSRV 1.29.x, and Minecraft 1.21.x ~ or newer

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Purpose

It's so nice to have certain server events from Minecraft to show up on the Discord server. The plugin does a lot, but through the `alerts.yml` file we can listen for events and do even more. Some existing examples for other plugins are pretty straightforward, but with `/cmi` having their commands done slightly differently, I've noticed that quite a few people kept asking 'How can I?'. This `alerts.yml` is my collection (with awesome contributions!). I want to learn more about it, I want to collect more alerts, and I want to share what I have so others can learn too. This is that file. I hope it helps.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Prerequisites

Okay, **let's get started**. Thank you for being interested in this little add-on.

- You need the (premium) CMI plugin for most of these alerts. The focus here is CMI version 9.7.x.x and CMILib 1.5.x.x. (or newer)

- You need the [DiscordSRV](https://github.com/DiscordSRV/DiscordSRV) plugin, `alerts.yml` is part of DiscordSRV. The focus here is DisordSRV version 1.29.x. (or newer)

- Please note that the 'chunks' of alerts in the `alerts.yml` file have empty lines in between them. Blatantly copy/pasting can yield unexpected results. I suggest to take what you actually need, and append it to your existing file.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Download Instructions

- You need the `alerts.yml` file as listed above, you can download it as is, or open it `[raw]` and copy/paste the content as you see fit.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Installation Instructions

- Backup your existing `alerts.yml` file, we will possibly need this later.

- Get the `alerts.yml` and put it in `~/plugins/DiscordSRV/` and do not run the `discordsrv reload` command just yet.

- Customize the globally set channels from your DisordSRV's `config.yml`, to match the alerts as you would prefer it. Optionally add new ones for stuff like `#spydog` or `#watchdog`, or right-click specific channels in your Discord Community server and get the unique id for the channel names. 

- Optionally remove any alerts you do not want.

- Optionally re-add any custom alerts you already had, and want to continue using. 

- You can now run the `discordsrv reload` command and test it all out.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Contributions?

You're more than welcome to offer fixes, contributions, adjustments, and suggestions. Feel free to clone and make a pull request. We can discuss and review your contributions and probably merge them into the main branch.

- Contributions by the DiscordSRV #alerts community members who've shown me their examples from which I've figured out quite a bit.
- Contributions by `@Zrips#9691` who's been showing me where to find what in the CMI API and CMI Source code, thank you for your awesome plugins.
- Contributions by `@The456gamer#3999` who's on my 1MB team and has helped bug-fix my alerts, thank you!
- Contributions by `@BoredManPlays#0001` manually merged with alerts.yml, thank you!
- Contributions by `@yakirarage` for helping with the playerdeathevent alerts.yml

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> TODO

TODO, improve the readme.md file for obvious reasons.

- Add <https://github.com/mrfdev/CMI/blob/master/Resources/Add-ons/discord-helper.yml> to readme somewhere

## Misc.

-  More info about DiscordSRV's alerts feature can be found here: <https://docs.discordsrv.com/alerts/>

- Last updated on July 25th, 2025 | Version 0.3.1, build 039, by Floris & contributors
