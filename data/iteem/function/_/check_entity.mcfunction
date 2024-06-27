#> iteem:_/check_entity
#--------------------
# ./tick
#--------------------

execute unless items entity @s container.0 *[minecraft:custom_data~{iteem:{registered:true}}] run function iteem:_/register_hook
tag @s add _iteem-checked