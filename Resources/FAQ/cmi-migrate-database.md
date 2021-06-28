# FAQ - CMI Migrate database

Zrips Discord @ https://discord.gg/dDMamN4 

## Database migration

You can do this on CMI 8.8.5.0 on Spigot / Paper 1.16.5, or on CMI 9.x on Spigot / Paper 1.17.0.

This feature allows you to convert your CMI sqlite database to a MYSQL database.

Please note that this isn't an migration feature to convert you from other plugins' databases to CMI, and that if you have bungee that you really shouldn't not use the same database for all your instances.

### Commands

```
> cmi checkcommand migrate
 --------------------------------------------------
 1. migratedatabase
```

### Permissions

```
> cmi checkperm migrate
 --------------------------------------------------
 1. cmi.command.migratedatabase - Changes database system and migrates all data
>
```

### Documentation

Not really existing, https://www.zrips.net/cmi/commands/

### Setup

CMI has a databaseinfo.yml file you have to edit to point to the mysql database. I recommend to stop the server, turn on maintenance mode, then edit the yml file and start the server. Do not log in. From console run the migration command and give it reasonable time to complete. When you believe it's done. Stop the server, check your mysql database to see if any cmi data is in there. If so then you can start your server again without maintenance mode. 

Side note: make a full back up of your server before making changes to it.

More information about CMI: https://www.zrips.net/cmi/
