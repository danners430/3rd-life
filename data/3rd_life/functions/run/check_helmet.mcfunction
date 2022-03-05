# Check if player is wearing a helmet and shame them

execute as @a[predicate=3rd_life:wear_helmet,scores={3rd_helmet=0}] run title @a title [{"selector":"@s"},{"text": " is wearing something on their head!","color": "red"}]
execute as @a[predicate=3rd_life:wear_helmet,scores={3rd_helmet=0}] run scoreboard players set @s 3rd_helmet 1
execute as @a[predicate=!3rd_life:wear_helmet,scores={3rd_helmet=1}] run scoreboard players set @s 3rd_helmet 0