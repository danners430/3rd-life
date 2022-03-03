# Check death count, decrement lives and reset death counter
execute as @a[scores={3rd_death=1..}] run scoreboard players remove @s 3rd_lives 1
execute as @a[scores={3rd_death=1..}] run scoreboard players set @s 3rd_death 0

# Change gamemode to spectator when player loses all their lives
gamemode spectator @a[scores={3rd_lives=0},gamemode=!spectator]

# Track lives and give them team

team join 3rd_died @a[scores={3rd_lives=0},team=!3rd_died]
team join 3rd_red @a[scores={3rd_lives=1},team=!3rd_red]
team join 3rd_yellow @a[scores={3rd_lives=2},team=!3rd_yellow]
team join 3rd_green @a[scores={3rd_lives=3},team=!3rd_green]
team join 3rd_extra @a[scores={3rd_lives=4..},team=!3rd_extra]
# team join 3rd_extra @a[scores={3rd_lives=4..5},team=!3rd_extra]
# team join 3rd_full @a[scores={3rd_lives=6..},team=!3rd_full]

# Check if player wear helmet
execute as @a[predicate=3rd_life:wear_helmet,scores={helmet=0}] run title @a title [{"selector":"@s"},{"text": " is wearing something on their head!","color": "red"}]
execute as @a[predicate=3rd_life:wear_helmet,scores={helmet=0}] run scoreboard players set @s helmet 1
execute as @a[predicate=!3rd_life:wear_helmet,scores={helmet=1}] run scoreboard players set @s helmet 0

# Enable Life Gifting score
execute as @a[scores={3rd_gift=0}] run scoreboard players enable @s 3rd_gift
execute as @a[scores={3rd_gift=0}] run scoreboard players set @s 3rd_gift 1

# Check for life gifting
execute as @a[scores={3rd_gift=2}] run function 3rd_life:life_gift/life_gifting