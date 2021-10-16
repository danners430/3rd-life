#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: youtube.com/barraIhsan
# Github: github.com/barraIhsan
#---------------------------------------------------------

# Give them death score
execute as @a unless score @s 3rd_death matches -2147483648..2147483647 run scoreboard players set @s 3rd_death 0

# Track death and give them team
team join 3rd_first @a[scores={3rd_death=0},team=!3rd_first]
team join 3rd_second @a[scores={3rd_death=1},team=!3rd_second]
team join 3rd_third @a[scores={3rd_death=2},team=!3rd_third]

# Change gamemode to spectator when player dies 3 time
gamemode spectator @a[scores={3rd_death=3},team=!3rd_died]
team join 3rd_died @a[scores={3rd_death=3},team=!3rd_died]

# Check if player wear helmet
execute as @a[predicate=3rd_life:wear_helmet] at @s run function 3rd_life:wear_helmet
