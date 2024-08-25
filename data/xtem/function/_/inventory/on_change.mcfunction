#> xtem:_/inventory/on_change
#--------------------
# @adv : _/inv_change
#--------------------

advancement revoke @s only xtem:_/inv_change

execute if data storage xtem:settings {creative_override:true} if entity @s[gamemode=creative] run return 0
execute unless data storage xtem:settings {register:{in_inventory:true}} run return 0
data modify storage xtem:var inventory.added set from entity @s Inventory
data remove storage xtem:var inventory.added[{components:{"minecraft:custom_data":{xtem:{registered:true}}}}]
data remove storage xtem:var inventory.added[{components:{"minecraft:custom_data":{__:true}}}]

execute if data storage xtem:var inventory.added[0] run function xtem:_/inventory/each_item

data remove storage xtem:var inventory