# FAQ - How can I use CMI for Economy?

Zrips Discord @ https://discord.gg/dDMamN4

---

**CMI can handle Economy**, this is the recommended setup that works well with other plugins on Spigot / Paper 1.17.1.

- Buy the [CMI](https://www.zrips.net/cmi/) premium plugin if you haven't already, and Install it on all your servers: <https://www.spigotmc.org/resources/3742/>
- Note: CMI requires the [CMI-Library](https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md) .jar, you can get it here: <https://www.spigotmc.org/resources/cmilib.87610/>

- Download and Install CMI's Vault build (<https://www.zrips.net/wp-content/uploads/2020/07/Vault-1.7.3.jar>)
- Note: If you wish to use the original Vault build, then please get CMI-Injector <https://www.zrips.net/wp-content/uploads/2020/07/CMIEInjector1.0.2.3.jar>)
- Update `config.yml` (see below)
-
```yaml
# CMI config.yml, enable:
Economy:
  # Enable or disable CMI economy in general
  # In case CMIInjector is present, then this will be set to true automatically.
  Enabled: true
```

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. 

---

You can find more information about the CMI plugin on the official site: [zrips.net/cmi](https://www.zrips.net/cmi/)
