# FAQ - How do I get started with CMI?

Zrips Discord @ https://discord.gg/dDMamN4

This is the recommended setup that works well with other plugins on Spigot / Paper 1.17.1

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Get Started with CMI 

- Buy the [CMI](https://www.zrips.net/cmi/) premium plugin if you haven't already, and Install it on all your servers: <https://www.spigotmc.org/resources/3742/>
- Note: CMI requires the [CMI-Library](https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md) .jar, you can get it here: <https://www.spigotmc.org/resources/cmilib.87610/>

**Note:** This is perhaps important to mention. CMI is a big package, it covers a lot of server management topics, from kicks and msgs, to warps, kits, and custom commands. It's dynamic and flexible. And since every server is different: The approach to start might differ per server.

- Run CMI stable on Spigot 1.16.5 or Paper 1.16.5 using version 8.8.5.0, after setting it up /stop it.

- Or Run CMI unstable-beta on Spigot 1.17 using test version 9.0.0.2, after setting it up, /stop it.

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

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. 

---

You can find more information about the CMI plugin on the official site: [zrips.net/cmi](https://www.zrips.net/cmi/)
