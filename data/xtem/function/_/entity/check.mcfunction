#> xtem:_/entity/check
#--------------------
# _/tick
#--------------------

tag @s add _xtem-checked
execute unless items entity @s container.0 *[minecraft:custom_data~{xtem:{registered:true}}] run function xtem:_/entity/do_register
