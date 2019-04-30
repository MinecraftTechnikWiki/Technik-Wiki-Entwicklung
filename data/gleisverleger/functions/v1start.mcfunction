# Punktestand-Ziele werden erstellt
scoreboard objectives add PZGleisV.1Schl minecraft.custom:minecraft.sneak_time ["Gleisverleger.1: ",{"text":"Schleichzeit","bold":true}]
scoreboard objectives add PZGleisV.1Gleis dummy ["Gleisverleger.1: ",{"text":"Schienen für den Verleger","bold":true}]
scoreboard objectives add PZGleisV.1Andes dummy ["Gleisverleger.1: ",{"text":"Andesit für den Verleger","bold":true}]
scoreboard objectives add PZGleisV.1Stein dummy ["Gleisverleger.1: ",{"text":"Steine für den Verleger","bold":true}]

# Spieler in einem Radius von 25 Blöcken erhalten einen Rüstungsständer der den Gleisverleger erstellt, wenn man ihn platziert
give @a[distance=..25] minecraft:armor_stand{display:{Name:"{\"text\":\"Gleisverleger\"}",Lore:["Gleisverleger.1"]},EntityTag:{Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:"{\"text\":\"Gleisverleger\"}",Tags:["EtiGleisV.1Alle","EtiGleisV.1Verleger","EtiGleisV.1Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b} ],Pose:{Head:[0.0f,0.0f,180.0f] } } } 16
