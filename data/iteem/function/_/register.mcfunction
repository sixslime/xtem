#> iteem:_/register
#--------------------
# - _/entity/do_register
# - _/inventory/do_register
#--------------------

execute summon item_display run function iteem:_/register.1
data modify storage iteem:var register.item.components."minecraft:custom_data".iteem.registered set value true