# Add one life to two nearest players (nearest player being the player executing the command)
<<<<<<< HEAD
scoreboard players add @p[limit=2] 3rd_lives 1

# Remove two lives from player executing command - one being the life added by the first command, the other being the life they gifted
scoreboard players remove @s 3rd_lives 2

# Reset score
scoreboard players set @s 3rd_gift 0
=======

scoreboard players add @p[limit=2] tl_lives 1

# Remove two lives from player executing command - one being the life added by the first command, the other being the life they gifted

scoreboard players remove @s tl_lives 2

# Reset score

scoreboard players set @s tl_gift 0
>>>>>>> 1d5d0e2d0e6da6a4314106fef8ed2e1f00b4a82e
