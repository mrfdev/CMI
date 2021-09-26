# FAQ - How do I extend a CMI command?

Zrip Discord @ https://discord.gg/dDMamN4 
There's a video: https://youtu.be/TLKAusnisqs

---

**CMI commands can be extended through the aliaseditor**, this is the recommended setup that works well on Spigot / Paper 1.17.1 to make commands even more dynamic and do exactly what you want, using the alias editor. 

- Buy the [CMI](https://www.zrips.net/cmi/) premium plugin if you haven't already, and Install it on all your servers: <https://www.spigotmc.org/resources/3742/>
- Note: CMI requires the [CMI-Library](https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md) .jar, you can get it here: <https://www.spigotmc.org/resources/cmilib.87610/>

- Next, you can go to `Alias.yml` and find the command you wish to extend. For example: `/clearchat: true`, make sure it's set to `false`, save the file.

- Then, either blindly copy the below example (instructions at the end) or make your own comamnds using the in-game custom aliaseditor feature. Let's go with that one for educational purposes.

- `/cmi aliaseditor`, then press enter, click on the green `+` icon to enter a name for a new command, we're going with `clearchat`.

- Then click on the next green `+` icon to start adding commands to it. You can use specialized commands, placeholders, commands from other plugins, and cmi commands. Among a few things. 

- Check the below code to see an example of how it looks inside the `CustomAlias.yml` file. 

- In the example of /clearchat we're using tab suggestions, a custom permission, using specialized commands to check against parameters entered, and we show different results to players as we do to staff members. 

Note: I am not saying this is THE WAY to do this, it's an example to help you learn how to disable the base command from CMI and make your own, so you can extend it. Which is fantastic, because you can use sounds, title or action msgs, bossbarmsgs, a list of commands, you can check against conditionals, use chance, placeholders, check against permissions and more. But this example should help you get started.

```yaml
  clearchat:
    Cmds:
    - check:$2==inform! asConsole! cmi sound block_anvil_land -all
    - asPlayer! cmi clearchat
    - check:$1==selfclear! asPlayer! cmi clearchat self
    - asConsole! cmi broadcast !&r \n {#orange}----------------------------------- \n &r
    - check:$2==inform! check:$3==null! asConsole! cmi broadcast !{#cerulean} •&l&m &r{#cerulean}• {#feijoa}The chat has been cleared {#cerulean} •&l&m &r{#cerulean}•
    - check:$2==inform! check:$3==tellstaff! asConsole! cmi broadcast !{#cerulean} •&l&m &r{#cerulean}• {#feijoa}The chat has been cleared {#cerulean} •&l&m &r{#cerulean}•
    - check:$2==inform! check:$3==tellall! asConsole! cmi broadcast !{#cerulean} •&l&m &r{#cerulean}• {#feijoa}The chat has been cleared {#cerulean} •&l&m &r{#cerulean}• ($4)
    - asPlayer! cmi staffmsg {#feijoa}Cleaned up chat, reason:{#cerulean}&l $4-
    - asConsole! cmi broadcast !&r \n {#orange}----------------------------------- \n &r
    Perm: true
    CustomTabs:
    - selfclear,selfkeep inform,quiet tellall,tellstaff noreason,user-drama,user-swearing,user-hatespeech,event,broadcast [playername]
```

How to install these examples?
- You can install these above examples by openning `CustomAlias.yml` and pasting the code at the bottom. Note that since CMI version 9.0.3.x you can create your own .yml files and store them in the `~/plugins/CMI/CustomAlias/` directory.

- For best results, stop the server, make your changes, and start the server again. This way commands can register properly and they can be used right away.

---

You can find more information about the CMI plugin on the official site: [zrips.net/cmi](https://www.zrips.net/cmi/)
