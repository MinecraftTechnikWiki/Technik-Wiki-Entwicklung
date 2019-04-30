
summon minecraft:armor_stand ~-12 ~ ~-12 {Invisible:true,CustomName:"{\"text\":\"ObjPfeilTS.1Plattform\"}",Tags:["EtiPfeilTS.1Alle"] }
execute at @e[type=minecraft:armor_stand,name=ObjPfeilTS.1Plattform] run fill ~ ~ ~ ~10 ~ ~10 minecraft:diamond_block
execute at @e[type=minecraft:armor_stand,name=ObjPfeilTS.1Plattform] run setblock ~5 ~5 ~5 minecraft:barrier
execute at @e[type=minecraft:armor_stand,name=ObjPfeilTS.1Plattform] run summon minecraft:armor_stand ~5 ~1 ~5 {Invisible:true,Small:true,NoBasePlate:true,CustomName:"{\"text\":\"ObjPfeilTS.1Kontrolleinheit\"}",Tags:["EtiPfeilTS.1Alle"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b} ] }
replaceitem entity @p[distance=..25] hotbar.4 minecraft:magenta_glazed_terracotta{display:{Name:"{\"text\":\"Pfeiltasten\"}",Lore:["Pfeiltasten-Sensor.1"]} } 1
tellraw @p[distance=..25] ["Pfeiltasten-Sensor:1 ",{"text":"Wähle den mittleren Slot mit dem magenta Block in der Schnellzugriffsleiste aus, um die Pfeiltasten abzufragen.","bold":true} ]
