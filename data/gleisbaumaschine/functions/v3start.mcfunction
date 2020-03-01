# Punktestand-Ziele für die Schleichzeit und die Materialien werden erstellt
scoreboard objectives add PZGleisB.3Schl minecraft.custom:minecraft.sneak_time ["Gleisbaumaschine.3: ",{"text":"Schleichzeit","bold":true}]
scoreboard objectives add PZGleisB.3Schien dummy ["Gleisbaumaschine.3: ",{"text":"Schienen für den Verleger","bold":true}]
scoreboard objectives add PZGleisB.3Schwel dummy ["Gleisbaumaschine.3: ",{"text":"Schwellen für den Verleger","bold":true}]
scoreboard objectives add PZGleisB.3Stein dummy ["Gleisbaumaschine.3: ",{"text":"Stein für den Verleger","bold":true}]
scoreboard objectives add PZGleisB.3Andes dummy ["Gleisbaumaschine.3: ",{"text":"Andesit für den Verleger","bold":true}]
scoreboard objectives add PZGleisB.3Pfeil dummy ["Gleisbaumaschine.3: ",{"text":"Pfeilblöcke für den Verleger","bold":true}]

# Der Rüstungsständer der als Gleisbaumaschine fungiert, wird dem Spieler gegeben
give @a[distance=..25] minecraft:armor_stand{gleisbaumaschine:"v3gegenstand",display:{Name:'{"text":"Gleisbaumaschine"}',Lore:['"Platziere den Rüstungsständer"','"um eine Gleisbaumaschine zu erstellen"']},EntityTag:{Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Gleisbaumaschine"}',Tags:["EtiGleisB.3Alle","EtiGleisB.3Verleger","EtiGleisB.3Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b} ],Pose:{Head:[0.0f,0.0f,180.0f] } } } 1
