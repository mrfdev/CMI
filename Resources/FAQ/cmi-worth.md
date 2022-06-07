# FAQ - worth

<topMenu>
<details>
    <summary><strong>FAQ Menu</strong></summary>
    <p>
     • <a href="https://faq.cmi.support/bungee">Bungeecord-Info</a>, 
     • <a href="https://faq.cmi.support/chance">Chance-Example</a>, 
     • <a href="https://faq.cmi.support/chat">Chat-Manager</a>, 
     • <a href="https://faq.cmi.support/format">Chat-Format</a>, 
     • <a href="https://faq.cmi.support/chatfilter">Chat-Filter</a>, 
     • <a href="https://faq.cmi.support/chatrooms">Chat-Rooms</a>, 
     • <a href="https://faq.cmi.support/commands">Commands-Manager</a>, 
     • <a href="https://faq.cmi.support/joinleave">Custom-Join-Leave</a>, 
     • <a href="https://faq.cmi.support/economy">Economy-Manager</a>, 
     • <a href="https://faq.cmi.support/eventcommands">Event-Commands</a>, 
     • <a href="https://faq.cmi.support/ext-cmds">Extending-Commands</a>, 
     • <a href="https://faq.cmi.support/gettingstarted">Getting-Started</a>, 
     • <a href="https://faq.cmi.support/glow">Glow</a>, 
     • <a href="https://faq.cmi.support/help">Custom-Help</a>, 
     • <a href="https://faq.cmi.support/hexcolors">Hex-Colors</a>, 
     • <a href="https://faq.cmi.support/import">Importing-Data</a>, 
     • <a href="https://faq.cmi.support/library">CMILib</a>, 
     • <a href="https://faq.cmi.support/locale">Locale</a>, 
     • <a href="https://faq.cmi.support/prefix">LuckPerms-Prefix</a>, 
     • <a href="https://faq.cmi.support/migrate">Migrate-Database</a>, 
     • <a href="https://faq.cmi.support/mode-stuck">Mode-Stuck</a>, 
     • <a href="https://faq.cmi.support/moderation">User-Moderation</a>, 
     • <a href="https://faq.cmi.support/more-msg-cmds">More-Msg-Commands</a>, 
     • <a href="https://faq.cmi.support/motd">MOTD</a>, 
     • <a href="https://faq.cmi.support/params">Parameters</a>, 
     • <a href="https://faq.cmi.support/ranks">Ranks</a>, 
     • <a href="https://faq.cmi.support/rules">Custom-Rules</a>, 
     • <a href="https://faq.cmi.support/running">Running-CMI</a>, 
     • <a href="https://faq.cmi.support/safety">Safety-Tips</a>, 
     • <a href="https://faq.cmi.support/specialized">Specialized-Cmds</a>, 
     • <a href="https://faq.cmi.support/toggle">Toggle-Example</a>, 
     • <a href="https://faq.cmi.support/trash">Trash</a>, 
     • <a href="https://faq.cmi.support/votes">Vote-Manager</a>,
     • <a href="https://faq.cmi.support/worth">Worth</a>.
    </p>
</details>

<details>
    <summary><strong>Official Zrips Links</strong></summary>
    <ul>
        <li><a href="https://zrips.net/">Zrips Website</a>
         <pre>https://www.zrips.net/<br>The official website, wiki/documentation/information</pre></li>
        <li><a href="https://discord.gg/dDMamN4">Zrips Discord</a>
         <pre>https://discord.gg/dDMamN4<br>The official Discord community server with member-driven support</pre></li>
        <li><a href="https://github.com/Zrips/">Zrips Github</a>
         <pre>https://github.com/Zrips<br>The place for bug reports and feature suggestions</pre></li>
    </ul>
</details>

<details>
    <summary><strong>Prerequisites</strong></summary>
    <ul>
        <li><a href="https://www.spigotmc.org/resources/3742/">Buy and Download CMI</a> (premium plugin)
         <pre>https://www.spigotmc.org/resources/3742/<br>Get the CMI plugin if you haven't already, and then Install it on all your servers</pre></li>
        <li><a href="https://www.spigotmc.org/resources/87610/">Also Download CMILib</a> (free library) (<a href="https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md">more info</a>)
         <pre>https://www.spigotmc.org/resources/87610/<br>All Zrips plugins require the CMILib .jar file. Get it and also put it on all your servers.</pre></li>
        <li>All my FAQ pages have been written for Spigot / Paper 1.18.2 and CMI 9.1.5.x or newer.</li>
        <li>The mrfdev github page is not an official resource, we're building up our knowledge base as a courtesy.</li>
        <li>I am an admin on the Zrips Discord, this does not mean what I share on here is official.</li>
    </ul>
