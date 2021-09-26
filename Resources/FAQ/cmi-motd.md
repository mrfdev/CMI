# FAQ - How do I configure CMI for welcome message / motd?

Zrips Discord @ https://discord.gg/dDMamN4

Note: Since CMI version 9.0.3.x you can create your own .yml files and store them in the `~/plugins/CMI/CustomAlias/` directory.

This is the recommended setup that works well with other plugins on Spigot / Paper 1.17.1 for a message of the day. 

This FAQ covers both the welcome message and the server list welcome message.

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> ## Customizing the Welcome Message (for when the player joins the server)

Optional video visually showing the /motd on 1MB https://youtu.be/3yjza6W2NNw

- Buy the [CMI](https://www.zrips.net/cmi/) premium plugin if you haven't already, and Install it on all your servers: <https://www.spigotmc.org/resources/3742/>
- Note: CMI requires the [CMI-Library](https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md) .jar, you can get it here: <https://www.spigotmc.org/resources/cmilib.87610/>

- Start using CMI as Chat Manager, if you were using something else.
- Update `config.yml` (see below) by finding:
```yaml
# Defines name of customtext on players login to server. To disable just set name to non existing customText
Motd: welcomeMessage
```
If you wish to have it be called differently, you can change it there.

Next, inside the `plugins/CMI/CustomText/` directory make a file called `welcomeMessage.txt`, below is an example of some basic text:
```yaml
&3 Your Server »&b %server_online%/%server_max_players%&7 players: %onlineplayers_displaynames%
```
Of course, you can use the CMI Custom Text features to expand, using pagination, placeholders, clickable events, etc. 
<https://www.zrips.net/cmi/custom-text/>

Note that this should work out of the box if you have your CMI Chat configured. New and existing members will both see this welcome message when they join your server.

If you want to give first-time players something extra, you can customize the `eventCommands.yml` file at this section: (for example, you can make another .txt file or do whatever)
```yaml
firstJoinServer:
  Enabled: false
  Commands:
```

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Adding the /motd command (that the player can type in-game)

Optionally, you can make a `/motd` command. A lot of servers have it, this way players can pull up the message again later. To achieve this go in-game and create a new custom alias using: `/cmi aliaseditor` and click the green `+` to add a new command, type in the name `motd` and press enter. Then click on the new green `+` to add a command, which should be: `cmi ctext welcomeMessage`.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Customizing the Welcome Message (the one in the client's server-list)

In the Minecraft Client players can add your server and see it in their list of servers. This also has a message of the day. If you want to use CMI to set this message you can do so with the command:
`/cmi setmotd &6hi \n &9welcome back`

You can use legacy code `&` colors as well as the current modern RGB `{#hex}` colors. The `\n` in the example shows you how to split your text to a new line.

---

You can find more information about the CMI plugin on the official site: [zrips.net/cmi](https://www.zrips.net/cmi/)
