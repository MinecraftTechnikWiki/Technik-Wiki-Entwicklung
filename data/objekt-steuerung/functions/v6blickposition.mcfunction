
execute unless entity @p[distance=..25] run teleport @e[type=minecraft:armor_stand,tag=EtiObjSt.6Alle] ~ ~ ~
execute unless block ^ ^ ^1 minecraft:air run teleport @e[type=minecraft:armor_stand,tag=EtiObjSt.6Alle] ~ ~ ~
execute if entity @p[distance=..25] positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air run function objekt-steuerung:v6blickposition
