# FAQ - Running CMI on Spigot / Paper 1.17.1

Zrips Discord @ https://discord.gg/dDMamN4

This page should help explain what I personally think is the way to run CMI 9 on Spigot-, and Paper 1.17.1.

<img width="443" alt="paper-1 17 1-cmi-9 0 2 1-cmilib-1 0 3 1" src="https://user-images.githubusercontent.com/28841349/127254810-fc64c781-e7b1-4a69-890e-a9af8d7750c9.png">

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Note ahead.

- This is about CMI 9 and Spigot or Paper server version 1.17.1 mainly, apply to 1.16.5 and other lower versions accordingly.
- CMI version 9.0.2.1 is considered the Stable version you can run on a live production environment. It is stable enough for 1.17.1, if you want to run it live that's fine. But backup your data and test things first!
- CMI Lib version 1.0.3.1 or older will automatically download. It will replace older CMI Lib jars. This is okay.
- Zrips' libraries and other resources are linked below.

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Backup

- First, I strongly recommend before making any changes to your live server to take it offline with /stop and make a complete backup of the full directory, do not forget to backup your MySQL databases if you use any. 

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Test setup

- Before you actually update your live server it's recommended to have a test instance you can try stuff out on. This way you can detect issues and concerns early and learn to address those. Without risking your live server. especially while CMI 9 is in beta, and Minecraft 1.17 is still unstable.
- If this testing takes hours and days and you have new live data because players keep playing, obviously take the live server offline and backup again, before making the final changes.

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Before we start to install and/or upgrade CMI 9

- /stop your server. Do the backup thing, and make a test server.

- Go to SpigotMC and buy CMI if you haven't yet. And use BuildTools.jar from SpigotMC to build the latest version of Spigot 1.17.0 or download Paper 1.17 from their site, and get the latest release of CMI 9, here is the link: <https://www.spigotmc.org/resources/3742/>

- If you are not yet running CMI Lib then it will automatically download it. If this isn't the case due to firewalls or whatever reason, you can also manually download it here: <https://www.spigotmc.org/resources/87610/>

- Now that we have the latest files and are installing or upgrading from an older version to a new version, and we have a backup. It's time to replace any existing jars.

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> First time Installalation

If you already are running CMI, you can skip this and go straight to Upgrading (see below).

- Put the downloaded CMI `.jar` in the plugins/ directory. 

- Start the server and let it complete loading.

- Keep an eye on the console, the `latest.log` will also have all the details. If something goes wrong, take note. And try to figure out what is up and try again. 

- If you spot any bugs, confirm them, and report them to Zrip's Github as a new issue.

- When the server has started, CMI will automatically download languages, CMI Lib and you're ready to **Finish** (see below)

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Upgrading CMI

If you are installing it for the first time, go to the Installing steps above and skip the upgrading steps.

- Keep the existing `plugins/CMI/` folder, do not delete it.

- Keep the existing `plugins/CMILib/` folder, do not delete it.

- If you don't have the cmilib folder, don't worry, CMI will create it for you.

- If you have the old CMI Lib version, don't worry, CMI will auto-upgrade it, and we will clean up after.

- Remove the old CMI `.jar` you're using from the plugins/ directory. 

- Put the freshly downloaded CMI `.jar` in the plugins/ directory. 

- Start the server and let it complete loading.

- Keep an eye on the console, the `latest.log` will also have all the details. If something goes wrong, take note. And try to figure out what is up and try again.

- When the server has started, CMI will automatically download languages, CMI Lib and you're ready to **Finish** (see below)

- If your plugins/ directory has the old CMI Lib `.jar` files, it is okay to remove them now. Keep the new .jar of course.

### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Finishing up.

Okay, you've backed everything up, you've made a test setup, and you've either fresh installed or upgraded CMI. Just one more thing before you can play with this test setup that is now running.

- This test setup has to /stop and restart once. This way any new languages, converted data, and updated libraries can be put to use.

- And now you can start it again. Keep an eye on the console (or `latest.log`) again and make sure there's no weird errors.

And that's it! You're done.

What a list huh, okay, now you have experience, you have tested, and you can do it again: but on the live server! Have fun with CMI.

#### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> What about 1.16.5?

That's a different page with different instructions:
<https://github.com/mrfdev/CMI/blob/master/Resources/FAQ/cmi-running-1.16.5.md>

#### <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Resources

SpigotMC's Buildtools.jar can be found here <https://hub.spigotmc.org/jenkins/job/BuildTools/>

These are for CMI 9.x:
`CMI Vault` Economy-compile for best results
<http://www.zrips.net/wp-content/uploads/2020/07/Vault-1.7.3.jar>

`CMI Injector` Use your own Vault? Use this economy injector
<http://www.zrips.net/wp-content/uploads/2020/07/CMIEInjector1.0.2.3.jar>

`CMI Bungee` Basic bungee chat support
<http://www.zrips.net/wp-content/uploads/2020/02/CMIB1.0.0.4.jar>

`CMI Library` Base Library 
<https://www.spigotmc.org/resources/cmilib.87610/>

`Spigot website` This is where you can get buildtools and make a spigot 1.17.1 jar
<https://hub.spigotmc.org/jenkins/job/BuildTools/>

`Paper website` This is where you can get Paper's 1.17.1 jar
<https://papermc.io/downloads>

More information about CMI: https://www.zrips.net/cmi/
