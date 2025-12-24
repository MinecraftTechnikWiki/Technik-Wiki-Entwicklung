
scoreboard players add VarHordMS.1Breite PZHordMS.1Ausl 1
scoreboard players set VarHordMS.1Laenge PZHordMS.1Ausl 1

function horde-minispiel:v1erstellen_laenge

execute if score VarHordMS.1Breite PZHordMS.1Ausl matches ..5 positioned ~10 ~ ~ run function horde-minispiel:v1erstellen_breite
