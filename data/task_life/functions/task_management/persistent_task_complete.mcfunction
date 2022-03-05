# Show title to player

title @s subtitle {"text":"You've been given an extra life!"}
title @s title {"text":"Difficult task complete!","color":"green"}

# Play sound

playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~

# Set scoreboard to show no persistent task and add life

scoreboard players set @s tl_persistent 0
scoreboard players add @s tl_lives 1