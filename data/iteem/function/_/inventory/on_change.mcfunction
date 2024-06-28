#> iteem:_/inventory/on_change
#--------------------
# @hook : invi:inventory_change
#--------------------

execute unless data storage iteem:settings {register:{in_inventory:true}} run return 0
data modify storage iteem:var inventory.added set from storage invi:hook inventory_change[-1].info.added

execute if data storage iteem:var inventory.added[] run function iteem:_/inventory/each_item

data remove storage iteem:var inventory