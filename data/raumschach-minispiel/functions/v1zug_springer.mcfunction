
scoreboard players add VarRSchMS.1Zahl PZRSchMS.1Spielz 1
execute positioned ^5 ^-1 ^10 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute positioned ^10 ^-1 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute rotated ~ -90 positioned ^10 ^ ^7 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute rotated ~ -90 positioned ^5 ^ ^15 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute rotated ~ 90 positioned ^10 ^ ^9 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute rotated ~ 90 positioned ^5 ^ ^17 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute if score VarRSchMS.1Zahl PZRSchMS.1Spielz matches 1..3 rotated ~90 ~ run function raumschach-minispiel:v1zug_springer
scoreboard players set VarRSchMS.1Zahl PZRSchMS.1Spielz 0
