# mcMMO Boosters
A 1MoreBlock.com Minecraft server add-on for CMI and mcMMO that helps staff with the appropriate permissions to easily start a temporary MMO booster from a clickable in-game chat menu. This way you as server owner can be selective who can start these boosters, and which boosters and for what time. Instead of all the staff having access to xprate and abusing their powers, etc. This is great for events, spontanious rewards for players, etc.

## /mcmmo boosters
<img width="669" alt="mcmmo-boosters" src="https://github.com/user-attachments/assets/31a4b315-a576-4299-ae98-c743bde02914" />

## installation instructions
**LuckPerms:**
- Nobody, including staff, should run /mcMMO -booster <multiplier> <timeInMinutes>, negate the permission from everybody. And maybe as a precaution, make sure nobody can use the /mcMMO boosters command either.
```
lp group default permission set cmi.customalias.mcmmo-booster false
lp group default permission set cmi.customalias.mcmmoboosters false
```
- Then, only give selective group(s) (or user(s)) permission to use the new /mcMMO boosters command: (Yes, do NOT give the mcmmo-booster one, consider it an internal command)
```
lp group 1mb_admin permission set cmi.customalias.mcmmoboosters true
```
- Or, per player
```
lp user mrfloris permission set cmi.customalias.mcmmoboosters true
```

**CMI**
- Put the mcmmo-boosters.txt file in the `~/plugins/CMI/CustomText/` directory,
- And put the 1MB-mcMMO-Boosters.yml file in the `~/plugins/CMI/CustomAlias/` directory,

You can now run `/cmi reload` and use the new commands

## New command: /mcMMO Boosters

Gives a menu with a selection of suggested multipliers with a time. When clicked, it will override whatever mcMMO booster is or isn't running, start a new one using the internal command /mcMMO -booster <multiplier> <time> and triggers a schedule to automatically turn off the booster later. 

## Credit
Thank you Nossr and Zrips for making mcMMO and CMI, and I like to thank myself, because I made this project. Yay. :p

## Contributions
You're free to clone and use this for your own server, this is made for myself to work on my server first. If you want to share your improvements, feel free to clone/PR and I will review your changes and include you this section of the readme.md file. 

## License
Oh gosh, I dunno, MIT or something? I mean, I wrote this project, I'd like to get credit for it. But you're free to use it and make changes, I dunno. Credit suggestion: @mrfloris Original source <https://github.com/mrfdev/CMI/tree/master/Resources/Add-ons/mcmmoboosters>

## Version
mcMMO Boosters, version 0.1.1, build 008, July 6th, 2025. 
