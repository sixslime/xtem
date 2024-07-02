#> xtem:_/inventory/on_change
#--------------------
# @hook : invi:inventory_change
#--------------------

execute unless data storage xtem:settings {register:{in_inventory:true}} run return 0
data modify storage xtem:var inventory.added set from storage invi:hook inventory_change[-1].info.added

execute if data storage xtem:var inventory.added[] run function xtem:_/inventory/each_item

data remove storage xtem:var inventory