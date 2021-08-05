
teleport @s[tag=EtiAnzTaf.1Position] ~ ~3 ~
tag @s[tag=EtiAnzTaf.1Position] remove EtiAnzTaf.1Position

execute at @s positioned ~-0.5 ~ ~-0.5 run kill @e[dx=1,dy=-10,dz=1,type=minecraft:armor_stand,tag=EtiAnzTaf.1TafelRang]

scoreboard players set VarAnzTaf.1Rangfolge PZAnzTaf.1Wert 0
execute store result score VarAnzTaf.1Rangliste PZAnzTaf.1Wert if entity @e[tag=EtiAnzTaf.1Rangliste]
execute if score VarAnzTaf.1Rangliste PZAnzTaf.1Wert matches 1.. at @s positioned ~ ~-0.4 ~ run function anzeigetafel:v1rangliste

tag @e[tag=EtiAnzTaf.1Erledigt] remove EtiAnzTaf.1Erledigt
