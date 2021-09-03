# FAQ - CMI Library

Zrips Discord @ https://discord.gg/dDMamN4

This page is a quick introduction to the CMI Library. 

## What is CMI Library (cmilib)

It's a plugin helper that can deal with frequently used phrases, hex colors, etc. which all of zrips' plugins can use. This adds consistancy among the various plugins.

You can see the CMI Lib page here: <https://www.zrips.net/cmilib/>
You can find the CMI LIb download here: <https://www.spigotmc.org/resources/cmilib.87610/>

## Which plugins use this?

The full list as of September 3rd, 2021

- CMI version 9.0.2.10
- Selection Visualizer version 3.0.5.0
- TryMe version 7.0.0.1
- Mob Farm Manager version 2.0.0.1
- Residence version 5.0.0.2
- Jobs-Reborn version 5.0.0.6
- BottledExp version 3.0.0.1
- ReCount version 3.5.0
- TradeMe version 6.1.0.2

These currently support Spigot-, and Paper 1.17.1 and lower, and require the CMI Lib version 1.0.3.7 or newer to properly operate.

## How do I get it?

Upon starting of any of these listed plugins it will try to automatically download it. If this fails, it will let you know where you can download the library .jar file from.

## I have to restart

Yes, the first time a plugin or cmi lib has loaded and converted any data. It's ready to be used after a server restart.

## Backing up and testing?

Yep, I strongly recommend to always back up you whole server before making changes, such as plugin updates. Test the upgrade with CMI Lib first. If it fails you can at least roll back to your back up like nothing happened.

## Mismatching versions!

OMG, I had CMI with Lib 1.0.0.2
Then TryMe with Lib 1.0.1.0
And now Residcen with Lib 1.0.2.3

Don't panic, the latest version can be used by all the plugins. Once you're ready for that final restart, before you start it up, keep the latest, and delete older versions.

From CMI Library version 1.0.2.4 onwards it should automatically clean-up older lib jars. If it does not, you can stop the server, manually remove the older jars and start the server again.

## I keep deleting this CMI Lib jar and it keeps coming back!

Yes, Zrips plugins require the latest CMI Lib to properly work, you need it, don't delete it.

More information about CMILib: https://www.zrips.net/cmilib/
