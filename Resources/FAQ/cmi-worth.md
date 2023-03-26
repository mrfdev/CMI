# FAQ - How can I use CMI's Worth Feature?

<topMenu>
<details>
    <summary><strong>FAQ Menu</strong></summary>
    <p>
     • <a href="https://faq.cmi.support/bungee">CMI and Bungeecord info-</a>, 
     • <a href="https://faq.cmi.support/chance">Chance example</a>, 
     • <a href="https://faq.cmi.support/chat">CMI Chat manager</a>, 
     • <a href="https://faq.cmi.support/format">Chat format info</a>, 
     • <a href="https://faq.cmi.support/chatfilter">Chat filter</a>, 
     • <a href="https://faq.cmi.support/chatrooms">Chat rooms</a>, 
     • <a href="https://faq.cmi.support/commands">CMI Commands info</a>, 
     • <a href="https://faq.cmi.support/joinleave">Custom Join and Leave</a>, 
     • <a href="https://faq.cmi.support/economy">CMI Economy manager</a>, 
     • <a href="https://faq.cmi.support/eventcommands">Event commands</a>, 
     • <a href="https://faq.cmi.support/ext-cmds">Extending commands</a>, 
     • <a href="https://faq.cmi.support/gettingstarted">Getting started with CMI</a>, 
     • <a href="https://faq.cmi.support/glow">Glow info</a>, 
     • <a href="https://faq.cmi.support/help">Create custom /help</a>, 
     • <a href="https://faq.cmi.support/hexcolors">CMI Hex colors</a>, 
     • <a href="https://faq.cmi.support/import">Importing data into CMI</a>, 
     • <a href="https://faq.cmi.support/library">CMILib library info</a>, 
     • <a href="https://faq.cmi.support/locale">Customizing CMI Locale</a>, 
     • <a href="https://faq.cmi.support/prefix">CMI Chat with LuckPerms prefix</a>, 
     • <a href="https://faq.cmi.support/migrate">Migrate to MySQL database</a>, 
     • <a href="https://faq.cmi.support/mode-stuck">Player stuck in Mode?</a>, 
     • <a href="https://faq.cmi.support/moderation">User-moderation info</a>, 
     • <a href="https://faq.cmi.support/more-msg-cmds">More message commands</a>, 
     • <a href="https://faq.cmi.support/motd">MOTD</a>, 
     • <a href="https://faq.cmi.support/params">Parameters explained</a>, 
     • <a href="https://faq.cmi.support/ranks">Ranks info</a>, 
     • <a href="https://faq.cmi.support/rules">Create custom /rules</a>, 
     • <a href="https://faq.cmi.support/running">Running CMI</a>, 
     • <a href="https://faq.cmi.support/safety">Safety tips</a>, 
     • <a href="https://faq.cmi.support/specialized">Specialized commands info</a>, 
     • <a href="https://faq.cmi.support/toggle">Toggle example</a>, 
     • <a href="https://faq.cmi.support/trash">Trash example</a>, 
     • <a href="https://faq.cmi.support/votes">CMI Vote manager</a>,
     • <a href="https://faq.cmi.support/worth">Worth info</a>.
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
        <li>All my FAQ pages have been written for Spigot / Paper 1.19.x and CMI 9.5.x.x or newer.</li>
        <li>The mrfdev Github page is not an official resource, we're building up our knowledge base as a courtesy.</li>
        <li>I am an admin on the Zrips Discord, this does not mean what I share on here is official.</li>
    </ul>
</details>
</topMenu>

---

You can use CMI to make dynamic features using specialized commands and smartly using placeholders.

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI Worth Feature

### Commands and Permissions:
```
/cmi generateworth
-> cmi.command.generateworth - Auto generate possible item worth values

/cmi sell (all/blocks/hand/same/gui/material)
-> cmi.command.sell.[blocks/hand] - Allows to sell items not only from your hand
-> cmi.command.sell - Sell items from inventory

/cmi setenchantworth
-> cmi.command.setenchantworth - Change enchantment worth

/cmi setworth (itemname) -s:(sellPrice)
-> cmi.command.setworth - Change item worth

/cmi worth (all/blocks/hand/material)
-> cmi.command.worth - Check item worth

/cmi worthlist (playerName) (-missing)
-> cmi.command.worthlist - Check list of items with set sell prices
-> cmi.command.worthlist.others - Check list of items with set sell prices
```

