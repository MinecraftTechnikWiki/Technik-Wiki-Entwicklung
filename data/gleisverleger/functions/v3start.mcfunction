# Punktestand-Ziele für die Schleichzeit und die Materialien werden erstellt
scoreboard objectives add PZGleisV.3Schl minecraft.custom:minecraft.sneak_time ["Gleisverleger.3: ",{"text":"Schleichzeit","bold":true}]
scoreboard objectives add PZGleisV.3Schien dummy ["Gleisverleger.3: ",{"text":"Schienen für den Verleger","bold":true}]
scoreboard objectives add PZGleisV.3Schwel dummy ["Gleisverleger.3: ",{"text":"Schwellen für den Verleger","bold":true}]
scoreboard objectives add PZGleisV.3Stein dummy ["Gleisverleger.3: ",{"text":"Stein für den Verleger","bold":true}]
scoreboard objectives add PZGleisV.3Andes dummy ["Gleisverleger.3: ",{"text":"Andesit für den Verleger","bold":true}]
scoreboard objectives add PZGleisV.3Pfeil dummy ["Gleisverleger.3: ",{"text":"Pfeilblöcke für den Verleger","bold":true}]

# Der Rüstungsständer der als Gleisverleger fungiert, wird dem Spieler gegeben
give @a[distance=..25] minecraft:armor_stand{display:{Name:"{\"text\":\"Gleisverleger\"}",Lore:["Gleisverleger.3"]},EntityTag:{Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:"{\"text\":\"Gleisverleger\"}",Tags:["EtiGleisV.3Alle","EtiGleisV.3Verleger","EtiGleisV.3Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b} ],Pose:{Head:[0.0f,0.0f,180.0f] } } } 1
