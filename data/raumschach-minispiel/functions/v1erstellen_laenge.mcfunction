#say laenge
scoreboard players add VarRSchMS.1Laenge PZRSchMS.1Brett 1
scoreboard players set VarRSchMS.1Breite PZRSchMS.1Brett 0

execute if score VarRSchMS.1Laenge PZRSchMS.1Brett <= VarRSchMS.1LaengeMax PZRSchMS.1Brett run function raumschach-minispiel:v1erstellen_breite
execute if score VarRSchMS.1Laenge PZRSchMS.1Brett <= VarRSchMS.1LaengeMax PZRSchMS.1Brett positioned ~ ~ ~5 run function raumschach-minispiel:v1erstellen_laenge
