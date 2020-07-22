# :star: 1MoreBlock.com CMI Add-on

## Placeholders

This is a `CustomText/` add-on made by Floris, for CMI 8.7.3.x or newer and Minecraft 1.16.1. 

1MB Placeholders allows a server owner to get access to an alternative `/cmi placeholders` overview. They will try to be organized for easier finding, some will repeat because of this. And I will try to include hoverover explanations for them. And clicking them should paste it to in-game chat for easy copying to clipboard.

A placeholder is super handy and can be used in CMI's hologram, portals, welcome message, in-game chat, prefixes, nameplates, tab list, custom alias commands, interactive commands, dynamic signs, etc. 

Using CMI's custom text feature `/cmi ctext` this allows us to make flexible, dynamic and interactive overview of placeholders that helps server owners, admin, staff, or even players if you wish to share it with them too. 

Final note: By default the permissions are set to true, and required to get added to the group(s). 

Okay, **let's get started**. Thank you for being interested in this little add-on.

Prequisites. Make sure your Spigot or Paper jar is up to date, as well as CMI. And of course back-up everything before making changes. 

## Download Instructions

Get the .txt file 

- (Add-on) [placeholders.txt](/Resources/Add-ons/placeholders.txt)

## Installation Instructions

Put the placeholders.txt file inside the `plugins/CMI/CustomText/` directory.

The next step is to either manually type the full command: `/cmi ctext placeholders` or make a custom alias command for it. If you want the last, you have two choices.

You can keep using `/cmi placeholders`, and get CMI's version, and then add `/placeholders` for this alternative version. If you want that, make sure to go to `Alias.yml` and set `/placeholders` to false. Then type: `/cmi aliaseditor new placeholders-asConsole! cmi ctext placeholders [playerName]`

Or, you can use your own named custom alias command, like `/showplaceholders`, then ignore the alias.yml step above, and type: `/cmi aliaseditor new showplaceholders-asConsole! cmi ctext placeholders [playerName]`

Optional step, you can now start adding the CMI custom alias emotes permissions to the appropriate groups.

Type /placeholders, or /cmi placeholders, or /showplaceholders, and see the difference. 

## Additional Information.

Basically every placeholder up to CMI version 8.7.3.0

In your console, type: `cmi placeholders`, to get a list of all 123 CMI placeholders.

You can in-game, type: `/cmi placeholders parse %placeholdername%` to test parsing of any placeholder available to CMI, this includes Placeholder API or MvdWPlaceholders API placeholders and/or their extentions (stuff from other plugins).

Documentation: <https://www.zrips.net/cmi/placeholders/>
