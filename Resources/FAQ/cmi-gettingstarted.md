# FAQ - How do I get started with CMI?

This is a pinned message on the CMI Discord @ https://discord.gg/dDMamN4
https://ptb.discordapp.com/channels/452792793631555594/526402563847880725/734900902594478240

**Get Started with CMI**, this is the recommended setup that works well with other plugins on Spigot/Paper 1.16.2

- Buy and Install CMI (<https://www.spigotmc.org/resources/3742/>)

**Note:** This is perhaps important to mention. CMI is a big package, it covers a lot of server management topics, from kicks and msgs, to warps, kits, and custom commands. It's dynamic and flexible. And since every server is different: The approach to start might differ per server.

- Run Spigot 1.16.2 or Paper 1.16.2, after setting it up /stop it.

- Put the CMI jar in the plugins/ directory. Start the server back up and let CMI install.

(Upgrading? Then the instructions are basically the same, stay current, backup, test, etc.)

- /stop the server and go through the following files:
```
config.yml (main configuration file, nitpick on features here)
modules.yml (allowing you to globally turn on/off about 50 bigger features)
Decide if you want to use CMI for economy and as chat manager, and follow the steps in the economy and chat FAQ.
Go to the zrips.net -> cmi -> website and figure out which commands you don't want to give players, give them the base permissions cmi.commands, and then negate the ones they shouldn't have. 
Then find out which commands you want them to certainly have, and grant them these permissions. 
Setup homes, kits, warps, and start testing all the features. 
```

- By just using the website for commands and permissions, you will slowly learn what does what and how to do this. 

- For permissions, I recommend LuckPerm as permission manager.

- For Economy, I recommend using CMI's custom compile of Vault 1.7.3.

- For Chat, I recommend setting up groups, ranks, and their prefixes through CMI and luckperms.

- Converting from EssentialsX? Check the website on how to import homes, users, etc.

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. More information on <https://www.zrips.net/cmi/>