# Death counter - used in tl_death advancement
scoreboard objectives add tl_death deathCount "Deaths"

# Life counter
scoreboard objectives add tl_lives dummy "Lives"

# Put life counter into the tab menu, with hearts
scoreboard objectives modify tl_lives rendertype hearts
scoreboard objectives setdisplay list tl_lives