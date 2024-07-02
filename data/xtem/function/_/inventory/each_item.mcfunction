#> xtem:_/inventory/each_item
#--------------------
# ./on_change
#--------------------

data modify storage xtem:var inventory.register set from storage xtem:var inventory.added[-1]


execute unless data storage xtem:var inventory.register{components:{"minecraft:custom_data":{xtem:{registered:true}}}} run function xtem:_/inventory/do_register
data remove storage xtem:var inventory.added[-1]
execute if data storage xtem:var inventory.added[] run function xtem:_/inventory/each_item