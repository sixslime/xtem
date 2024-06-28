#>iteem:_/load
#--------------------
# @PRE_LOAD
#--------------------

# load
scoreboard players set *iteem load-status 1

# settings
execute unless data storage iteem:settings {PERSIST:true} run function iteem:settings

#declare storage iteem:var
#declare storage iteem:hook

# scoreboards
scoreboard objectives add -iteem dummy
scoreboard objectives add --iteem dummy

# tick
schedule clear iteem:_/tick
execute if data storage iteem:settings {register:{item_entities:true}} run function iteem:_/tick