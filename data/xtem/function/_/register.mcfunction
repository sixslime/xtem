#> xtem:_/register
#--------------------
# - _/entity/do_register
# - _/inventory/do_register
#--------------------

execute summon item_display run function xtem:_/register.1
data modify storage xtem:var register.item.components."minecraft:custom_data".xtem.registered set value true