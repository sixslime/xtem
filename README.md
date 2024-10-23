
# Xtem | xtem
> Hook to observe and change every new item introduced to a world.

## Dependencies
- [load](https://github.com/sixslime/load)

# Overview
The goal of Xtem is to allow easy and modular modification of "default" items.

It seeks to achieve this by triggering a hook for every *unregistered* item that enters a player's inventory or spawns as an item entity, providing that item's data and allowing it to be changed, and registering it.
# Usage

### Registering Items
Add subscriber functions to the `#xtem:hook/register` function tag.

This tag will run every time an unregistered item is detected; AS an item entity (AT the unregistered item's location), with it's `item` NBT data containing the item. \
Any changes to the `item` data within the item entity will be applied to the final registered item.

It is recommended to append/merge data when possible instead of overwriting/setting; another datapack may have made changes to the same item.

### The '_' Tag
A datapack may add `_:true` to an item's `custom_data` to asserting that the item does not serve the same purpose that it's item id entails (for items with custom behavior). \
Subscribers to `xtem:hook/register` should recognize items with this tag as non-vanilla items.

Items with `_:true` should really only be changed if there is explicit compatibility with the custom item's datapack.

## Example
Turn all stone swords into iron swords:

`<datapack>/data/xtem/tags/function/hook/register.json`:
```json
{
    "values": [
        "mypack:_/my_xtem_register"
    ]
}
```

`mypack:_/my_xtem_register`:
```mcfunction
# ignore custom items.
execute if items entity @s container.0 *[minecraft:custom_data~{_:true}] run return fail

# ignore anything that is not a stone sword.
execute unless items entity @s container.0 minecraft:stone_sword run return fail

# change the item id to iron sword.
data modify entity @s item.id set value "minecraft:iron_sword"
```
___

<p align="center">
  <img src="https://raw.githubusercontent.com/sixslime/sixslime.github.io/refs/heads/main/info/logos/temporary_documentation.svg" width="75%" alt="Temporary Documentation Tag"/>
</p>
