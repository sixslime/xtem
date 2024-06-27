#>iteem:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *iteem load-status 1

# settings
execute unless data storage iteem:settings {PERSIST:true} run function iteem:settings

#declare storage iteem:var
#declare storage iteem:in
#declare storage iteem:out
#declare storage iteem:const
#declare storage iteem:dirty
#declare storage iteem:data
#declare storage iteem:hook

# scoreboards
scoreboard objectives add -iteem dummy
#(dirty)
scoreboard objectives add --iteem dummy
#scoreboard objectives add iteem-scoreboard dummy