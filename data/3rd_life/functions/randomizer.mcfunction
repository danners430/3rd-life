scoreboard objectives add RandomBit dummy
execute unless entity @e[type=armor_stand, tag=RandomizerResult] run summon minecraft:armor_stand 0 -1 1 {Marker: 1b, NoGravity: 1b, Invisible: 1b, Silent: 1b}
tag @e[type=armor_stand,x=0,y=-1,z=1] add RandomizerResult
scoreboard players set @e[tag=RandomizerResult] RandomBit 0
execute unless entity @e[type=armor_stand, tag=Randomizer] run summon minecraft:armor_stand 0 -1 0 {Marker: 1b, NoGravity: 1b, Invisible: 1b, Silent: 1b}
execute unless entity @e[type=armor_stand, tag=Randomizer] run summon minecraft:armor_stand 1 -1 0 {Marker: 1b, NoGravity: 1b, Invisible: 1b, Silent: 1b}
tag @e[type=armor_stand,x=0,y=-1,z=0] add Randomizer
tag @e[type=armor_stand,x=1,y=-1,z=0] add Randomizer



tag @e[type=armor_stand,tag=Randomizer] remove PickedBit
tag @e[type=armor_stand,tag=Randomizer,sort=random,limit=1] add PickedBit
execute store result score @e[type=armor_stand, tag=RandomizerResult] RandomBit run data get entity @e[type=armor_stand, tag=PickedBit,limit=1] Pos[0]