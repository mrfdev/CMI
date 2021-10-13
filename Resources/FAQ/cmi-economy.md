# FAQ - How can I use CMI for Economy?

<details><summary><strong>FAQ Menu</strong></summary>
 • <a href="https://faq.cmi.support/bungee">Bungeecord-Info</a>, 
 • <a href="https://faq.cmi.support/chance">Chance-Example</a>, 
 • <a href="https://faq.cmi.support/format">Chat-Format</a>, 
 • <a href="https://faq.cmi.support/chat">Chat-Manager</a>, 
 • <a href="https://faq.cmi.support/chatfilter">Chat-Filter</a>, 
 • <a href="https://faq.cmi.support/chatrooms">Chat-Rooms</a>, 
 • <a href="https://faq.cmi.support/commands">Commands-Manager</a>, 
 • <a href="https://faq.cmi.support/joinleave">Custom-Join-Leave</a>, 
 • <a href="https://faq.cmi.support/economy">Economy-Manager</a>, 
 • <a href="https://faq.cmi.support/ext-cmds">Extending-Commands</a>, 
 • <a href="https://faq.cmi.support/gettingstarted">Getting-Started</a>, 
 • <a href="https://faq.cmi.support/glow">Glow</a>, 
 • <a href="https://faq.cmi.support/help">Custom-Help</a>, 
 • <a href="https://faq.cmi.support/hexcolors">Hex-Colors</a>, 
 • <a href="https://faq.cmi.support/import">Importing-Data</a>, 
 • <a href="https://faq.cmi.support/library">CMILib</a>, 
 • <a href="https://faq.cmi.support/prefix">LuckPerms-Prefix</a>, 
 • <a href="https://faq.cmi.support/migrate">Migrate-Database</a>, 
 • <a href="https://faq.cmi.support/mode-stuck">Mode-Stuck</a>, 
 • <a href="https://faq.cmi.support/more-msg-cmds">More-Msg-Commands</a>, 
 • <a href="https://faq.cmi.support/motd">MOTD</a>, 
 • <a href="https://faq.cmi.support/params">Parameters</a>, 
 • <a href="https://faq.cmi.support/ranks">Ranks</a>, 
 • <a href="https://faq.cmi.support/rules">Custom-Rules</a>, 
 • <a href="https://faq.cmi.support/running">Running-CMI</a>, 
 • <a href="https://faq.cmi.support/safety">Safety-Tips</a>, 
 • <a href="https://faq.cmi.support/social">Social-Addon</a>, 
 • <a href="https://faq.cmi.support/specialized">Specialized-Cmds</a>, 
 • <a href="https://faq.cmi.support/toggle">Toggle-Example</a>, 
 • <a href="https://faq.cmi.support/trash">Trash</a>, 
 • <a href="https://faq.cmi.support/votes">Vote-Manager</a>.
</details>

<details><summary><strong>Official Zrips Links</strong></summary>
 • <a href="https://zrips.net/">Zrips Website</a> <pre>https://www.zrips.net/<br>The official website, wiki/documentation/information</pre>
 • <a href="https://discord.gg/dDMamN4">Zrips Discord</a> <pre>https://discord.gg/dDMamN4<br>The official Discord community, member-driven support</pre>
 • <a href="https://github.com/Zrips/">Zrips Github</a> <pre>https://github.com/Zrips<br>The place for bug reports and feature suggestions</pre>
</details>

<details><summary><strong>Prerequisites</strong></summary>
 • <a href="https://www.spigotmc.org/resources/3742/">Buy and Download CMI</a> (premium plugin) <pre>https://www.spigotmc.org/resources/3742/<br>Get the CMI plugin if you haven't already, and then Install it on all your servers</pre>
 • <a href="https://www.spigotmc.org/resources/87610/">Also Download CMILib</a> (free library) (<a href="https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md">more info</a>)<pre>https://www.spigotmc.org/resources/87610/<br>All Zrips plugins require the CMILib .jar file. Get it and also put it on all your servers.</pre>
 • All my FAQ pages have been written for Spigot / Paper 1.17.1 and CMI 9.0.4.x or newer.<br>
 • The mrfdev github page is not an official resource, we're sharing our knowledge as a courtesy.<br>
 • I am a team member on the Zrips Discord, this does not mean what I say is official.
