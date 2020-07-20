# FAQ - How do I configure CMI for /rules?

This is a pinned message on the CMI Discord @ https://discord.gg/dDMamN4
https://ptb.discordapp.com/channels/452792793631555594/526402563847880725/719742400611876956

**CMI can handle custom /rules**, this is the recommended setup that works well with other plugins on Spigot/Paper 1.16.1 for a dynamic and flexible way of displaying /rules.

- Buy and Install CMI (<https://www.spigotmc.org/resources/3742/>)
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

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. More information on <https://www.zrips.net/cmi/>