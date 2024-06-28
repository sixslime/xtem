#> iteem:_/entity/check
#--------------------
# _/tick
#--------------------

tag @s add _iteem-checked
execute unless items entity @s container.0 *[minecraft:custom_data~{iteem:{registered:true}}] run function iteem:_/entity/do_register
