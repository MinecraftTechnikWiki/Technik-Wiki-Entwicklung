
scoreboard objectives add PZEisenB.1Schl minecraft.custom:minecraft.sneak_time ["Eisenbahn.1: ",{"text":"Schleichzeit","bold":true}]
scoreboard objectives add PZEisenB.1Waggon dummy ["Eisenbahn.1: ",{"text":"Anzahl der Waggons","bold":true}]

give @a[distance=..25] minecraft:armor_stand{display:{Lore:["Eisenbahn.1"]},EntityTag:{Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:"{\"text\":\"Eisenbahn\"}",Tags:["EtiEisenB.1Alle","EtiEisenB.1Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b} ],Pose:{Head:[0.0f,0.0f,180.0f] } } } 1

give @a[distance=..25] minecraft:furnace{display:{Name:"{\"text\":\"Lok\"}",Lore:["Eisenbahn.1"]} } 3
give @a[distance=..25] minecraft:chest{display:{Name:"{\"text\":\"Waggon\"}",Lore:["Eisenbahn.1"]} } 3
give @a[distance=..25] minecraft:shulker_box{display:{Name:"{\"text\":\"Steuerwaggon\"}",Lore:["Eisenbahn.1"]} } 3
