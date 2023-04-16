# Set time to 2000 - which has the effect of setting the day counter back to 0
time set 2000

# Add one to the day counter in the marker
scoreboard players add @e[type=minecraft:marker,tag=Marker] tl_days 1