# No persistent task:

execute as @s[scores={tl_persistent=0}] run msg @s You have no persistent task

# Has persistent task:

execute as @s[scores={tl_persistent=1,tl_persistent_calc=1}] run msg @s Craft an enchanting table
execute as @s[scores={tl_persistent=1,tl_persistent_calc=2}] run msg @s Play a record
execute as @s[scores={tl_persistent=1,tl_persistent_calc=3}] run msg @s Walk while crouched for 500 blocks
execute as @s[scores={tl_persistent=1,tl_persistent_calc=4}] run msg @s Win a raid
execute as @s[scores={tl_persistent=1,tl_persistent_calc=5}] run msg @s Mine 10 diamonds
execute as @s[scores={tl_persistent=1,tl_persistent_calc=6}] run msg @s Mine 20 obsidian
execute as @s[scores={tl_persistent=1,tl_persistent_calc=7}] run msg @s Craft a netherite block
execute as @s[scores={tl_persistent=1,tl_persistent_calc=8}] run msg @s Break a diamond pick
execute as @s[scores={tl_persistent=1,tl_persistent_calc=9}] run msg @s Kill 10 wither skeletons
execute as @s[scores={tl_persistent=1,tl_persistent_calc=10}] run msg @s Kill 10 creepers
execute as @s[scores={tl_persistent=1,tl_persistent_calc=11}] run msg @s Drink 10 potions
execute as @s[scores={tl_persistent=1,tl_persistent_calc=12}] run msg @s Complete the Return To Sender advancement
execute as @s[scores={tl_persistent=1,tl_persistent_calc=13}] run msg @s Complete the Zombie Doctor advancement
execute as @s[scores={tl_persistent=1,tl_persistent_calc=14}] run msg @s Complete the Oh Shiny! advancement
execute as @s[scores={tl_persistent=1,tl_persistent_calc=15}] run msg @s Complete the Country Lode, Take Me Home advancement
execute as @s[scores={tl_persistent=1,tl_persistent_calc=16}] run msg @s Complete the Spooky Scary Skeleton advancement
execute as @s[scores={tl_persistent=1,tl_persistent_calc=17}] run msg @s Complete the A Furious Cocktail advancement
execute as @s[scores={tl_persistent=1,tl_persistent_calc=18}] run msg @s Complete the Not Quite "Nine" Lives advancement

scoreboard players set @s tl_PersistentTask 0