# Die Punktestand-Ziele für das Schleichen wie auch für alle Materialien werden erstellt
scoreboard objectives add PZBruB.3Schl minecraft.custom:minecraft.sneak_time ["Brückenbauer.3: ",{"text":"Schleichzeit","bold":true}]
scoreboard objectives add PZBruB.3Schien dummy ["Brückenbauer.3: ",{"text":"Schienen für den Verleger","bold":true}]
scoreboard objectives add PZBruB.3Schwel dummy ["Brückenbauer.3: ",{"text":"Schwellen für den Verleger","bold":true}]
scoreboard objectives add PZBruB.3Stein dummy ["Brückenbauer.3: ",{"text":"Stein für den Verleger","bold":true}]
scoreboard objectives add PZBruB.3Andes dummy ["Brückenbauer.3: ",{"text":"Andesit für den Verleger","bold":true}]
scoreboard objectives add PZBruB.3Pfeil dummy ["Brückenbauer.3: ",{"text":"Pfeilblöcke für den Verleger","bold":true}]

# Der Rüstungsständer der als Brückenabuer verwendet werden kann wird den Spielern gegeben
give @a[distance=..25] minecraft:armor_stand{display:{Name:"{\"text\":\"Brückenbauer\"}",Lore:["Brückenbauer.3"]},EntityTag:{Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:"{\"text\":\"Brückenbauer\"}",Tags:["EtiBruB.3Alle","EtiBruB.3Verleger","EtiBruB.3Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b} ],Pose:{Head:[0.0f,0.0f,180.0f] } } } 1
