# Change gamemode to spectator when player loses all their lives

gamemode spectator @a[scores={tl_lives=0},gamemode=!spectator]

# Track lives and give them team

team join tl_died @a[scores={tl_lives=0},team=!tl_died]
team join tl_red @a[scores={tl_lives=1},team=!tl_red]
team join tl_yellow @a[scores={tl_lives=2},team=!tl_yellow]
team join tl_green @a[scores={tl_lives=3},team=!tl_green]
team join tl_extra @a[scores={tl_lives=4..},team=!tl_extra]

# Auto-revoke death advancement

advancement revoke @a only task_life:tl_death