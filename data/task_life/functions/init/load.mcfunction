# Set worldborder

worldborder center ~ ~
worldborder set 700

# Add working objectives

scoreboard objectives add tl_death deathCount
scoreboard objectives add tl_lives dummy "Lives"
scoreboard objectives add tl_gift trigger
scoreboard objectives add tl_helmet dummy
scoreboard objectives add calc dummy
scoreboard objectives add tl_daily_calc dummy
scoreboard objectives add tl_daily dummy
scoreboard objectives add tl_persistent_calc dummy
scoreboard objectives add tl_persistent dummy
scoreboard objectives add tl_DailyTask trigger "Daily Task"
scoreboard objectives add tl_PersistentTask trigger "Persistent Task"
scoreboard objectives add tl_DailyTick dummy
scoreboard objectives add tl_DailyCooldown dummy
scoreboard objectives add tl_HasDaily dummy
scoreboard objectives add tl_DaylightCycleStatus dummy

# Add teams

team add tl_extra
team modify tl_extra color dark_green
team add tl_green
team modify tl_green color green
team add tl_yellow
team modify tl_yellow color yellow
team add tl_red
team modify tl_red color red
team add tl_died
team modify tl_died prefix ["",{"text": "["},{"text": "DIED","color": "gray"},{"text": "] "}]

# Default to no weather and no daytime

gamerule doDaylightCycle false
gamerule doWeatherCycle false

# Add persistent task scoreboards

scoreboard objectives add tl_BreakDiamondPick minecraft.broken:minecraft.diamond_pickaxe "Diamond Pickaxes Broken"
scoreboard objectives add tl_CraftEnchantingTable minecraft.crafted:minecraft.enchanting_table "Enchanting Tables Crafted"
scoreboard objectives add tl_CraftNetheriteBlock minecraft.crafted:minecraft.netherite_block "Netherrite Blocks Crafted"
scoreboard objectives add tl_KillCreepers minecraft.killed:minecraft.creeper "Creepers Killed"
scoreboard objectives add tl_KillWitherSkeletons minecraft.killed:minecraft.wither_skeleton "Wither Skeletons Killed"
scoreboard objectives add tl_MineDiamond minecraft.mined:minecraft.diamond_ore "Diamonds Mined"
scoreboard objectives add tl_MineDeepDiamond minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add tl_MineObsidian minecraft.mined:minecraft.obsidian "Obsidian Mined"
scoreboard objectives add tl_RaidsWon minecraft.custom:minecraft.raid_win "Raids Won"
scoreboard objectives add tl_RecordPlayed minecraft.custom:minecraft.play_record "Records Played"
scoreboard objectives add tl_PotionsUsed minecraft.used:minecraft.potion "Potions Used"
scoreboard objectives add tl_WalkWhileCrouched minecraft.custom:minecraft.crouch_one_cm "Distance While Crouched"

# Add scoreboards for all_ores

scoreboard objectives add tl_ores_stCoal minecraft.mined:minecraft.coal_ore
scoreboard objectives add tl_ores_dsCoal minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add tl_ores_stCopper minecraft.mined:minecraft.copper_ore
scoreboard objectives add tl_ores_dsCopper minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add tl_ores_stLapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add tl_ores_dsLapis minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add tl_ores_stIron minecraft.mined:minecraft.iron_ore
scoreboard objectives add tl_ores_dsIron minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add tl_ores_stCopper minecraft.mined:minecraft.copper_ore
scoreboard objectives add tl_ores_stGold minecraft.mined:minecraft.gold_ore
scoreboard objectives add tl_ores_dsGold minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add tl_ores_stRedstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives add tl_ores_dsRedstone minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add tl_ores_stDiamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives add tl_ores_dsDiamond minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add tl_ores_stEmerald minecraft.mined:minecraft.emerald_ore
scoreboard objectives add tl_ores_dsEmerald minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add tl_ores_ntQuartz minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add tl_ores_ntGold minecraft.mined:minecraft.nether_gold_ore
scoreboard objectives add tl_ores_nt_Netherite minecraft.mined:minecraft.ancient_debris
scoreboard objectives add tl_ores dummy "Unique Ores Mined"

# Add daily objective stats

scoreboard objectives add tl_AnimalsBred minecraft.custom:minecraft.animals_bred "Animals Bred"
scoreboard objectives add tl_FishCaught minecraft.custom:minecraft.fish_caught "Fish Caught"
scoreboard objectives add tl_KillBat minecraft.killed:minecraft.bat "Kill Bat"
scoreboard objectives add tl_KillChicken minecraft.killed:minecraft.chicken "Kill Chicken"
scoreboard objectives add tl_KillCow minecraft.killed:minecraft.cow "Kill Cow"
scoreboard objectives add tl_KillSheep minecraft.killed:minecraft.sheep "Kill Sheep"
scoreboard objectives add tl_KillZombie minecraft.killed:minecraft.zombie "Kill Zombie"
scoreboard objectives add tl_KillCreeper minecraft.killed:minecraft.creeper "Kill Creeper"
scoreboard objectives add tl_KillSkeleton minecraft.killed:minecraft.skeleton "Kill Skeleton"
scoreboard objectives add tl_KillSpider minecraft.killed:minecraft.spider "Kill Spider"
scoreboard objectives add tl_MineCoal minecraft.mined:minecraft.coal_ore "Mine Coal"
scoreboard objectives add tl_MineDeepCoal minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add tl_MineIron minecraft.mined:minecraft.iron_ore "Mine Iron"
scoreboard objectives add tl_MineDeepIron minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add tl_MineRedstone minecraft.mined:minecraft.redstone_ore "Mine Redstone"
scoreboard objectives add tl_MineDeepRedstone minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add tl_MineGold minecraft.mined:minecraft.gold_ore "Mine Gold"
scoreboard objectives add tl_MineDeepGold minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add tl_PlayerKills minecraft.custom:minecraft.player_kills "Player Kills"
scoreboard objectives add tl_VillagerTrades minecraft.custom:minecraft.traded_with_villager "Traded With Villagers"

# Prevent infinite loops

# execute store result score time calc run time query daytime
# execute if score time calc matches 2000 run time set 2001
# execute if score time calc matches 2200 run time set 2201

# Delete old number markers

kill @e[tag=NumberMarker]