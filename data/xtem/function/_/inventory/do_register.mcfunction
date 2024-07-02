#> xtem:_/inventory/do_register
#--------------------
# ./each_item
#--------------------

data modify storage xtem:var register.item set from storage xtem:var inventory.register
data remove storage xtem:var register.item.Slot
function xtem:_/register

data modify storage xtem:var register.item.Slot set from storage xtem:var inventory.register.Slot

execute store result score *register.slot -xtem run data get storage xtem:var register.item.Slot

data modify storage xtem:var register.with set from storage xtem:var register.item
execute if score *register.slot -xtem matches 0..35 run data modify storage xtem:var register.with.slot_1 set value "container."
execute if score *register.slot -xtem matches 0..35 store result storage xtem:var register.with.slot_2 int 1 run scoreboard players get *register.slot -xtem
execute if score *register.slot -xtem matches 100..103 run data modify storage xtem:var register.with.slot_1 set value "armor."
execute if score *register.slot -xtem matches 100 run data modify storage xtem:var register.with.slot_2 set value "feet"
execute if score *register.slot -xtem matches 101 run data modify storage xtem:var register.with.slot_2 set value "legs"
execute if score *register.slot -xtem matches 102 run data modify storage xtem:var register.with.slot_2 set value "chest"
execute if score *register.slot -xtem matches 103 run data modify storage xtem:var register.with.slot_2 set value "head"
execute if score *register.slot -xtem matches -106 run data merge storage xtem:var {verify:{out:{slot_1:"weapon.", slot_2:"offhand"}}}

function xtem:_/inventory/give with storage xtem:var register.with

# will fail if item is changed to a non-armor item, so only give for now
#execute unless score *register.slot -xtem matches 0..35 run return run function xtem:_/inventory/replace with storage xtem:var register.with

data remove storage xtem:var register
scoreboard players reset *register.slot -xtem