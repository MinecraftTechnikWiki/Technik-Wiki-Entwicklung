
scoreboard players add VarRSchMS.1Zahl PZRSchMS.1Spielz 1
execute positioned ^5 ^-1 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1zug_diagonal_x
execute rotated ~ -90 positioned ^5 ^ ^7 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1zug_diagonal_y
execute rotated ~ 90 positioned ^5 ^ ^9 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1zug_diagonal_y
execute if score VarRSchMS.1Zahl PZRSchMS.1Spielz matches 1..3 rotated ~90 ~ run function raumschach-minispiel:v1zug_laeufer
scoreboard players set VarRSchMS.1Zahl PZRSchMS.1Spielz 0
