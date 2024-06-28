#> iteem:_/inventory/do_register
#--------------------
# ./each_item
#--------------------

data modify storage iteem:var register.item set from storage iteem:var inventory.register
data remove storage iteem:var register.item.Slot
function iteem:_/register

data modify storage iteem:var register.item.components."minecraft_custom_data".iteem.registered set value true
data modify storage iteem:var register.item.Slot set from storage iteem:var inventory.register.Slot

data merge storage sism:in {set:{path:"Inventory"}}
data modify storage sism:in set.item set from storage iteem:var register.item
return run function sism:api/set