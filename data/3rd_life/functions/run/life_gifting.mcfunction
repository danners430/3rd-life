# Enable Life Gifting score

execute as @a[scores={3rd_gift=0,3rd_lives=2..}] run scoreboard players enable @s 3rd_gift
execute as @a[scores={3rd_gift=0,3rd_lives=2..}] run scoreboard players set @s 3rd_gift 1

# Disable Life Gifting score if player has fewer than 2 lives

execute as @a[scores={3rd_lives=..1}] run scoreboard players set @s 3rd_gift 0

# Check for life gifting

execute as @a[scores={3rd_gift=2}] run function 3rd_life:life_gift/life_gifting