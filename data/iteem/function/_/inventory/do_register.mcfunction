#> iteem:_/inventory/do_register
#--------------------
# ./each_item
#--------------------

data modify storage iteem:var register.item set from storage iteem:var inventory.register
data remove storage iteem:var register.item.Slot
function iteem:_/register

data modify storage iteem:var register.item.components."minecraft:custom_data".iteem.registered set value true
data modify storage iteem:var register.item.Slot set from storage iteem:var inventory.register.Slot

execute store result score *register.slot -iteem run data get storage iteem:var register.item.Slot

data modify storage iteem:var register.with set from storage iteem:var register.item
execute if score *register.slot -iteem matches 0..35 run data modify storage iteem:var register.with.slot_1 set value "container."
execute if score *register.slot -iteem matches 0..35 store result storage iteem:var register.with.slot_2 int 1 run scoreboard players get *register.slot -iteem
execute if score *register.slot -iteem matches 100..103 run data modify storage iteem:var register.with.slot_1 set value "armor."
execute if score *register.slot -iteem matches 100 run data modify storage iteem:var register.with.slot_2 set value "feet"
execute if score *register.slot -iteem matches 101 run data modify storage iteem:var register.with.slot_2 set value "legs"
execute if score *register.slot -iteem matches 102 run data modify storage iteem:var register.with.slot_2 set value "chest"
execute if score *register.slot -iteem matches 103 run data modify storage iteem:var register.with.slot_2 set value "head"
execute if score *register.slot -iteem matches -106 run data merge storage iteem:var {verify:{out:{slot_1:"weapon.", slot_2:"offhand"}}}

function iteem:_/inventory/give with storage iteem:var register.with

# will fail if item is changed to a non-armor item, so only give for now
#execute unless score *register.slot -iteem matches 0..35 run return run function iteem:_/inventory/replace with storage iteem:var register.with

data remove storage iteem:var register
scoreboard players reset *register.slot -iteem