# FAQ - How can I use CMI for Economy?

This is a pinned message on the CMI Discord @ https://discord.gg/dDMamN4
https://ptb.discordapp.com/channels/452792793631555594/526402563847880725/711599643737456712

**CMI can handle Economy**, this is the recommended setup that works well with other plugins on Spigot/Paper 1.16.1
- Buy and Install CMI (<https://www.spigotmc.org/resources/3742/>)
- Download and Install CMI's Vault build (<http://www.zrips.net/wp-content/uploads/2020/07/Vault-1.7.3.jar>)
- Note: If you wish to use the original Vault build, then please get CMI-Injector <http://www.zrips.net/wp-content/uploads/2020/07/CMIEInjector1.0.2.3.jar>)
- Update `config.yml` (see below)
-
```yaml
# CMI config.yml, enable:
Economy:
  # Enable or disable CMI economy in general
  # In case CMIInjector is present, then this will be set to true automatically.
  Enabled: true
```

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. More information on <https://www.zrips.net/cmi/>