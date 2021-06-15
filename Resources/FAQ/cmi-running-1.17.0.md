# Running CMI on Spigot 1.17.0

This page should help explain what I personally think is the way to run CMI 9 on Spigot 1.17.0, at least until CMI 9 and Minecraft 1.17 are stable enough.

## Note ahead.

- This is about CMI 9 and Spigot server version 1.17.0, this is not about 1.16.5. That's a different document. Nor is this about CMI and Paper 1.17.x
- CMI version 8.8.5.0 is considered the Stable version you can run on a live production environment. You can not use this on 1.17, use CMI 9.
- CMI version 9.0.0.0 is considered the Beta version you can run on a test environment. It is probably best right now to not run it live.
- CMI Lib version 1.0.0.2 will automatically be replaced by version 1.0.1.0. This is okay. You can use 1.0.1.0 with both 8.8.5.0 on 1.16.5 and 9.0.0.0 on 1.17.0
- Zrips' libraries and other resources are linked below.

### Backup

- First, I strongly recommend before making any changes to your live server to take it offline with /stop and make a complete backup of the full directory, do not forget to backup your MySQL databases if you use any. 
- Why? Because if you have a problem installing or upgrading CMI 9 you can use the backup to go back to the version that did work.
- Why? Because it also is a great moment to clone your live server and test things first before doing a big upgrade in the (near) future.

### Test setup

- Before you actually update your live server it's recommended to have a test instance you can try stuff out on. This way you can detect issues and concerns early and learn to address those. Without risking your live server. especially while CMI 9 is in Beta, and Minecraft 1.17 is still unstable.
- If this testing takes hours and days and you have new live data because players keep playing, obviously take the live server offline and backup again, before making the final changes.

### Before we start to install and/or upgrade CMI 9 to the latest available beta setup

- /stop your server. Do the backup thing, and make a test server.

- Go to SpigotMC and buy CMI if you haven't yet. And use BuildTools.jar from SpigotMC to build the latest version of Spigot 1.17.0, and get the latest beta build of CMI 9, which is 9.0.0.0, here is the link: <https://www.spigotmc.org/resources/cmi-298-commands-insane-kits-portals-essentials-economy-mysql-sqlite-much-more.3742/download?version=403428>

- If you are not yet running CMI Lib 1.0.0.2 or 1.0.1.0 then it will automatically download it. If this isn't the case due to firewalls or whatever reason, you can also manually download CMI Lib 1.0.1.0 here: <https://www.spigotmc.org/resources/cmilib.87610/download?version=403421>

- Now that we have the latest files and are installing or upgrading from an older version to a new version, and we have a backup. It's time to replace any existing jars.

### First time Installalation

If you already are running CMI, you can skip this and go straight to Upgrading (see below).

- Put the downloaded CMI `.jar` (9.0.0.0) in the plugins/ directory. 

- Start the server and let it complete loading.

- Keep an eye on the console, the latest.log will also have all the details. If something goes wrong, take note. And try to figure out what is up and try again. 

- Since this an early beta, you can spot any bugs, confirm them, and report them to zrip's Github repository for CMI as a new issue.

- When the server has started, CMI will automatically download languages, CMI Lib 1.0.1.0 and you're ready to Finish (see below)

### Upgrading CMI

If you are installing it for the first time, go to the Installing steps above and skip the upgrading steps.

- Keep the existing `plugins/CMI/` folder, do not delete it.

- Keep the existing `plugins/CMILibs/` folder, do not delete it.

- If you don't have the cmilibs folder, don't worry, CMI will create it for you.

- If you have the old CMI Lib version 1.0.0.2 installed, don't worry, CMI will auto-upgrade it, and we will clean up after.

- Remove the old CMI `.jar` you're using from the plugins/ directory. It is okay, you should by now have a copy of it in the backup anyway. 

- Personally I would wait until we're done shutting down the server at the end, before removing the old cmi lib jar. 

- Put the downloaded CMI `.jar` (9.0.0.0) in the plugins/ directory. 

- Start the server and let it complete loading.

- Keep an eye on the console, the latest.log will also have all the details. If something goes wrong, take note. And try to figure out what is up and try again.

- When the server has started, CMI will automatically download languages, CMI Lib 1.0.1.0 and you're ready to Finish (see below)

- If your plugins/ directory has the old CMI Lib `.jar` version 1.0.0.2, it is okay to remove it now. Keep the new 1.0.1.0 jar of course.

### Finishing up.

Okay, you've backed everything up, you've made a test setup, and you've either fresh installed or upgraded CMI. Just one more thing before you can play with this test setup.

- This test setup has to /stop, shut it down to restart it.

- And now you can start it again. Keep an eye on the console (or latest.log) again and make sure there's no weird errors. if there are, address them. If you think you spotted a bug, report it.

- Once the server has finished, it has completed the import of languages, loading of all the data, and convert of locale files (a lot of the phrases are global, and global phrases will end up in `plugins/CMILib/Translations/`.

And that's it! You're done.

What a list huh, okay, let's simplify this:

#### TLDR; Summery

- Stop the server, back it up, use buildtools.jar from spigotmc to make the latest Spigot 1.17 jar. Remove the old CMI jar if you have it, put new 9.0.0.0 jar there, start the server, then /stop it again, remove cmilib 1.0.0.2 jar, and start the server again. You're done! if the test goes well, upgrade your live server.

#### What about 1.16.5?

That's a different page with different instructions. 

#### Resources

SpigotMC's Buildtools.jar can be found here <https://hub.spigotmc.org/jenkins/job/BuildTools/>

These are for CMI 8.x and CMI 9.x:
`CMI Vault` Economy-compile for best results
<http://www.zrips.net/wp-content/uploads/2020/07/Vault-1.7.3.jar>

`CMI Injector` Use your own Vault? Use this economy injector
<http://www.zrips.net/wp-content/uploads/2020/07/CMIEInjector1.0.2.3.jar>

`CMI Bungee` Basic bungee chat support
<http://www.zrips.net/wp-content/uploads/2020/02/CMIB1.0.0.4.jar>

`CMI Library` Base Library 
<https://www.spigotmc.org/resources/cmilib.87610/>
