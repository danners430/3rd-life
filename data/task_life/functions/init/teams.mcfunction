# More than 5 lives
team add tl_extra
team modify tl_extra color dark_green

# 4 or 5 lives
team add tl_green
team modify tl_green color green

# 2 or 3 lives
team add tl_yellow
team modify tl_yellow color yellow

# 1 life
team add tl_red
team modify tl_red color red

# No lives
team add tl_died
team modify tl_died prefix ["",{"text": "["},{"text": "DIED","color": "gray"},{"text": "] "}]