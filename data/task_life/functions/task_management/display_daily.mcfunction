# No daily task:

execute as @s[scores={tl_daily=0}] run msg @s You have no daily task

# Has daily task:

execute as @s[scores={tl_daily=1,tl_daily_calc=1}] run msg @s You are the hunter - kill another player
execute as @s[scores={tl_daily=1,tl_daily_calc=2}] run msg @s Kill 3 bats
execute as @s[scores={tl_daily=1,tl_daily_calc=3}] run msg @s Kill 5 chickens
execute as @s[scores={tl_daily=1,tl_daily_calc=4}] run msg @s Kill 5 cows
execute as @s[scores={tl_daily=1,tl_daily_calc=5}] run msg @s Kill 5 sheep
execute as @s[scores={tl_daily=1,tl_daily_calc=6}] run msg @s Kill a zombie
execute as @s[scores={tl_daily=1,tl_daily_calc=7}] run msg @s Kill a creeper
execute as @s[scores={tl_daily=1,tl_daily_calc=8}] run msg @s Kill a skeleton
execute as @s[scores={tl_daily=1,tl_daily_calc=9}] run msg @s Kill a spider
execute as @s[scores={tl_daily=1,tl_daily_calc=10}] run msg @s Breed 5 animals
execute as @s[scores={tl_daily=1,tl_daily_calc=11}] run msg @s Catch 3 fish
execute as @s[scores={tl_daily=1,tl_daily_calc=12}] run msg @s Mine 10 coal
execute as @s[scores={tl_daily=1,tl_daily_calc=13}] run msg @s Mine 10 iron
execute as @s[scores={tl_daily=1,tl_daily_calc=14}] run msg @s Mine 5 redstone
execute as @s[scores={tl_daily=1,tl_daily_calc=15}] run msg @s Mine 5 gold
execute as @s[scores={tl_daily=1,tl_daily_calc=16}] run msg @s Complete the Sticky Situation advancement
execute as @s[scores={tl_daily=1,tl_daily_calc=17}] run msg @s Complete the Ol' Betsy advancement
execute as @s[scores={tl_daily=1,tl_daily_calc=18}] run msg @s Complete the Hired Help advancement
execute as @s[scores={tl_daily=1,tl_daily_calc=19}] run msg @s Complete the Sniper Duel advancement

scoreboard players set @s tl_DailyTask 0