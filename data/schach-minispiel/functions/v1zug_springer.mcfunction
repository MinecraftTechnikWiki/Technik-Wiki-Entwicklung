
scoreboard players add VarSchMS.1Zahl PZSchMS.1Spielz 1
execute positioned ^3 ^-1 ^6 if block ~ ~ ~ #schach-minispiel:v1schachbloecke run function schach-minispiel:v1spielzug_anzeigen
execute positioned ^6 ^-1 ^3 if block ~ ~ ~ #schach-minispiel:v1schachbloecke run function schach-minispiel:v1spielzug_anzeigen
execute if score VarSchMS.1Zahl PZSchMS.1Spielz matches 1..3 rotated ~90 ~ run function schach-minispiel:v1zug_springer
scoreboard players set VarSchMS.1Zahl PZSchMS.1Spielz 0
