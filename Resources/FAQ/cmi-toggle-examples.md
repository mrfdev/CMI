## CMI Toggle Examples

CMI is flexible and dynamic enough that it can do fancy tricks. One of them is a way to allow you to toggle certain things. This page has some examples to demonstrate how you could learn from them and apply it to your edge case situation.

These should work on CMI 8 on Spigot 1.16.5, and on CMI 9 on Spigot 1.17.

### Toggle example 1

This one is provided by @dkalaxdk#2228

The example below uses a toggle, to allow you to toggle between two different modes.

Whether this two different ranks, or two different command modes for whatever need you may have.
```yaml
# First two lines adds the required meta values to the player, if they haven't been created before.
# This can also be done using an OnJoinEvent from eventcommands.

    # State is the current state of the toggle, The name means nothing, and can be replaced with whatever you want(Can also be the current rank of the user).
    # The toggle usermeta, has to be a meta data value.
    # It is recommended to only have one, and then use that for every command, to limit the amount of usermeta needed.
    - check:%cmi_user_meta_State%==null! asConsole! usermeta [playerName] add rp 1
    - check:%cmi_user_metaint_toggle%==null! asConsole! usermeta [playerName] add trp 0

    # The messages can be replaced with whatever command you want to run. (Either permissions change or something like that.)
    - check:%cmi_user_meta_State%==1! asConsole! msg [playerName] 1
    - check:%cmi_user_meta_State%==0! asConsole! msg [playerName] 0
    # The following contains the actual checks.
    # Firstly, it checks the current state, and depending on that, uses usermeta to decide whether or not the value should be toggled.
    - check:%cmi_user_meta_State%==1! asConsole! usermeta [playerName] add trp 1
    - check:%cmi_user_meta_toggle%==1! asConsole! usermeta [playerName] add temprp 0
    - check:%cmi_user_meta_toggle%==0! asConsole! usermeta [playerName] add temprp 1
    #Resets the toggle when done.
    - asConsole! usermeta [playerName] add trp 0
```

Using the user meta feature from cmi a temp value can be stored, and then checked against. Allowing you within the same command to manage this value, use it to achieve something unique, including a toggle.
