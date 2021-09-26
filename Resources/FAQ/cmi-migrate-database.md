# FAQ - CMI Migrate database

Zrips Discord @ https://discord.gg/dDMamN4 

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Database migration

You can do this on CMI version 9.x on Spigot / Paper 1.17.1 and below.

This feature allows you to convert your CMI sqlite database to a MYSQL database.

Please note that this isn't an migration feature to convert you from other plugins' databases to CMI, and that if you have bungee that you really shouldn't not use the same database for all your instances.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Commands

```
> cmi checkcommand migrate
 --------------------------------------------------
 1. migratedatabase
```

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Permissions

```
> cmi checkperm migrate
 --------------------------------------------------
 1. cmi.command.migratedatabase - Changes database system and migrates all data
>
```

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Documentation

Not really existing, https://www.zrips.net/cmi/commands/

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Setup

CMI has a databaseinfo.yml file you have to edit to point to the mysql database. I recommend to stop the server, turn on maintenance mode, then edit the yml file and start the server. Do not log in. From console run the migration command and give it reasonable time to complete. When you believe it's done. Stop the server, check your mysql database to see if any cmi data is in there. If so then you can start your server again without maintenance mode. 

Side note: make a full back up of your server before making changes to it.

---

You can find more information about the CMI plugin on the official site: [zrips.net/cmi](https://www.zrips.net/cmi/)
