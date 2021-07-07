# FAQ - How do I deal with CMI commands?

Zrips Discord @ https://discord.gg/dDMamN4

You can use this on CMI 8.8.5.0 and 9.0.0.4 for Spigot-, and Paper 1.17.1 and below.

**CMI can handle Commands.** (Both base commands and your own custom commands)
- Buy and Install CMI (<https://www.spigotmc.org/resources/3742/>)
By default CMI has all it's commands underneath `/cmi <command>` you can find them all by typing: `/cmi help` and by viewing the list on the website here: (<https://www.zrips.net/cmi/commands/>)
If you wish to use `/<command>` and not just `/cmi <command>`, then you can edit the `Alias.yml` file and toggle the false value to true.
```yaml
# Random Example
# Enabling /home, so players don't have to type: /cmi home
# Find the /command and toggle it from false to true:

  # /cmi home $1-
  /home: true
```
You can now save the file and type: `/cmi reload`, but to properly register the commands a /stop and restart is required.

Another option is to add your own commands! For example: `/banana`.
Note: Custom Alias (commands) are stored in the cmi file: `CustomAlias.yml`
To get started, In-game you type: `/cmi aliaseditor new banana` (obvious replace banana with the command you want)
There will be a green `+` to press, it will now as you to enter a command to execute. 
Type (without the starting /) for example: `cmi say I am a banana`
You can press the green + again to add another command. 
This feature is very extensive, dynamic, and you can learn much more about it here: (<https://www.zrips.net/cmi/commands/custom-alias/>)

The new (/banana) command might show red, but it will work. And the next time you restart the server it will properly register it and auto-complete as well. 
To edit existing custom alias commands, you can type: `/cmi aliaseditor` and then click on the command in the list. 

A visual youtube tutorial can be found here <https://www.youtube.com/watch?v=LN54XU12Zjc>

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. More information on <https://www.zrips.net/cmi/>
