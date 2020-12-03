# FAQ - How do I use CMI to make a custom /help command?

This is an FAQ message on the CMI Discord @ https://discord.gg/dDMamN4
https://ptb.discordapp.com/channels/452792793631555594/526402563847880725/731182532116349020

**CMI can handle custom /help**, this is the recommended setup that works well with other plugins on Spigot/Paper 1.16.4 for a dynamic and flexible way of displaying /help.

- Buy and Install CMI (<https://www.spigotmc.org/resources/3742/>)
- Inside the `plugins/CMI/CustomText/` directory you can put a file called `help.txt`.

Of course, you can use the CMI Custom Text features to expand on this, using pagination, other placeholders, clickable events, etc. More information here: <https://www.zrips.net/cmi/custom-text/>

- Next, you can make a `/help` command. To achieve this go in-game and create a new custom alias using: `/cmi aliaseditor` and click the green `+` to add a new command, type in the name `help` and press enter. Then click on the new green `+` to add a command, which should be: `cmi ctext help`. 

- Optionally, if you want to give different groups additional text, you can customize the alias to different _.txt_ files and use `perm:custom.help.groupname! cmi ctext help2 [playerName]` (note that help2 refers to help2.txt, it can be whatever you want and have created)

Example
```yaml
- cmi ctext help2 [playerName]
- asConsole! perm:custom.help.vip! cmi ctext helpvip [playerName]
- asConsole! perm:custom.help.staff! cmi ctext helpstaff [playerName]
```

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. More information on <https://www.zrips.net/cmi/>