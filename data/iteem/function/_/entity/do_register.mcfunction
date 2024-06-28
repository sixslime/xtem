#> iteem:_/entity/do_register
#--------------------
# ./check
#--------------------

data modify storage iteem:var register.item set from entity @s Item
function iteem:_/register

data modify entity @s Item set from storage iteem:var register.item

data remove storage iteem:var register