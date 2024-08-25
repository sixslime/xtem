#> xtem:_/inventory/each_item
#--------------------
# ./on_change
#--------------------

data modify storage xtem:var inventory.register set from storage xtem:var inventory.added[-1]
function xtem:_/inventory/do_register

data remove storage xtem:var inventory.added[-1]
execute if data storage xtem:var inventory.added[0] run function xtem:_/inventory/each_item