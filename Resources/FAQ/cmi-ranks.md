# FAQ - CMI Rankup System Information

Zrips Discord @ https://discord.gg/dDMamN4

This is the recommended setup that works well with other plugins on Spigot / Paper 1.17.1.

---

## What is a Rankup System?

A 'default' player in the game can be active, levelling up on various statistics, gameplay elements, including levels and points for things like mcMMO and Jobs. As a player grows in their game they can automatically rank up. Going from a beginner to an elite player. You can pick the ranks with CMI, set them up to auto upgrade, and set the requirements. When a rank-up happens, commands can be executed. Which is super helpful to grant perks, manage the permissions involved, etc.

More information: <https://www.zrips.net/cmi/rankup-system/>

## How to use CMI Ranks (rankup system)

- Buy the [CMI](https://www.zrips.net/cmi/) premium plugin if you haven't already, and Install it on all your servers: <https://www.spigotmc.org/resources/3742/>
- Note: CMI requires the [CMI-Library](https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md) .jar, you can get it here: <https://www.spigotmc.org/resources/cmilib.87610/>

- Go to your server folder, find `spigot.yml` and within it find: `stats->disable-saving: false`, and make sure it is indeed set to `false`.

Please note that a player will get default rank group depending on the set permission node `cmi.rank.[rankName]`, if your first rank is `FirstRankName:` then grant them in LuckPerms (for example) the permission `cmi.rank.FirstRankName` like so: `lp user mrfloris permission set cmi.rank.FirstRankName true`, of course, you can also do this for the default group, like so: `lp group default permission set cmi.rank.FirstRankName true`.

And please note that not enabled ranks will be ignored!

- The CMI plugin directory (`~/pluyins/CMI/ranks.yml`) has a few example ranks, and a big chunk of text at the top (all the text starting with the `#` in front of them). I strongly recommend to take a bit of time to read through these comments, and to try to understand the examples. 

Please note that I strongly recommend to use `double quotes: ".."` around, and to *not* use `spaces` in the `StatsRequirements` that you set. This seems to make for the best working results. And after you set it and start the server up, if CMI updates it to something else, that's perfectly fine. 

Example what not to do:
```
  StatsRequirements:
  - PlayTime:21600
  -  walk:30000
  - 'MonsterKills : 1000'
  - "blocksmined: 30000"
```
*Example of what I recommend to do:*
```yaml
  StatsRequirements:
  - "PlayTime:21600"
  - "walk:30000"
  - "MonsterKills:1000"
  - "blocksmined:30000"
```



## More Information
- <https://www.zrips.net/cmi/rankup-system/>

## Finally

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. 

---

You can find more information about the CMI plugin on the official site: [zrips.net/cmi](https://www.zrips.net/cmi/)
