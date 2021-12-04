# Give them death score
# execute as @a unless score @s 3rd_death matches -2147483648..2147483647 run scoreboard players set @s 3rd_death 0

# Check death count, decrement lives and reset death counter
execute as @a[scores={3rd_death=1}] run scoreboard players remove @s 3rd_lives 1
execute as @a[scores={3rd_death=1}] run scoreboard players set @s 3rd_death 0

# Track lives and give them team

team join 3rd_died @a[scores={3rd_lives=0},team=!3rd_died]
team join 3rd_red @a[scores={3rd_lives=1},team=!3rd_red]
team join 3rd_yellow @a[scores={3rd_lives=2},team=!3rd_yellow]
team join 3rd_green @a[scores={3rd_lives=3},team=!3rd_green]
team join 3rd_extra @a[scores={3rd_lives=4..},team=!3rd_extra]

# team join 3rd_first @a[scores={3rd_death=0},team=!3rd_first]
# team join 3rd_second @a[scores={3rd_death=1},team=!3rd_second]
# team join 3rd_third @a[scores={3rd_death=2},team=!3rd_third]

# Change gamemode to spectator when player loses all their lives
gamemode spectator @a[scores={3rd_lives=0},team=!3rd_died]

# Check if player wear helmet
execute as @a[predicate=3rd_life:wear_helmet] at @s run function 3rd_life:wear_helmet
