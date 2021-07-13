# FAQ - CMI Chat Filter Information

Zrips Discord @ https://discord.gg/dDMamN4

## chatfilter.yml

These instructions should work fine for the latest CMI version 9.x on Spigot / Paper 1.17.1 and below.

CMI offers a way to filter what players in-game are typing. This can trigger on a word, matching regex, swearing, and capitatlization. 

This is a draft, I haven't confirmed yet if this requires you to use CMI Chat (cmi as chat manager) or if it can grab chat going through another chat manager. I will assume it's a cmi chat feature. 

### Chatfilter.yml

The file is chatfilter.yml, you can edit it, add your own filters, and configure the chat filter features from cmi here. 

You can use this to catch swearing, urls, add whitelisted urls, and more.

### Regex

Regular expressions (regex) is complicated, but makes this a very dynamic feature. It allows you to catch and filter a word like banana, but allow bananapie.

### Unofficial CMI chatfilter helper

A great tool created by @dkalaxdk#2228 can be found here: https://dkalaxdk.github.io/CMIRegexFilter/

### Testing

I strongly recommend to always test first, back up your existing data before mkaing changes. You don't want to make a mistake and auto ban everybody due to bad filtering. 

When testing, the website [regex101](https://regex101.com/) can be used to verify/test the different filters, to see whether they catch the expected input.

### Commands

If chat gets out of hand you can't filter it quick enough, you can use commands like these
```
/cmi mute [playerName] (time) (-s) (reason)
and /cmu unmute [playerName] (-s)
/cmi mutechat (time) (-s) (reason)
and /cmi unmutechat (-s)
/cmi clearchat (self) (clears chat for all players (or just you))
```

### Permissions

```
cmi.chatfilter.bypass.[groupname] - Allows to bypass particular chat filter group
cmi.chatfilter.inform - Informs player when some one breaks chat filter rules
cmi.chatfilter.spambypass - Allows to bypass chat spam filter
```

More information about CMI: https://www.zrips.net/cmi/
