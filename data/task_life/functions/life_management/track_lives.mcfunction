# Put players in the correct colour team

# No lives
execute as @a[scores={tl_lives=0}] run team join tl_died
# 1 life
execute as @a[scores={tl_lives=1}] run team join tl_red
# 2 or 3 lives
execute as @a[scores={tl_lives=2..3}] run team join tl_yellow
# 4 or 5 lives
execute as @a[scores={tl_lives=4..5}] run team join tl_green
# more than 5 lives
execute as @a[scores={tl_lives=6..}] run team join tl_extra

# Put players with no lives into spectator
execute as @a[team=tl_died,gamemode=!spectator] run gamemode spectator