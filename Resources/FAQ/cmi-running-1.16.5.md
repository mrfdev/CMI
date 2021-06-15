# Running CMI on 1.16.5

This page should help explain what I personally think is the way to run CMI 8 on Minecraft 1.16.5, at least until CMI 9 and Minecraft 1.17 are stable enough.

## Note ahead.

- This is about CMI 8 and server version 1.16.5, this is not about 1.17. That's a different document.
- CMI version 8.8.5.0 is considered the Stable version you can run on a live production environment.
- CMI Lib version 1.0.0.2 will automatically be replaced by version 1.0.1.0. This is okay.

### Backup

- First, I strongly recommend before making any changes to your live server to take it offline with /stop and make a complete backup of the full directory, do not forget to backup your MySQL databases if you use any. 
- Why? Because if you have a problem installing or upgrading CMI 8 you can use the backup to go back to the version that did work.
- Why? Because it also is a great moment to clone your live server and test things first.

### Test setup

- Before you actually update your live server it's recommended to have a test instance you can try stuff out on. This way you can detect issues and concerns early and learn to address those. Without risking your live server.
- If this testing takes hours and days and you have new live data because players keep playing, obviously take the live server offline and backup again, before making the final changes.

### Before we start to install and/or upgrade CMI 8 to the latest stable setup

- /stop your server. Do the backup thing, and make a test server.

- Go to SpigotMC and buy CMI if you haven't yet. And download the latest version of Minecraft 1.16.5, which is CMI version 8, especially 8.8.5.0, here is the link: <https://www.spigotmc.org/resources/cmi-298-commands-insane-kits-portals-essentials-economy-mysql-sqlite-much-more.3742/download?version=402353>

- If you are not yet running CMI Lib 1.0.0.2 or 1.0.1.0 then it will automatically download it. If this isn't the case due to firewalls or whatever reason, you can also manually download CMI Lib 1.0.1.0 here: <https://www.spigotmc.org/resources/cmilib.87610/download?version=403421>

- Now that we have the latest files and are upgrading from an older version to a new version, and we have a backup. It's time to replace the existing jar.

### First time Installalation

If you already are running CMI, you can skip this and go straight to Upgrading (see below).

- Put the downloaded CMI `.jar` (8.8.5.0) in the plugins/ directory. 

- Start the server and let it complete loading.

- Keep an eye on the console, the latest.log will also have all the details. If something goes wrong, take note. And try to figure out what is up and try again.

- When the server has started, CMI will automatically download languages, CMI Lib 1.0.1.0 and you're ready to Finish (see below)

### Upgrading CMI

If you are installing it for the first time, go to the Installing steps above and skip the upgrading steps.

- Keep the existing `plugins/CMI/` folder, do not delete it.

- Keep the existing `plugins/CMILibs/` folder, do not delete it.

- If you don't have the cmilibs folder, don't worry, CMI will create it for you.

- If you have the old CMI Lib version 1.0.0.2 installed, don't worry, CMI will auto-upgrade it, and we will clean up after.

- Remove the old CMI `.jar` you're using from the plugins/ directory. It is okay, you should by now have a copy of it in the backup anyway. 

- Personally I would wait until we're done shutting down the server at the end, before removing the old cmi lib jar. 

- Put the downloaded CMI `.jar` (8.8.5.0) in the plugins/ directory. 

- Start the server and let it complete loading.

- Keep an eye on the console, the latest.log will also have all the details. If something goes wrong, take note. And try to figure out what is up and try again.

- When the server has started, CMI will automatically download languages, CMI Lib 1.0.1.0 and you're ready to Finish (see below)

- If your plugins/ directory has the old CMI Lib `.jar` version 1.0.0.2, it is okay to remove it now. Keep the new 1.0.1.0 jar of course.

### Finishing up.

Okay, you've backed everything up, you've made a test setup, and you've either fresh installed or upgraded CMI. Just one more thing before we can go live.

- This test (or live server) has to /stop, shut it down. 

- And now you can start it again. Keep an eye on the console (or latest.log) again and make sure there's no weird errors. if there are, address them.

- Once the server has finished, it has completed the import of languages, loading of all the data, and convert of locale files (a lot of the phrases are global, and global phrases will end up in `plugins/CMILib/Translations/`.

And that's it! You're done.

What a list huh, okay, let's simplify this:

#### TLDR; Summery

- Stop the server, back it up, remove old jar, put new 8.8.5.0 jar there, start the server, then /stop it again, remove cmilib 1.0.0.2 jar, and start the server again. You're done! if the test goes well, upgrade your live server.

#### What about 1.17?

That's a different page with different instructions. 