### Placeholders:
```
%cmi_iteminhand_worth%
%cmi_iteminhand_worth_one%
%cmi_iteminhand_worthc%
%cmi_iteminhand_worthc_one%
%cmi_worth_buy_[itemIdName(:data)]%
%cmi_worth_sell_[itemIdName(:data)]%
%cmi_worthc_buy_[itemIdName(:data)]%
%cmi_worthc_sell_[itemIdName(:data)]%
```

Note: You can use /sell, /worth, etc as well by configuring the `Alias.yml` file.

You can check the [commands](https://www.zrips.net/cmi/commands) page and the [permissions](https://www.zrips.net/cmi/permissions) page to learn which commands and permissions along with them can be part of what you want out of the worth system you are trying to create.

### Players

Players can hold an item in their hand and walk up to a hologram created by you, which, if configured correctly, can show the item they're holding, the amount of that item, and how much it's worth based on the data from the worth.yml file of CMI.

Alternatively, they can hold the item and type /cmi worth, assuming you gave them permission to use it. Doing this command will print the item's value in the chat.

Optionally, if you've given players permission to use /cmi sell, they can also type /cmi sell gui to open up a GUI, where they can drop items inside of the GUI. The title of the GUI will show how much money they will receive prior to selling their items. The other option is to directly use a command that will say in chat how much they've earned.

### Server Owner

The server owner must give players the permissions to use /cmi worth, /cmi sell, etc.

You must go through the worth.yml file and edit the worth values to your liking. Optionally, you can use /cmi setworth to set the prices for items in-game.

Pro tip: If you have set the price for a base material, you can run `cmi generateworth` from the console. This will iterate through all the recipes of an item and calculate their sell prices.

Pro tip #2: Typing /cmi worthlist -missing in-game will open up a GUI showing all the items that do not yet have a worth value.

### Find Commands:
```
> cmi checkcommand worth
[INFO]: --------------------------------------------------
[INFO]: 1. generateworth
[INFO]: 2. setenchantworth
[INFO]: 3. worth (all/blocks/hand/material)
[INFO]: 4. setworth (itemname) -s:(sellPrice)
[INFO]: 5. worthlist (playerName)
> cmi checkcommand sell
[INFO]: --------------------------------------------------
[INFO]: 1. sell (all/blocks/hand/same/gui)
```

### Find Permissions:
```
> cmi checkperm worth
[INFO]: --------------------------------------------------
[INFO]: 1. cmi.command.generateworth - Auto generate posible item worth values
[INFO]: 2. cmi.command.worthlist - Check list of items with set sell prices
[INFO]: 3. cmi.command.worth - Check item worth
[INFO]: 4. cmi.command.setenchantworth - Change enchantment worth
[INFO]: 5. cmi.command.worthlist.others - Check list of items with set sell prices
---->When command is used on another player<----
Base command required
[INFO]: 6. cmi.command.setworth - Change item worth
> cmi checkperm sell
[INFO]: --------------------------------------------------
[INFO]: 1. cmi.command.sell.[blocks/all] - Allows to sell items not only from your hand
[INFO]: 2. cmi.command.worthlist - Check list of items with set sell prices
[INFO]: 3. cmi.command.sell - Sell items from inventory
```

## Sell Sign

https://www.youtube.com/watch?v=lK_Pr3h7Bag&list=PLAgWLDdkOWlq8pnYuzIVAl2doNg1vmDD_&index=6

Using CMI's Interactive Commands, Specialized Commands, combined with the sell feature, you can create a sign that players can click to sell whatever they're holding.

More info of an item shop here:

https://www.zrips.net/itemshop/

## Sell Hologram

You can also visually display what something is worth using a combination of features.

Here's an example I use on my servers. Note that the name of the world and the hologram location is specific to my server, and won't work on yours. You'd have to change this if you wish to copy and paste it to use on your own servers.
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
