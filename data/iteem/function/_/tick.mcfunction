#>iteem:_/tick
#--------------------
# @PRE_TICK
#--------------------

execute as @e[type=item,tag=!_iteem-checked] at @s run function iteem:_/check_entity
schedule function iteem:_/tick 1t