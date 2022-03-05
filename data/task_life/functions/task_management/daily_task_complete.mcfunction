# Remove subtitle and show new title

title @s reset
title @s title {"text":"Task complete!","color":"green"}

# Play sound

playsound minecraft:entity.player.levelup master @s ~ ~ ~

# Reset daily scoreboard

scoreboard players set @s tl_daily 0