#> iteem:_/inventory/each_item
#--------------------
# ./on_change
#--------------------

data modify storage iteem:var inventory.register set from storage iteem:var inventory.added[-1]

execute unless data storage invi:var inventory.register{components:{"minecraft:custom_data":{iteem:{registered:true}}}} run function iteem:_/inventory/do_register
data remove storage iteem:var invi.added[-1]
execute if data storage iteem:var invi.added[] run function iteem:_/each_item