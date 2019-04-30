
scoreboard players set @s PZKugelG.3Hor 0
scoreboard players set @s PZKugelG.3Vert 0
tag @s remove EtiKugelG.3Erstellen
tag @s add EtiKugelG.3Kern
teleport @s ~ ~15 ~

scoreboard players set VarKugelG.3Zahl PZKugelG.3Hor 0
execute at @s positioned ~12 ~-12 ~12 run function kugelgenerator:v3erstellen_groesse