</details>

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI can handle Economy

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

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Using the economy

Once your server starts up and the economy shows properly in `/cmi version`, you can start using commands such as
```
/cmi pay [playerName] [amount] (-s)
-> cmi.command.pay - Perform money transaction
-> cmi.command.paytoggle - Toggle payments from another player
-> cmi.command.paytoggle.others - Toggle payments from another player

/cmi money [pay/give/take/set] [playerName/all/alloffline] [amount][%rand/1-1000%][1%[min-max]][playerName]] (-s)
-> cmi.command.money - Manage money balance
-> cmi.command.money.betweenworldgroups - Allows money transfer between worlds
-> cmi.command.money.admin - Allows to manipulate player balance

/cmi baltop (playerName)
-> cmi.command.baltop - Check top money list
-> cmi.command.baltop.others - Check top money list

/cmi balance (playerName)
-> cmi.command.balance - Check money balance

/cmi cheque (playerName) [amount]
-> cmi.command.cheque - Convert money into cheque
-> cmi.command.cheque.withdraw - Allows to withdraw cheque balance when option in config file is enabled
-> cmi.command.cheque.admin - Allows to give out cheque with money amount directly to target player without requiring paper
```
TODO: include itemshop page, include worth.yml worth/sell and honorable mentino that cmi holograms can show top balances, and that hologram can be used to show worth and/or sell what they are holding.

Placeholders: (that you can consider using)
```
%cmi_user_balance_formatted%
%cmi_user_balance%
%cmi_user_toggle_[msg|pay|tp|compass|sospy|sispy|cospy|schest|autoflightrecharge|totem|shiftedit]%
%cmi_user_togglename_[msg|pay|tp|compass|sospy|sispy|cospy|schest|autoflightrecharge|totem|shiftedit]%
%cmi_iteminhand_worth%
%cmi_iteminhand_worth_one%
%cmi_baltop_name_[1-10]%
%cmi_baltop_money_[1-10]%
%cmi_baltop_shortmoney_[1-10]%
%cmi_worth_buy_[itemIdName(:data)]%
%cmi_worth_sell_[itemIdName(:data)]%
%vault_eco_balance_formatted%
... (and possibly some more)
```

Note: You can use /pay, /balance, etc as well by configuring `Alias.yml`.

You can check the commands page on zrips.net and the permissions page on zrips.net to learn which commands and permissions along with them can be part of what you want out of your economy. 

Other plugins can now use CMI's economy engine via hooking into vault to transfer and store money for players. 

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Importing money balances from other plugins.

It's possible to import the money balance from players from EssentialsX into CMI, other plugins are currently not supported. More information about importing data into CMI can be found [here](https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-import.md)

## FAQ

- How can I show money with the least or most detail? (shortmoney)

config.yml > search for `PaymentWithShorts`

- Can I log money transactions or sales from players? (moneylog)

config.yml > search for `LogEnabled`

- How can I change how money shows in game? (symbol, format, placement)

config.yml > search for: `CurrencySymbol: MoneyFormat: Placing:`

- Can I charge people for using commands? (yes)

edit file `commandCost.yml`

- I use bungeecord, does it sync over the network? (no)

Sorry, no, currently network syncing of the economy is not possible. 
(SpigotMC has a [plugin](https://www.spigotmc.org/resources/mysql-player-data-bridge.8117/) called MySQL Player-bridge data, which has CMI support for syncing some cmi-data, you can consider using this on top of cmi to achieve this)
More information about cmi + bungee can be found [here](https://faq.cmi.support/bungee)

---

You can find more information about the CMI plugin on the official site: [zrips.net/cmi](https://www.zrips.net/cmi/)
