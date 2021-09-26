# FAQ - How do I use CMI to make a custom /help command?

Zrips Discord @ https://discord.gg/dDMamN4

Note: Per 9.0.3.0 the CustomAlias.yml files are moved to their own folder: `~/plugins/CMI/CustomAlias/CustomAlias.yml` I will update this FAQ page semi soon. Just apply some common sense for now.

---

**CMI can handle custom /help**, this is the recommended setup that works well with other plugins on Spigot / Paper 1.17.1 for a dynamic and flexible way of displaying /help. 

- Buy the [CMI](https://www.zrips.net/cmi/) premium plugin if you haven't already, and Install it on all your servers: <https://www.spigotmc.org/resources/3742/>
- Note: CMI requires the [CMI-Library](https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md) .jar, you can get it here: <https://www.spigotmc.org/resources/cmilib.87610/>

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

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. 

---

More information on <https://www.zrips.net/cmi/>
