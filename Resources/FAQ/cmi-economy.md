# FAQ - How can I use CMI for Economy?

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
        <li>All my FAQ pages have been written for Spigot / Paper 1.19 and CMI 9.2.0.x or newer.</li>
        <li>The mrfdev github page is not an official resource, we're building up our knowledge base as a courtesy.</li>
        <li>I am an admin on the Zrips Discord, this does not mean what I share on here is official.</li>
    </ul>
</details>
</topMenu>

---

This article also has a video available. <https://youtu.be/zX_ddc24Mso>

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI can handle Economy

- Download and Install CMI's Vault build (<https://www.zrips.net/wp-content/uploads/2020/07/Vault-1.7.3.jar>)
- Note: If you wish to use the original Vault build, then please get the CMI Economy Injector (.jar) <https://www.zrips.net/wp-content/uploads/2020/07/CMIEInjector1.0.2.3.jar>)
- Update the `config.yml` (see below)
-
```yaml
Economy:
  # Enable or disable CMI economy in general
  # In case CMIInjector is present, then this will be set to true automatically.
  # Attention! For economy to work properly with other plugins you will need ether an injector or recompiled Vault version. 
  # You can find both option at top of plugins page
  # ATTENTION! If you disabled CMI economy while server was running, you will need to perform full server restart for this to take correct effect and avoid any issues while getting players balances
  Enabled: true
```

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly.

### PLEASE NOTE: Everything above this point is enough to use CMI as an Economy engine. Everything below this point is additional information to help you customize and use the economy features for your server.

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Using the economy

Once your server starts up and the economy shows properly in `/cmi version`, you can start using commands such as

### Commands and permissions:
```
/cmi balance (playerName)
-> cmi.command.balance.others - Check money balance
-> cmi.command.balance - Check money balance

/cmi baltop (playerName)
-> cmi.command.baltop - Check top money list
-> cmi.command.baltop.others - Check top money list

/cmi cheque (playerName) [amount]
-> cmi.command.cheque - Convert money into cheque
-> cmi.command.cheque.withdraw - Allows to withdraw cheque balance when option in config file is enabled
-> cmi.command.cheque.admin - Allows to give out cheque with money amount directly to target player without requiring paper

/cmi money [pay/give/take/set] [playerName/all/alloffline] [amount][%rand/1-1000%][1%[min-max]][playerName]] (-s)
-> cmi.command.money - Manage money balance
-> cmi.command.money.betweenworldgroups - Allows money transfer between worlds
-> cmi.command.money.admin - Allows to manipulate player balance

/cmi options (playerName) (option) (enable/disable/toggle/status) (-s)
-> cmi.command.options.[visibleholograms/shiftsignedit/totembossbar/bassbarcompass/tagsound/chatspy/cmdspy/signspy/acceptingpm/acceptingtpa/acceptingmoney] - Allows to modify specific options
-> cmi.command.options.others - Modify personal options
-> cmi.command.options - Modify personal options

/cmi pay [playerName] [amount] (-s)
-> cmi.command.pay - Perform money transaction

Other commands related to CMI Economy can be the CMI Worth and CMI Sell features:
/cmi sell (all/blocks/hand/same/gui)
-> cmi.command.sell.[blocks/all] - Allows to sell items not only from your hand
-> cmi.command.sell - Sell items from inventory

/cmi worth (all/blocks/hand/materialName)
-> cmi.command.worth - Check item worth

/cmi worthlist (playerName) (-missing)
-> cmi.command.worthlist - Check list of items with set sell prices
-> cmi.command.worthlist.others - Check list of items with set sell prices
```

### Placeholders: (that you can consider using)
```
%cmi_user_balance_formatted%
%cmi_user_balance%
%cmi_user_toggle_[msg|pay|tp|compass|sospy|sispy|cospy|schest|autoflightrecharge|totem|shiftedit]%
%cmi_user_togglename_[msg|pay|tp|compass|sospy|sispy|cospy|schest|autoflightrecharge|totem|shiftedit]%
%cmi_iteminhand_worth%
%cmi_iteminhand_worth_one%
%cmi_iteminhand_worthc%
%cmi_iteminhand_worthc_one%
%cmi_baltop_name_[1-10]%
%cmi_baltop_money_[1-10]%
%cmi_baltop_shortmoney_[1-10]%
%cmi_worth_buy_[itemIdName(:data)]%
%cmi_worth_sell_[itemIdName(:data)]%
%cmi_worthc_buy_[itemIdName(:data)]%
%cmi_worthc_sell_[itemIdName(:data)]%
%vault_eco_balance_formatted%
... (and possibly some more)
```

Note: You can use /pay, /balance, etc as well by configuring the `Alias.yml` file.

