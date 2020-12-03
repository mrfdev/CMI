# FAQ - How do I use CMI to deal with Votes?

This is an FAQ message on the CMI Discord @ https://discord.gg/dDMamN4
https://ptb.discordapp.com/channels/452792793631555594/526402563847880725/722010139560771585

**CMI can handle Votes**, this is the recommended setup that works well on Spigot/Paper 1.16.4 to counts, display, and reward players voting.

- Buy and Install CMI (<https://www.spigotmc.org/resources/3742/>)
- Get NuVotifier (<https://www.spigotmc.org/resources/13449/>)

- Next, confirm that NuVotifier works properly, see incoming votes appear in the console.

- You must enable the CMI Module:
In `modules.yml`, find the following, and make sure it's set to `true`:
```yaml
# Handles votifier system
# Applies for servers from 1.7.x and up
votifier: true
```

- Then, make sure CMI is properly configured for your server, so please read and go through the `Votifier:` section and adjust accordingly.
In `config.yml`, find the following, and make sure it's set to `true`:
```yaml
Votifier:
  # When set to true votifier votes will be counted for player
  CountVotes: true
```

- Optinally, you can limit votes per IP per day, exclude playernames from top list, set a cooldown, set it to perform certain commands, and configure additional rewards. 

- Commands: (Note: If you want /votes, instead of /cmi votes, then set the command to true in Alias.yml) 
```
Player commands:
/cmi votes
/cmi votetop

Staff commands:
/cmi votes (playerName)
/cmi votetop (playerName)
/cmi voteedit (playerName) [add/set/take/clear] [amount] (-s)
```

- CMI Permissions: 
```
Recommended for players:
cmi.command.votes - Check players vote count
cmi.command.votetop - Check top vote list

To be considered for staff:
cmi.command.voteedit - Manage players votes
cmi.command.voteedit.others
cmi.command.votetop.others
cmi.command.votes.others
```

- CMI Placeholders: (Note: Placeholders can be used in holograms, in-game chat, tablist, interactive commands, dynamic signs, etc.)
```
%cmi_user_votecount%
%cmi_votetop_[1-10]%
%cmi_votetopcount_[1-10]%
```

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. More information on <https://www.zrips.net/cmi/>