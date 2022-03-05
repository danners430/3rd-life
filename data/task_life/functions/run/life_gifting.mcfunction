# Enable Life Gifting score

execute as @a[scores={tl_gift=0,tl_lives=2..}] run scoreboard players enable @s tl_gift
execute as @a[scores={tl_gift=0,tl_lives=2..}] run scoreboard players set @s tl_gift 1

# Disable Life Gifting score if player has fewer than 2 lives

execute as @a[scores={tl_lives=..1,tl_gift=1}] run trigger tl_gift add 0
execute as @a[scores={tl_lives=..1,tl_gift=1}] run scoreboard players set @s tl_gift 0

# Check for life gifting

execute as @a[scores={tl_gift=2}] run function task_life:life_gift/life_gifting