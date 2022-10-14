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
ARROW_FIRE
ARROW_INFINITE
ARROW_KNOCKBACK
BINDING_CURSE
CHANNELING
DAMAGE_ALL
DAMAGE_ARTHROPODS
DAMAGE_UNDEAD
DEPTH_STRIDER
DIG_SPEED
DURABILITY
FIRE_ASPECT
FROST_WALKER
IMPALING
KNOCKBACK
LOOT_BONUS_BLOCKS
LOOT_BONUS_MOBS
LOYALTY
LUCK
LURE
MENDING
MULTISHOT
OXYGEN
PIERCING
PROTECTION_ENVIRONMENTAL
PROTECTION_EXPLOSIONS
PROTECTION_FALL
PROTECTION_FIRE
PROTECTION_PROJECTILE
QUICK_CHARGE
RIPTIDE
SILK_TOUCH
SOUL_SPEED
SWEEPING_EDGE
SWIFT_SNEAK
THORNS
VANISHING_CURSE
WATER_WORKER
```
Source: https://hub.spigotmc.org/javadocs/bukkit/org/bukkit/enchantments/Enchantment.html

## Reference list
```
ARROW_DAMAGE (name) (1-x) (Provides extra damage when shooting arrows from bows)
ARROW_FIRE (name) (1-x) (Sets entities on fire when hit by arrows shot from a bow)
ARROW_INFINITE (name) (1-x) (Provides infinite arrows when shooting a bow)
ARROW_KNOCKBACK (name) (1-x) (Provides a knockback when an entity is hit by an arrow from a bow)
BINDING_CURSE (name) (1-x) (Item cannot be removed)
CHANNELING (name) (1-x) (Strikes lightning when a mob is hit with a trident if conditions are stormy)
DAMAGE_ALL (name) (1-x) (Increases damage against all targets)
DAMAGE_ARTHROPODS (name) (1-x) (Increases damage against arthropod targets)
DAMAGE_UNDEAD (name) (1-x) (Increases damage against undead targets)
DEPTH_STRIDER (name) (1-x) (Increases walking speed while in water)
DIG_SPEED (name) (1-x) (Increases the rate at which you mine/dig)
DURABILITY (name) (1-x) (Decreases the rate at which a tool looses durability)
FIRE_ASPECT (name) (1-x) (When attacking a target, has a chance to set them on fire)
FROST_WALKER (name) (1-x) (Freezes any still water adjacent to ice / frost which player is walking on)
IMPALING (name) (1-x) (Deals more damage to mobs that live in the ocean)
KNOCKBACK (name) (1-x) (All damage to other targets will knock them back when hit)
LOOT_BONUS_BLOCKS (name) (1-x) (Provides a chance of gaining extra loot when destroying blocks)
LOOT_BONUS_MOBS (name) (1-x) (Provides a chance of gaining extra loot when killing monsters)
LOYALTY (name) (1-x) (Causes a thrown trident to return to the player who threw it)
LUCK (name) (1-x) (Decreases odds of catching worthless junk)
LURE (name) (1-x) (Increases rate of fish biting your hook)
MENDING (name) (1-x) (Allows mending the item using experience orbs)
MULTISHOT (name) (1-x) (Shoot multiple arrows from crossbows)
OXYGEN (name) (1-x) (Decreases the rate of air loss whilst underwater)
PIERCING (name) (1-x) (Crossbow projectiles pierce entities)
PROTECTION_ENVIRONMENTAL (name) (1-x) (Provides protection against environmental damage)
PROTECTION_EXPLOSIONS (name) (1-x) (Provides protection against explosive damage)
PROTECTION_FALL (name) (1-x) (Provides protection against fall damage)
PROTECTION_FIRE (name) (1-x) (Provides protection against fire damage)
PROTECTION_PROJECTILE (name) (1-x) (Provides protection against projectile damage)
QUICK_CHARGE (name) (1-x) (Charges crossbows quickly)
RIPTIDE (name) (1-x) (When it is rainy, launches the player in the direction their trident is thrown)
SILK_TOUCH (name) (1-x) (Allows blocks to drop themselves instead of fragments (for example, stone instead of cobblestone))
SOUL_SPEED (name) (1-x) (Walk quicker on soul blocks)
SWEEPING_EDGE (name) (1-x) (Increases damage against targets when using a sweep attack)
SWIFT_SNEAK (name) (1-x) (Walk quicker while sneaking)
THORNS (name) (1-x) (Damages the attacker)
VANISHING_CURSE (name) (1-x) (Item disappears instead of dropping)
WATER_WORKER (name) (1-x) (Increases the speed at which a player may mine underwater)
```
TODO: (name) is supposed to be the human-friendly name "Fire Aspect"

## Miscellaneous

More information about Mojang's enchantments for Java Edition, please read https://minecraft.fandom.com/wiki/Enchanting#Summary_of_enchantments

In worth.yml it will look like this:
```
ENCHANTED_BOOK>MENDINGx1: '1000.0'
```
And once this list is complete, I will merge it with this document: https://github.com/mrfdev/CMI/blob/master/Resources/Alternatives/CMI-worth_1.19.2.md

## Version

Version 1.0.2, build 004. Created for CMI 9.2.4.5 for Minecraft 1.19.2 (Java Edition)
