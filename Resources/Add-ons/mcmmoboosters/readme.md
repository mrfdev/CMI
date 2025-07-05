# mcMMO Boosters

An add-on for the 1MoreBlock.com Minecraft server that lets staff with specific permissions start temporary mcMMO boosters from a clickable in-game chat menu. This makes it easy for server owners to control who can start boosters, which boosters are available, and their duration—great for events or spontaneous rewards, while preventing potential abuse of the booster system.

---

## Features

* In-game chat menu for starting mcMMO boosters
* Fine-grained permission control using LuckPerms
* Prevents abuse by restricting access to dangerous booster commands
* Easy installation and configuration
* Designed for events, special rewards, and controlled booster activations

---

## Requirements

* Minecraft 1.21.x (or compatible)
* [CMI](https://www.zrips.net/cmi/)
* [mcMMO](https://www.spigotmc.org/resources/64348/)
* [LuckPerms](https://luckperms.net/)

---

## Quick Start (TL;DR)

1. Place `mcmmo-boosters.txt` in `~/plugins/CMI/CustomText/`
2. Place `1MB-mcMMO-Boosters.yml` in `~/plugins/CMI/CustomAlias/`
3. Set up LuckPerms permissions as described below
4. `/cmi reload` and you’re ready!

---

## Installation & Permissions

### 1. Restrict default access to boosters

No staff or player should have access to `/mcMMO -booster <multiplier> <timeInMinutes>`, or the main boosters command, by default. Deny these permissions for all groups/users as a precaution:

```bash
lp group default permission set cmi.customalias.mcmmo-booster false
lp group default permission set cmi.customalias.mcmmoboosters false
```

### 2. Grant permission to trusted users/groups

Allow only trusted staff or specific groups/users to use the boosters menu:

```bash
lp group 1mb_admin permission set cmi.customalias.mcmmoboosters true
# Or per user:
lp user mrfloris permission set cmi.customalias.mcmmoboosters true
```

### 3. Place Files

* Copy `mcmmo-boosters.txt` to `~/plugins/CMI/CustomText/`
* Copy `1MB-mcMMO-Boosters.yml` to `~/plugins/CMI/CustomAlias/`
* Reload CMI with `/cmi reload`

---

## Usage

Use the `/mcMMO boosters` command (by alias or direct command, depending on setup). This will open an in-game menu showing a selection of recommended multipliers and durations. Clicking a button:

* Instantly overrides any current mcMMO booster
* Starts a new booster via the internal `/mcMMO -booster <multiplier> <time>` command
* Triggers a schedule to automatically turn off the booster after the set time

This allows for safe, transparent, and staff-controlled booster activation without risk of command abuse.

![mcMMO Boosters Menu](https://github.com/user-attachments/assets/31a4b315-a576-4299-ae98-c743bde02914)

---

## Troubleshooting / FAQ

**Q:** The command says "no permission"?

* Check that the LuckPerms node `cmi.customalias.mcmmoboosters` is set for your group or user.

**Q:** The menu does not appear or commands fail?

* Double-check that the required `.txt` and `.yml` files are in the correct directories.
* Use `/cmi reload` after making changes.

**Q:** Can I add or change boosters?

* Edit `1MB-mcMMO-Boosters.yml` to adjust multipliers, times, or menu layout to fit your server needs.

---

## Support, Suggestions, Bugs

* Found an issue? Feel free to open a [new issue]<https://github.com/mrfdev/CMI/issues>.

---

## Credits

* **Nossr** – Creator of mcMMO
* **Zrips** – Creator of CMI
* **@mrfloris** (1MoreBlock.com) – Project author and maintainer
* And thanks to all contributors!

---

## Contributions

This add-on was developed for use on 1MoreBlock.com, but is open to the community. You are welcome to fork, clone, or submit pull requests. If you contribute significant improvements, you will be credited in this section!

---

## License

MIT License. See [LICENSE](./LICENSE). You are free to use, modify, and share this project. Please provide attribution to @mrfloris and link to the original source:

[https://github.com/mrfdev/CMI/tree/master/Resources/Add-ons/mcmmoboosters](https://github.com/mrfdev/CMI/tree/master/Resources/Add-ons/mcmmoboosters)

---

## TODO

- add -confirm to click on in case the chat moved (you've selected x for y minutes, click to start!), this way you can click on another one and confirm that one
- add white space around the red notice msg so it stands out more
- report bug for xprate x true/false, where false still acts like true
- add a sound for start, stop to the -booster command
- see if there's a way to run a global cooldown, so we stop and start another one, but not override by accidentally clicking, and we can use the cooldown to get an idea of how long it lasts?
- see if there's a way to add a boosbar that we update with time remaining (through cmi)

---

## Version

mcMMO Boosters, version 0.1.2, build 010, July 6th, 2025.
