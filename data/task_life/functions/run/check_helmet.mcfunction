# Check if player is wearing a helmet and shame them

execute as @a[predicate=task_life:wear_helmet,scores={tl_helmet=0}] run title @a title [{"selector":"@s"},{"text": " is wearing something on their head!","color": "red"}]
execute as @a[predicate=task_life:wear_helmet,scores={tl_helmet=0}] run scoreboard players set @s tl_helmet 1
execute as @a[predicate=!task_life:wear_helmet,scores={tl_helmet=1}] run scoreboard players set @s tl_helmet 0