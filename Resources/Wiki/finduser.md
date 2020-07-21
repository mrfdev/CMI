# :star: 1MoreBlock.com CMI Add-on

## finduser

This is a `bash shell script` add-on made by Floris, for CMI 8.7.3.0 or newer and Minecraft 1.16.1. 

1MB finduser.sh allows a server owner from the Command Line Interface (CLI) on most Linux distros and macOS to quickly search through the CMI's sqlite database file to find one or more users matching a username string. Alternatively a UUID can be provided.

Note: This does not curently check against Mojang's API for uuid validation, etc. 

Final note: This is a shell script, not something you use in-game, and if you don't know what a shell script is .. to be honest .. I recommend against using it. 

Okay, **let's get started**. Thank you for being interested in this little add-on.

Prequisites. Make sure your Spigot or Paper jar is up to date, as well as CMI. And of course back-up everything before using a script. Invalid use of a script can potentially cause unforeseen issues.

## Download Instructions

Get the .sh file 

- (Add-on) [finduser.sh](/Resources/Scripts/finduser.sh) 

## Installation Instructions

Put the finduser.sh file inside the `plugins/CMI/` directory or any directory where you have the `cmi.sqlite.db` database file.

In order to be able to execute a shell script, you have to type: `chmod a+x finduser.sh`

That's it.  You should now be able to run `./finduser.sh`

## Usage Instructions.

Input is require, either (part of) a username, or the full UUID. 

If you try to run it, it should look like this:
```
$ ./finduser.sh
Syntax: ./finduser.sh <user|uuid> (error, missing argument)
$
```
If you try to run it with too many arguments or incorrectly, it will try to catch that and halt the script.
```
$ ./finduser.sh user mrfl search
Syntax: ./finduser.sh <user|uuid> (error, you had too many arguments)
$
```
If you give it a name, or a partial name, it will try to find names like it. So carefully read out the output. (Below you can see "floris" found "mrfloris" and no other users with floris in their name)
```
$ ./finduser.sh floris
631e3896-da2a-4077-974b-d047859d76bc|mrfloris
$
```
This is how it looks when it finds multiple matches.
```
$ ./finduser.sh boi
1594aa76-6ce0-46f6-90b2-83896a829db8|ImAVeryFatBoi
d4fe68d0-06c4-41b3-8f0a-f148752ac16f|TheLoliBoiii
73114a6a-7ac9-44a8-af02-227a6e6c3690|dominboiii
$
```
There might be a situation where you only have the UUID of a user, and want to know which user it belongs to in CMI's database. This is how.
```
$ ./finduser.sh f3d2c8fe-0789-4fdc-9164-ec193bd11cbb
f3d2c8fe-0789-4fdc-9164-ec193bd11cbb|Tidala
$
```

## Additional Information

CMI has a few 'dangerous' commands you can try to use to resolve player issues. Read up on their documentation properly before using them. And make sure you have a backup of course.

`cmi removeuser [uuid/duplicates]`
`cmi switchplayerdata [sourcePlayerName/uuid] [targetPlayerName/uuid]`

You can also lookup player skin, name, uuid on sites like <https://namemc.com/>