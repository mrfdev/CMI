# FAQ - CMI Aliaseditor Parameters Explained

Zrips Discord @ https://discord.gg/dDMamN4

Note: Per 9.0.3.x the CustomAlias.yml files are moved to their own folder: `~/plugins/CMI/CustomAlias/CustomAlias.yml` I will update this FAQ page semi soon. Just apply some common sense for now.

This page is for CMI 9 on Spigot-, and Paper 1.17.1.

---

## This is for /cmi aliaseditor

For CMI 9, let's you catch parameters entered in cmi aliaseditor made commands

You can then in the commands use `$1` `$5` `$0` .. order doesn't matter. They're a reference to the stuff entered by the player, see example.

## Example

```
Server owner used /cmi aliaseditor to make a /banana command

Player types:

/fruit banana apple superman

$1 == banana
$1- == banana apple superman

Please note that just the $1 refers to the first paramter, this can be null, or whatever the player entered. So use wisely.
Please note that the $1- has a dash behind it, referring to the first and every other parameter behind it. 

$0 == fruit (the command, without the / in front of it)

$1 == banana

$2 == apple

$3 == superman

$1- == banana apple superman

$4 == nothing there, so it is "null"

$1 $3 == banana superman

$0 $3 == fruit superman

```

---

You can find more information about the CMI plugin on the official site: [zrips.net/cmi](https://www.zrips.net/cmi/)
