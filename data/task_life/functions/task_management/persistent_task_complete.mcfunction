# Show title to player

title @s[scores={tl_persistent=1}] subtitle {"text":"You've been given an extra life!"}
title @s[scores={tl_persistent=1}] title {"text":"Difficult task complete!","color":"green"}

# Play sound

playsound minecraft:ui.toast.challenge_complete master @s[scores={tl_persistent=1}] ~ ~ ~

# Set scoreboard to show no persistent task and add life

scoreboard players add @s[scores={tl_persistent=1}] tl_lives 1
scoreboard players set @s[scores={tl_persistent=1}] tl_persistent 0