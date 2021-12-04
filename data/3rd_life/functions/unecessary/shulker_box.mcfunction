#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: youtube.com/barraIhsan
# Github: github.com/barraIhsan
#---------------------------------------------------------

# Create a permanent location for shulkerbox
forceload remove -30000000 1600
forceload add -30000000 1600
fill -30000000 1 1600 -30000000 1 1615 minecraft:bedrock

# Place shulkerbox unless block already exist
execute unless block -30000000 0 1602 minecraft:yellow_shulker_box run setblock -30000000 0 1602 minecraft:yellow_shulker_box
