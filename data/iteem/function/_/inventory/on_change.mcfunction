#> iteem:_/inventory/on_change
#--------------------
# @hook : invi:inventory_change
#--------------------

data modify storage iteem:var inventory.added set from storage invi:hook inventory_change[-1].info.added

execute if data storage iteem:var inventory.added[] run function iteem:_/inventory/each_item

# invi:hook info.added info.removed