
execute as @a[tag=EtiObjSt.10Spieler,scores={PZObjSt.10Laenge=1..}] run function objekt-steuerung:v10laenge
execute as @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle,scores={PZObjSt.10Laenge=0}] at @s run teleport @s ^ ^ ^0.1 facing entity @p[distance=0.5..,tag=EtiObjSt.10Spieler] feet
execute as @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle,scores={PZObjSt.10Laenge=1..}] at @s run function objekt-steuerung:v10folgen
