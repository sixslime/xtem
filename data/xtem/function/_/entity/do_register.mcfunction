#> xtem:_/entity/do_register
#--------------------
# ./check
#--------------------

data modify storage xtem:var register.item set from entity @s Item
function xtem:_/register

data modify entity @s Item set from storage xtem:var register.item

data remove storage xtem:var register