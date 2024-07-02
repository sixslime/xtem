#> xtem:_/register.1

kill @s
data modify entity @s item set from storage xtem:var register.item
#-- HOOK : xtem:register --
function #xtem:hook/register
#-- > < --
data modify storage xtem:var register.item set from entity @s item
