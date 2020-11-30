
execute as @e[type=minecraft:armor_stand,tag=EtiTuriM.1Erstellen] at @s run function turingmaschine:v1erstellen

execute if entity @e[type=minecraft:armor_stand,tag=EtiTuriM.1Turingmaschine] as @a[distance=..50] unless entity @s[scores={PZTuriM.1Wert=0}] run function turingmaschine:v1ausloeser
