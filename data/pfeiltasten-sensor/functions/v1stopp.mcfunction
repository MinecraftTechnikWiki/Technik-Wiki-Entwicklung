
execute at @e[type=minecraft:armor_stand,name=ObjPfeilTS.1Plattform] run fill ~ ~ ~ ~10 ~10 ~10 minecraft:air
clear @a[distance=..50] minecraft:magenta_glazed_terracotta{display:{Lore:["Pfeiltasten-Sensor.1"]} }
tag @a[tag=EtiPfeilTS.1Aktion] remove EtiPfeilTS.1Aktion
kill @e[type=minecraft:armor_stand,tag=EtiPfeilTS.1Alle]
