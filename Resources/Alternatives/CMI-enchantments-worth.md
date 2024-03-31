# Custom 'default' list for worth.yml
This shouldn't be a copy paste to use, this is an example for you to reference.

## Contribute
Please clone and make a pull request if you notice any missing enchantments, grammar/spelling or other issues. 
We're looking to complete this list, sort it on importannce and help the community generate at least a list of "i think mending should sell for more than unbreaking 2". 
At this point I have no idea how to approach this, so my first version, first build, is just going to be a collection of the currently available 39 Minecraft enchantments for Java Edition.

## Setting worth value for enchantments in CMI
You can use the `/cmi setworth` in-game to set the worth of an enchantment with CMI.

## List of available enchantments
PLEASE NOTE: This list should be sorted on highest value / importance, so server owners can offer a balanced set of sell options for the enchantments.

PLEASE NOTE: I am very much so open to contributions. Please clone this page and make a pull request with your suggestions, however, do include why you make the suggestion. Just 'i think it is worth more' is not really helping.

```yaml
ARROW_DAMAGE
Provides extra damage when shooting arrows from bows

ARROW_FIRE
Sets entities on fire when hit by arrows shot from a bow

ARROW_INFINITE
Provides infinite arrows when shooting a bow

ARROW_KNOCKBACK
Provides a knockback when an entity is hit by an arrow from a bow

BINDING_CURSE
Item cannot be removed

CHANNELING
Strikes lightning when a mob is hit with a trident if conditions are stormy

DAMAGE_ALL
Increases damage against all targets

DAMAGE_ARTHROPODS
Increases damage against arthropod targets

DAMAGE_UNDEAD
Increases damage against undead targets

DEPTH_STRIDER
Increases walking speed while in water

DIG_SPEED
Increases the rate at which you mine/dig

DURABILITY
Decreases the rate at which a tool looses durability

FIRE_ASPECT
When attacking a target, has a chance to set them on fire

FROST_WALKER
Freezes any still water adjacent to ice / frost which player is walking on

IMPALING
Deals more damage to mobs that live in the ocean

KNOCKBACK
All damage to other targets will knock them back when hit

LOOT_BONUS_BLOCKS
Provides a chance of gaining extra loot when destroying blocks

LOOT_BONUS_MOBS
Provides a chance of gaining extra loot when killing monsters

LOYALTY
Causes a thrown trident to return to the player who threw it

LUCK
Decreases odds of catching worthless junk

LURE
Increases rate of fish biting your hook

MENDING
Allows mending the item using experience orbs

MULTISHOT
Shoot multiple arrows from crossbows

OXYGEN
Decreases the rate of air loss whilst underwater

PIERCING
Crossbow projectiles pierce entities

PROTECTION_ENVIRONMENTAL
Provides protection against environmental damage

PROTECTION_EXPLOSIONS
Provides protection against explosive damage

PROTECTION_FALL
Provides protection against fall damage

PROTECTION_FIRE
Provides protection against fire damage

PROTECTION_PROJECTILE
Provides protection against projectile damage

QUICK_CHARGE
Charges crossbows quickly

RIPTIDE
When it is rainy, launches the player in the direction their trident is thrown

SILK_TOUCH
Allows blocks to drop themselves instead of fragments (for example, stone instead of cobblestone)

SOUL_SPEED
Walk quicker on soul blocks

SWEEPING_EDGE
Increases damage against targets when using a sweep attack

SWIFT_SNEAK
Walk quicker while sneaking

THORNS
Damages the attacker

VANISHING_CURSE
Item disappears instead of dropping

WATER_WORKER
Increases the speed at which a player may mine underwater
```
Source: https://hub.spigotmc.org/javadocs/bukkit/org/bukkit/enchantments/Enchantment.html

## Miscellaneous
More information about Mojang's enchantments for Java Edition, please read https://minecraft.fandom.com/wiki/Enchanting#Summary_of_enchantments

In worth.yml it will look like this:
```
ENCHANTED_BOOK>MENDINGx1: '1000.0'
```
And once this list is complete, I will merge it with this document: https://github.com/mrfdev/CMI/blob/master/Resources/Alternatives/CMI-worth_1.19.2.md

## Version
Version 1.1.0, build 005. Created for CMI 9.7.0.2 for Minecraft 1.20.4.