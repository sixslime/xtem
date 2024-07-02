#>xtem:_/load
#--------------------
# @PRE_LOAD
#--------------------

# load
scoreboard players set *xtem load-status 1

# settings
execute unless data storage xtem:settings {PERSIST:true} run function xtem:settings

#declare storage xtem:var
#declare storage xtem:hook

# scoreboards
scoreboard objectives add -xtem dummy
scoreboard objectives add --xtem dummy

# tick
schedule clear xtem:_/tick
execute if data storage xtem:settings {register:{item_entities:true}} run function xtem:_/tick