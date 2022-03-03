# Add one life to two nearest players (nearest player being the player executing the command)
scoreboard players add @p[limit=2] 3rd_lives 1

# Remove two lives from player executing command - one being the life added by the first command, the other being the life they gifted
scoreboard players remove @s 3rd_lives 2

# Reset score
scoreboard players set @s 3rd_gift 0