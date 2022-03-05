# Add one life to two nearest players (nearest player being the player executing the command)

scoreboard players add @p[limit=2] tl_lives 1

# Remove two lives from player executing command - one being the life added by the first command, the other being the life they gifted

scoreboard players remove @s tl_lives 2

# Reset score

scoreboard players set @s tl_gift 0