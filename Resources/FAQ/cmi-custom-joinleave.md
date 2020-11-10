# FAQ - How do I configure CMI for custom (first) join / leave messages?

This is not a pinned message on the CMI Discord @ https://discord.gg/dDMamN4
https://ptb.discordapp.com/channels/452792793631555594/526402563847880725/711950696982904904

**CMI can handle the custom chat things**, this is the recommended setup that works well with other plugins on Spigot/Paper 1.16.4 for server owners who want to turn on and display a custom join and leave message to players.

- Buy and Install CMI (<https://www.spigotmc.org/resources/3742/>)
- Start using CMI as Chat Manager, if you were using something else.
 * https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-chat.md

- Update `config.yml` (see below)
```yaml
Messages:
  Login:
    # If set to true, login message wont be shown
    Disabled: false
    # Defines number of players from which to automatically start hiding join messages
    # Set to -1 to disable this
    AutoHideFrom: -1
    Custom:
      # If set to true, custom login message will be used. cmi.messages.disablelogin can be used to disable message for player
      Use: true
  Logout:
    # If set to true, logout message wont be shown
    Disabled: false
    # Defines number of players from which to automatically start hiding logout messages
    # Set to -1 to disable this
    AutoHideFrom: -1
    Custom:
      # If set to true, custom logout message will be used. cmi.messages.disablequit can be used to disable message for player
      Use: true
  # Check locale file for translation and custom placeholders: [playername], [totalUsers], [onlinePlayers]
  FirstJoinMessage:
    Use: true
  DeathMessage:
    # Defines number of players from which to automatically start hiding death messages
    # Set to -1 to disable this
    AutoHideFrom: -1
```
Next, inside the `plugins/CMI/Translations/` directory there is at least the file `Locale_EN.yml`, and below is an example of some basic text you could use / customize:
```yaml
  FirstJoin: '{#Cerulean} 1MB Server »{#Feijoa} Welcome new player &6[playerDisplayName]{#Feijoa}
    to 1MoreBlock.com!'
  LogoutCustom: '{#Cerulean} - {#Feijoa}Player &l[playerDisplayName]&r {#Feijoa}left.'
  LoginCustom: '{#Cerulean} 1MB Server »{#Feijoa} Welcome back &6[playerDisplayName]
    {#Feijoa}❤'
```
As you can see you can use certain placeholders, cmi's hex colors, and set the text to whatever you want. Note that the above is a customization and not the default text, but gives you the info to search for within the locale file. 

Note if you use another language, you have to adjust that file. 

Note that this should work out of the box if you have your CMI Chat configured. New and existing members will both see this on join  message when they join your server, etc.

If you want to give first-time players something extra, you can utalize the `eventCommands.yml` file at the onfirstjoin and onjoin sections: (for example, you can make another .txt file, run certain commands, or do whatever)
```yaml
firstJoinServer:
  Enabled: true
  Commands:
..etc..
```

More information about CMI: https://www.zrips.net/cmi/