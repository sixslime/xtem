#> iteem:_/register.1

kill @s
data modify entity @s item set from storage iteem:var register.item
#-- HOOK : iteem:register --
function #iteem:hook/register
#-- > < --
data modify storage iteem:var register.item set from entity @s item
