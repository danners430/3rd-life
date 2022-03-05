# Change gamemode to spectator when player loses all their lives

gamemode spectator @a[scores={3rd_lives=0},gamemode=!spectator]

# Track lives and give them team

team join 3rd_died @a[scores={3rd_lives=0},team=!3rd_died]
team join 3rd_red @a[scores={3rd_lives=1},team=!3rd_red]
team join 3rd_yellow @a[scores={3rd_lives=2},team=!3rd_yellow]
team join 3rd_green @a[scores={3rd_lives=3},team=!3rd_green]
team join 3rd_extra @a[scores={3rd_lives=4..},team=!3rd_extra]