scoreboard players set @s 3rd_PlayerKills 0
scoreboard players set @s 3rd_daily 1

title @s subtitle {"text":"You are the hunter! Kill one player before the day is over!","color":"red"}
execute at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~