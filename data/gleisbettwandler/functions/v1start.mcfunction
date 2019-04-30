
scoreboard objectives add PZGlBW.1Schl minecraft.custom:minecraft.sneak_time ["Gleisverleger.1: ",{"text":"Schleichzeit","bold":true}]
scoreboard objectives add PZGlBW.1Erfolg dummy ["Gleisverleger.1: ",{"text":"Steine für den Verleger","bold":true}]

summon minecraft:area_effect_cloud ~ ~1.5 ~ {Duration:2147483647,CustomNameVisible:true,CustomName:"{\"text\":\"Platziere den Block\"}",Tags:["EtiGlBW.1Alle"]}
execute at @e[type=minecraft:area_effect_cloud,tag=EtiGlBW.1Alle] run setblock ~ ~-1.5 ~ minecraft:structure_block{posX:0,posY:1,posZ:0,sizeX:1,sizeY:1,sizeZ:1,ignoreEntities:true,mode:"SAVE",name:"gleisbettwandler:v1gleisbett"}

give @a[distance=..25] minecraft:armor_stand{display:{Lore:["Gleisbettwandler.1"]},EntityTag:{Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:"{\"text\":\"Gleisbettwandler\"}",Tags:["EtiGlBW.1Alle","EtiGlBW.1Wandler","EtiGlBW.1Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b} ],Pose:{Head:[0f,0f,180f] } } } 1

give @p[distance=..25] minecraft:andesite{display:{Lore:["Gleisbettwandler.1"]}} 1
give @p[distance=..25] minecraft:diorite{display:{Lore:["Gleisbettwandler.1"]}} 1
give @p[distance=..25] minecraft:granite{display:{Lore:["Gleisbettwandler.1"]}} 1
give @p[distance=..25] minecraft:gravel{display:{Lore:["Gleisbettwandler.1"]}} 1
