
summon minecraft:armor_stand ~-12 ~ ~-12 {Invisible:true,CustomName:'{"text":"Plattform"}',Tags:["EtiBewS.p1Alle","EtiBewS.p1Plattform"] }
execute at @e[type=minecraft:armor_stand,tag=EtiBewS.p1Plattform] run fill ~ ~ ~ ~10 ~ ~10 minecraft:diamond_block
execute at @e[type=minecraft:armor_stand,tag=EtiBewS.p1Plattform] run setblock ~5 ~5 ~5 minecraft:barrier
execute at @e[type=minecraft:armor_stand,tag=EtiBewS.p1Plattform] run summon minecraft:armor_stand ~5 ~1 ~5 {Invisible:true,Small:true,NoBasePlate:true,CustomName:'{"text":"Kontrolleinheit"}',Tags:["EtiBewS.p1Alle","EtiBewS.p1Kontrolleinheit"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b} ] }
replaceitem entity @p[distance=..25] hotbar.4 minecraft:magenta_glazed_terracotta{EigBewS.p1Alle:true,display:{Name:'{"text":"Pfeiltasten"}',Lore:['"Wähle den magenta Block aus"','"um das Objekt zu steuern."']} } 1
tellraw @p[distance=..25] ["Bewegungssensor.erweitert.1: ",{"text":"Wähle den mittleren Slot mit dem magenta Block in der Schnellzugriffsleiste aus, um das Pfeilobjekt zu steuern.","bold":true} ]