</details>
</topMenu>

---

You can use CMI to make dynamic features using specialized commands and smart use of placeholders.

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI Worth Feature

note: This document isn't finished yet, contributions are welcome.

```
todo: There's a module perhaps in modules.yml
todo: There are sell and worth settings in config.yml
todo:
in console, you can find sell money economy and worth commands and permissions with:
cmi checkcommand <keyword> (like pay, money, sell, worth)
cmi checkperm <keyword> (like pay, money, sell, worth)
```

## Commands:

There are a few basic commands for players and admins, together with holograms, placeholders, and cmi's interactive commands feature you can make a pretty dynamic and cool feature with just worth. This is a bit much to explain here, so I am keeping it simple. For now .. 

```
> cmi checkcommand worth
 --------------------------------------------------
 1. /cmi setworth (itemname) -s:(sellPrice)
 2. /cmi worthlist (playerName) (-missing)
 3. /cmi setenchantworth
 4. /cmi worth (all/blocks/hand/material)
 5. /cmi generateworth
>
```
There's also `/cmi sell (all/blocks/hand/same/gui/material)`

### Players

They can either use an item in their hand and walk up to the hologram and it will show the worth because a hologram can show the icon they're holding, the amount of that stack in their hand, and it can show how much it's worth based on the data from the worth.yml file.

Or they can hold the item and type /cmi worth, assuming you granted them permission to the command. And it will show it in chat. 

Optionally if you've granted them permission to use /cmi sell, they can open a sell gui to put the items in and get money for it (the title of the sell gui menu will calculate how much they will earn), or they can use a direct command and it will say in chat how much they've earned.

### Server owner

The server owner has to grant players the permissions to the variety of /cmi sell, and /cmi worth features. 

Then they have to go through the worth.yml list to set it up. Or as server owner you can in-game use the /cmi setworth command.

Pro tip: If you set a base materials' value. You can also run from console: `cmi generateworth` which will try automatically generate what you can craft with those materials. 

Pro tip #2: In-game you can type /cmi worthlist -missing, which will show you a GUI interface with all the items NOT on the worthlist. Making it easy to get an overview of what's still to do.

## Permissions

```
> cmi checkperm worth
 --------------------------------------------------
 1. cmi.command.generateworth - Auto generate posible item worth values
 2. cmi.command.worthlist - Check list of items with set sell prices
 3. cmi.command.worth - Check item worth
 4. cmi.command.setenchantworth - Change enchantment worth
 5. cmi.command.worthlist.others - Check list of items with set sell prices
 6. cmi.command.setworth - Change item worth
>
> cmi checkperm sell
 --------------------------------------------------
 1. cmi.command.sell.[blocks/all] - Allows to sell items not only from your hand
 2. cmi.command.worthlist - Check list of items with set sell prices
 3. cmi.command.sell - Sell items from inventory
>
```

## Sell sign

https://www.youtube.com/watch?v=lK_Pr3h7Bag&list=PLAgWLDdkOWlq8pnYuzIVAl2doNg1vmDD_&index=6

I mentioned earlier that you can use cmi ic feature and sell combo, here's an example of a sell sign.

More info of an item shop here:

https://www.zrips.net/itemshop/

## Visually show what it's worth feature

You can also visually display what something is worth using a combo of features, here's what I use:

From my personal holograms.yml file: (so you HAVE to change the world and location obviously)
```yaml
Worth:
  Loc: world_survival;12551.44;80.06;-5341.47
  Interval: 0.3
  Range: 3
  RangeExtra: 3
  Spacing: 0.22
  SpacingIcon: 0.5
  Interactable: true
  Commands:
  - asPlayer! cmi sell hand
  Lines:
  - '&6 %cmi_iteminhand_displayname% &fx %cmi_iteminhand_amount%'
  - '&bWorth: &e %cmi_iteminhand_worth%'
  - ICON:%iteminhand%
  ```
