# FAQ - How do I configure CMI for /rules?

Zrips Discord @ https://discord.gg/dDMamN4

Note: Per 9.0.3.0 the CustomAlias.yml files are moved to their own folder: `~/plugins/CMI/CustomAlias/CustomAlias.yml` I will update this FAQ page semi soon. Just apply some common sense for now.

---

**CMI can handle custom /rules**, this is the recommended setup that works well with other plugins on Spigot / Paper 1.17.1 for a dynamic and flexible way of displaying /rules.

- Buy the [CMI](https://www.zrips.net/cmi/) premium plugin if you haven't already, and Install it on all your servers: <https://www.spigotmc.org/resources/3742/>
- Note: CMI requires the [CMI-Library](https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md) .jar, you can get it here: <https://www.spigotmc.org/resources/cmilib.87610/>

- Inside the `plugins/CMI/CustomText/` directory there is already a file called `rules.txt`, you should go through this and adjust it to your server rules.

Of course, you can use the CMI Custom Text features to expand on this, using pagination, other placeholders, clickable events, etc. More information here: <https://www.zrips.net/cmi/custom-text/>

- Next, you can make a `/rules` command. A lot of servers have it, and you can then refer to it in Automated msgs, warnings, etc. 

To achieve this go in-game and create a new custom alias using: `/cmi aliaseditor` and click the green `+` to add a new command, type in the name `rules` and press enter. Then click on the new green `+` to add a command, which should be: `cmi ctext rules`. (Note: The command will work, but shows red until you restart the server)

- Optionally, if you want to give first-time players some extra rules attention, you can customize the `eventCommands.yml` file at this section: 
```yaml
firstJoinServer:
  Enabled: true
  Commands:
  - cmi ctext rules [playerName]
```

- Optionally, you could go through `config.yml` and adjust warnings to say `Warning received, please play within our /rules`, or you could adjust `schedules.yml` to include a repeating rules-reminder. For example:
```yaml
RulesReminder:
  Enabled: true
  MinPlayers: 1
  Delay: 1500
  Repeat: true
  Randomize: true
  Feedback: false
  Commands:
  - broadcast! &3 Reminder »&b Please play by the /rules
```

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. 

---

You can find more information about the CMI plugin on the official site: [zrips.net/cmi](https://www.zrips.net/cmi/)
