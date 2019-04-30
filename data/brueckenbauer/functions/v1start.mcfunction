# Die Punktestand-Ziele für die Schleichzeit und für die Materialien werden erstellt
scoreboard objectives add PZBruB.1Schl minecraft.custom:minecraft.sneak_time ["Brückenbauer.1: ",{"text":"Schleichzeit","bold":true}]
scoreboard objectives add PZBruB.1Gleis dummy ["Brückenbauer.1: ",{"text":"Schienen für den Verleger","bold":true}]
scoreboard objectives add PZBruB.1Andes dummy ["Brückenbauer.1: ",{"text":"Andesit für den Verleger","bold":true}]
scoreboard objectives add PZBruB.1Stein dummy ["Brückenbauer.1: ",{"text":"Steine für den Verleger","bold":true}]
scoreboard objectives add PZBruB.1Richt dummy ["Brückenbauer.1: ",{"text":"Richtung des Verleger","bold":true}]

# Der Spieler erhält einen Rüstungsständer, welcher platziert einen Brückenbauer erstellt
give @a[distance=..25] minecraft:armor_stand{display:{Name:"{\"text\":\"Brückenbauer\"}",Lore:["Brückenbauer.1"]},EntityTag:{Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:"{\"text\":\"Brückenbauer\"}",Tags:["EtiBruB.1Alle","EtiBruB.1Verleger","EtiBruB.1Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b} ],Pose:{Head:[0.0f,0.0f,180.0f] } } } 16