You can check the [commands](https://www.zrips.net/cmi/commands/) page and the [permissions](https://www.zrips.net/cmi/permissions/) page to learn which commands and permissions along with them can be part of what you want out of your economy. 

Other plugins can now use CMI's Economy engine by hooking into Vault to transfer and store money for players. 

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Chest Shop / Item Shop / Shop Chest / Admin Shop

It is a bit out of the scope of the CMI plugin to have player shops, admin shops and such, but using CMI's existing features, they dp allow you to do quite a few things that get very close. Personally I still recommend using a dedicated plugin on top of CMI for fully fledged player shops and chest shops. But, that being said, CMI is dynamic, modern, and flexible enough to get pretty far. And maybe it can do just what you're looking for. 

Here's an example of using CMI as an item shop: https://www.zrips.net/itemshop/

Using CMI's Holograms, Specialized Commands and Interactive Commands, combined with various commands, the sell feature and the CMI Economy engine, you can have players click on holograms to sell what they're holding. You can even make a block, sign or NPC that can execute commands, give items, take money, or give kits by left/right clicking them.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Player's Balance or Top Player Balances in Holograms.

### Player's Balance in Holograms.

You can use /cmi hologram to create a new hologram that shows some placeholders that are personal to the player, for example their balance. Check the [Holograms](https://www.zrips.net/cmi/holograms/) page to learn more about how to use the Holograms in CMI. See the above list of placeholders to learn which placeholders you can use to display the balance of the player.

### Top Player Balances in Holograms.

The same as above, but using dynamic placeholders from CMI that can display the top 3 balances on the server. 
```yaml
1. %cmi_baltop_name_1% - %cmi_baltop_money_1%
2. %cmi_baltop_name_2% - %cmi_baltop_money_2%
3. %cmi_baltop_name_3% - %cmi_baltop_money_3%
```
Hopefully this gives you an indication what is possible utilizing all the CMI features one way or another to make a custom server experience for your players.

### Using Worth and Sell in Holograms.

And finally, another example that combines multiple CMI features. You can use a hologram to run commands and to display dynamic placeholders. Using CMI's Worth and Sell features, you can, for example, display what the player is holding, and say how much of that item they're holding, and how much it's worth if they were to sell it. You can also add a command to a hologram that when they right click the hologram it will sell what they're holding, and the money goes to their balance.

Here's an example I use on my servers. Note that the name of the world and the hologram location is specific to my server, and won't work on yours. You'd have to change this if you wish to copy and paste it to use on your own servers.
```yaml
Worth:
  Loc: world_wild;500.00;65.00;500.00
  Interval: 0.3
  Range: 6
  RangeExtra: 6
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
  Note: This is from my `holograms.yml` file. 

## CMI Worth and Sell Features

The CMI plugin also lets you define what an item is worth. There are in-game commands to manage this, and there's even a GUI with items that have no value defined, making managing this a lot easier. But you can also manually customize the `worth.yml` file yourself. 

If you give your players access to `/cmi sell` then what they're holding is either worthless (and won't sell) or it's worth what you've defined. 

Please note that if CMI can figure out how to craft an item, it can calculate the worth with a bonus percentage. So if you define how much an `iron_ingot` or `stone` is worth, you can ask it to automatically calculate what things crafted with stone or an iron ingot could be worth, saving you even more time.

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

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Importing Balances From Other Plugins.

It's possible to import player balances from EssentialsX to CMI. Other plugins are currently not supported. More information about importing data into CMI can be found [here](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-import.md).

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> FAQ

- How can I show money with the least or most detail?

config.yml > search for `PaymentWithShorts:`
```yaml
  PaymentWithShorts:
    # When set to true players will be able to make payments by using short amount formats like 10k which results into 10000 and similar
    # In addition 10.2k will result into 10200
    Allow: true
    # List of suffixes we should accept and into what amount it results into
    # Only one letter is acceptable when defining suffix
    values:
    - k-1000
    - m-1000000
```
The above are the values that I use on my servers, and are not the default values.

- Can I log money transactions or sales from players?

config.yml > search for `LogEnabled:`
```yaml
  # Set to true if you want to log money transfers between players
  LogEnabled: true
  log:
    Unknown: true
    Transfer: true
```
There's also the option to log /cmi sell transactions under `Optimizations:`
```yaml
  # Do you want to record sell hand actions into file
  SellLog: true
```

- How can I change how money shows in game?

config.yml > search for: `CurrencySymbol:`, `MoneyFormat:` or `Placing:` under `Global:`
```yaml
    # Currency symbol to be used when showing balance or similar
    CurrencySymbol: $
    # Format used for displaying money
    MoneyFormat: '###,##0.00'
```
Additionally, the following is available:
```yaml
    # Placing of currency symbol
    Placing: '[symbol][money]'
```
The above are the values that I use on my servers, and are not the default values.

- Can I charge people for using commands?

Edit the `commandCost.yml` file.
My pro tip is to read the comments at the top of the file carefully. Using a space or an alias can have a big influence.

- I use BungeeCord, does it sync over the network?

Synchronizing money across a BungeeCord network is not current possible. 
However, there is a [plugin](https://www.spigotmc.org/resources/mysql-player-data-bridge.8117/) called MySQLPlayerDataBridge, which supports synchronizing some of CMI's data across a BungeeCord network. You can consider using this plugin on top of CMI in order to synchronize data over your BungeeCord network.
More information about CMI and BungeeCord can be found [here](https://faq.cmi.support/bungee).

---

You can find more information about the CMI plugin on the official site: [zrips.net/cmi](https://www.zrips.net/cmi/)
