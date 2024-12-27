#>xtem:settings

#declare storage xtem:settings
data modify storage xtem:settings PERSIST set value false

#>-------------------
#> register.item_entities
#: bool
#-------------------
# ~ if true: detect and register new dropped item entities.
#-------------------
data modify storage xtem:settings register.item_entities set value true
#>-------------------

#>-------------------
#> register.in_inventory
#: bool
#-------------------
# ~ if true: detect and register items in player inventories.
#-------------------
# - xtem searches for unregistered items on inventory change (via 'inventory_changed' advancement criteria).
#-------------------
data modify storage xtem:settings register.in_inventory set value true
#>-------------------

#>-------------------
#> creative_override
#: bool
#-------------------
# ~ if true: ignore inventories of players in creative mode.
#-------------------
# - this prevents items from switching slots when grabbing from the creative inventory.
# - as of 1.21.4: this also prevents a very obvious bug that causes items to be duplicated until you close your inventory.
#-------------------
data modify storage xtem:settings creative_override set value false
#>-------------------