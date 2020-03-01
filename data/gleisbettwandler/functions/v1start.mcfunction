
scoreboard objectives add PZGlBW.1Schl minecraft.custom:minecraft.sneak_time ["Gleisbettwandler.1: ",{"text":"Schleichzeit","bold":true}]
scoreboard objectives add PZGlBW.1Erfolg dummy ["Gleisbettwandler.1: ",{"text":"Steine für den Verleger","bold":true}]

summon minecraft:area_effect_cloud ~ ~1.5 ~-1 {Duration:2147483647,CustomNameVisible:true,CustomName:'{"text":"Platziere den Block"}',Tags:["EtiGlBW.1Alle"]}
execute at @e[type=minecraft:area_effect_cloud,tag=EtiGlBW.1Alle] run setblock ~ ~-1.5 ~ minecraft:structure_block{posX:0,posY:1,posZ:0,sizeX:1,sizeY:1,sizeZ:1,ignoreEntities:true,mode:"SAVE",name:"gleisbettwandler:v1gleisbett"}

give @a[distance=..25] minecraft:armor_stand{gleisbettwandler:"v1gegenstand",display:{Name:'{"text":"Gleisbettwandler"}',Lore:['"Platziere den Rüstungsständer"','"um den Gleisbettwandler zu erstellen"']},EntityTag:{Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Gleisbettwandler"}',Tags:["EtiGlBW.1Alle","EtiGlBW.1Wandler","EtiGlBW.1Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b} ],Pose:{Head:[0f,0f,180f] } } } 1

give @p[distance=..25] minecraft:andesite{gleisbettwandler:"v1gegenstand"} 1
give @p[distance=..25] minecraft:diorite{gleisbettwandler:"v1gegenstand"} 1
give @p[distance=..25] minecraft:granite{gleisbettwandler:"v1gegenstand"} 1
give @p[distance=..25] minecraft:gravel{gleisbettwandler:"v1gegenstand"} 1

tellraw @a[distance=..15] ["Gleisbettwandler.1: ",{"text":"Platziere den Gleisbettwandler auf Schienen und drücke Shift um ihn zu steuern. Setze auf den Konstruktionsblock einen Block deiner Wahl um das Gleisbett festzulegen","bold":true}]
