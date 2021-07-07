# FAQ - How do I configure CMI to use LuckPerms prefix in Chat and Tab?

Zrips Discord @ https://discord.gg/dDMamN4

**CMI can handle LuckPerms placeholders**, this is the recommended setup that works well with other plugins on Spigot / Paper 1.17.1 for server owners who want to use add a LuckPerms prefix to CMI Chat and/or CMI Tablist. 

- Buy and Install CMI (<https://www.spigotmc.org/resources/3742/>)
- Start using CMI as Chat Manager, if you were using something else.
 * https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-chat.md

- Install LuckPerms version 5.2.78 or newer for 1.16.5 (<https://www.spigotmc.org/resources/28140/>)

- Install PlaceholderAPI version 2.10.10-DEV-122 or newer for 1.16.5 (<https://www.spigotmc.org/resources/6245/>)

Before we get to the CMI part of things, let's explain this to help you get some overview:
> In order to get prefixes to show up in CMI, you need LuckPerms and PlaceholderAPI properly installed first. Also, you need to use CMI as chat manager. This way whatever LP placeholder is available to CMI through PAPI. 

So assuming you've got the above steps completed the next step is to check the LuckPerms wiki and learn to install the LP ecloud extention on PAPI, then reload PAPI, and then finally you can configure CMI chat to use these placeholders. 

- In console type (or as command in-game):
```
papi ecloud download LuckPerms
papi reload
```

- As per this page, the placeholder for the prefix is `%luckperms_prefix%`:
<https://github.com/lucko/LuckPerms/wiki/Placeholders>

- Next, you have to set the prefix for each group that you want to have one, you can do this from the console, in-game chat as a command, or through the `lp editor` web interface. However you desire to do so, you should end up with for example the VIP group to have this prefix, and the admin to have this other prefix:
```
prefix.14.&c(owner)
prefix.6.&6[VIP]
```
You can learn more about LuckPerms prefixes here: <https://github.com/lucko/LuckPerms/wiki/Prefixes,-Suffixes-&-Meta> 
Here's an example of how this looks and how you can test this:
```
> lp editor
[10:06:03 INFO]: [LP] Preparing a new editor session, please wait...
[10:06:03 INFO]: [LP] Click the link below to open the editor:
[10:06:03 INFO]: https://luckperms.net/editor/C0xRbDj9T1
> lp user mrfloris info
[10:08:27 INFO]: [LP] > User Info: mrfloris
[10:08:27 INFO]: [LP] - UUID: 631e3896-da2a-4077-974b-d047859d76bc
[10:08:27 INFO]: [LP]     (type: mojang)
[10:08:27 INFO]: [LP] - Status: Offline
[10:08:27 INFO]: [LP] - Parent Groups:
[10:08:27 INFO]: [LP]     > 1mb_owner
[10:08:27 INFO]: [LP] - Contextual Data: (mode: server)
[10:08:27 INFO]: [LP]     Contexts: None
[10:08:27 INFO]: [LP]     Prefix: ""
[10:08:27 INFO]: [LP]     Suffix: None
[10:08:27 INFO]: [LP]     Primary Group: 1mb_owner
[10:08:27 INFO]: [LP]     Meta: (weight=14) (primarygroup=1mb_owner)
> lp applyedits AgHNFd5TCt
[10:09:16 INFO]: [LP] Web editor data was applied to group 1mb_owner successfully.
[10:09:16 INFO]: [LP] (1 addition and 1 deletion)
[10:09:16 INFO]: +  prefix.14.&4(Owner) (true)
[10:09:16 INFO]: -  prefix.14.&4 (true)
> lp user mrfloris info
[10:09:21 INFO]: [LP] > User Info: mrfloris
[10:09:21 INFO]: [LP] - UUID: 631e3896-da2a-4077-974b-d047859d76bc
[10:09:21 INFO]: [LP]     (type: mojang)
[10:09:21 INFO]: [LP] - Status: Offline
[10:09:21 INFO]: [LP] - Parent Groups:
[10:09:21 INFO]: [LP]     > 1mb_owner
[10:09:21 INFO]: [LP] - Contextual Data: (mode: server)
[10:09:21 INFO]: [LP]     Contexts: None
[10:09:21 INFO]: [LP]     Prefix: "(Owner)"
[10:09:21 INFO]: [LP]     Suffix: None
[10:09:21 INFO]: [LP]     Primary Group: 1mb_owner
[10:09:21 INFO]: [LP]     Meta: (weight=14) (primarygroup=1mb_owner)
>
```
(note, this is just a visual example, those aren't command instructions, I hope that's clear)

- You should be done now with PAPI and LP, after adding all the prefixes, weights, meta info, etc. 

- Go in-game and type: `/cmi placeholders parse %luckperms_prefix%`

If you for example are in that admin group that has this prefix set up, you can now see it should reply (owner) or VIP. This means CMI can see the LuckPerms placeholders correctly. You can now use it in CMI Chat and/or CMI Tablist.

- For CMI Chat, open `config.yml` and find `GroupFormat:`, at the `%luckperms_prefix%` at the appropriate place for the right groups.

- Restart the server, and start typing, it should show up now.

- For CMI Tablist, open `Modules.yml` and find `tablist: true` make sure it's set to true. 

- Then go to `tablist.yml` and find `GroupFormat:` and go through the `PlayerName:` parts and add the `%luckperms_prefix%` at the appropriate place for the right groups.

- Restart the server, and press tab, it should show up now.

**[TEMPORARY NOTE: Yes,this works on cmi 9 and mc 1.17 as well - will rewrite this when cmi 9 and 1.17 is more stable**

More information about CMI: https://www.zrips.net/cmi/
