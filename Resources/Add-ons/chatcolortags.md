# 1MB Add-on: CMI Chat Color Tag

Version 1.0.0, build 0.0.1
Made for Minecraft 1.16.5 with CMI 8.8.4.x or newer

This little add-on is to help you figure out how to create items with just CMI that you can give your players as a reward, perk, etc. that will let them change the color of their chat.

You can make this as complex as you want. Set it, forget about it. Or set it, and let it time out, etc. You could even use CMI to check against their group to make sure they are allowed to use that color, etc. However, this is the simplest version at this moment to help you get started.

## CMI as Chat Manager

This is made for CMI, using CMI CHAT as chat manager. You can use other chat managers, but I don't. So this is made for and tested with CMI as chat manager.

In config.yml of CMI, find the `chat:` section set enable it. Start the server. If you do `/cmi version` it should say chat: true. 

In the same chat section, go to `GroupFormat:` and set the amount of groups, more info about that here: <https://ptb.discord.com/channels/452792793631555594/526402563847880725/711599754714284216>

And in your permission manager (LuckPerms) make sure the appropriate groups have the appropriate permission. `cmi.chatgroup.[id]`

So for example if you have a group that should use their custom color when they pick one, change it from whatever it is:
i.e. 
`{prefix}&f{displayName}&f: &r{message}`
to
`{prefix}&f{displayName}&7: {#%cmi_user_meta_chatcolor%}{message}`

You see that right, we're inserting `{#%cmi_user_meta_chatcolor%}`

## CMI User Meta

Next, we want to set this user meta so we can use it.

Technically the command is like this:

`/cmi usermeta mrfloris add chatcolor 800036`

So when we use the placeholder `%cmi_user_meta_chatcolor%` that it gives us `800036` and that means when the player with that permission chats (of that group) the `{#%cmi_user_meta_chatcolor%}` turns into: `{#800036}` and that's a valid CMI Hex color that we can use. 

More about user meta, cmi placeholders, and cmi hex colors here:
<https://www.zrips.net/cmi/commands/user-meta/>
<https://www.zrips.net/cmi/placeholders/>
<https://www.zrips.net/cmi/hex-colors/>

## Putting it all together

Okay, finally, to put all these puzzle pieces together we can use CMI's Attached Commands feature, allowing us to bind a command to an item. An then you can give that item to your users via a kit or whatever.

More about cmi kits and cmi attached commands can be found here:
<https://www.zrips.net/cmi/commands/attached-commands/>
<https://www.zrips.net/cmi/commands/attached-commands/>

The benefit of a kit is that you can make an item with a custom name, lore, glow effect, add limited use to it, link it to a cmi aliaseditor custom but private command to check against group perms or more complex things, and put it all in a kit, that's private, and then give that kit through a GUIShop or BossShopPro menu, or some other reward system, crate, etc. 

Anyway, let's make the item. Get a NAMETAG in your inventory and hold it.

```
/cmi itemname {#blue}Blue
/cmi itemlore 1 Right click to chat in the color blue
/cmi enchant unbreaking 1
/cmi hideflags hide_enchants
/cmi attachcommand !cc!cmi usermeta [playerName] add chatcolor blue
```
You can also allow them to only use this tag once.
`/cmi attachcommand !limiteduse:1!;;!cc!cmi usermeta [playerName] add chatcolor blue`

Let's make another color:
```
/cmi itemname {#green}green
/cmi itemlore 1 Right click to chat in the color green
/cmi enchant unbreaking 1
/cmi hideflags hide_enchants
/cmi attachcommand !cc!cmi usermeta [playerName] add chatcolor green
```

You should now have 2 items, one called blue, one called green, and they're glowing, have a lore and should say item uses: 1

When used, it should update the usermeta and the item disappears.

And when you start chatting, your chat color should be different.


## Default colors

If they of course don't have a color set it will not parse and ends up as `{#}` and can show weird in the chat. You might wish to update a join event in eventcommands.yml from cmi to do something like this:
`check:%cmi_user_meta_chatcolor%==null! asConsole! cmi usermeta [playerName] add chatcolor white`
(so when they dont have a color, it sets it to white).

Oh and just to clarify; i use white blue green, and they are valid. But any valud hex value for Minecraft is valid here. Like fff000 and 8031b3 etc.
