
scoreboard players add VarRSchMS.1Zahl PZRSchMS.1Spielz 1
execute rotated ~ -90 positioned ^5 ^5 ^7 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1zug_triagonal
execute rotated ~ 90 positioned ^5 ^5 ^9 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1zug_triagonal
execute if score VarRSchMS.1Zahl PZRSchMS.1Spielz matches 1..3 rotated ~90 ~ run function raumschach-minispiel:v1zug_einhorn
scoreboard players set VarRSchMS.1Zahl PZRSchMS.1Spielz 0
