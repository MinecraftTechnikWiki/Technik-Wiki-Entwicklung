# Der Mittelpunkt-Rüstungsständer wird jeden Tick etwas rotiert und Begleiter-Rüstungsständer ordnen sich durch die Funktion ein
execute as @e[type=minecraft:armor_stand,tag=EtiObjSt.8Mittelpunkt] at @s run teleport @s ~ ~ ~ ~1 ~
execute as @e[type=minecraft:armor_stand,tag=EtiObjSt.8Begleiter] at @e[type=minecraft:armor_stand,tag=EtiObjSt.8Mittelpunkt] positioned ^ ^ ^1 run function objekt-steuerung:v8kettenposition
