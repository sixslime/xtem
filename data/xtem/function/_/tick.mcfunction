#>xtem:_/tick
#--------------------
# @PRE_TICK
#--------------------

execute as @e[type=item,tag=!_xtem-checked,tag=!_] at @s run function xtem:_/entity/check
schedule function xtem:_/tick 1t