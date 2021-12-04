#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: youtube.com/barraIhsan
# Github: github.com/barraIhsan
#---------------------------------------------------------

data remove storage temp 3rd_life
data modify storage temp 3rd_life set from entity @s Inventory[{Slot:103b}]
data modify storage temp 3rd_life{Slot:103b}.Slot set value 0b
data modify block -30000000 0 1602 Items[{Slot:0b}] set from storage temp 3rd_life
loot spawn ~ ~ ~ mine -30000000 0 1602 minecraft:air{drop_contents:1b}
data modify entity @e[type=item,distance=..1,limit=1,sort=nearest] PickupDelay set value 0s
item replace entity @s armor.head with air
tellraw @s {"text": "No Hemet please!","color": "red","bold": true}
playsound block.note_block.pling master @s ~ ~ ~ 0.3 0
