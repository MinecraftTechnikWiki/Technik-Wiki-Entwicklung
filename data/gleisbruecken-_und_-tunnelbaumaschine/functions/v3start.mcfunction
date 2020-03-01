# Die Punktestand-Ziele für das Schleichen wie auch für alle Materialien werden erstellt
scoreboard objectives add PZGBuTB.3Schl minecraft.custom:minecraft.sneak_time ["Gleisbrücken- und -tunnelbaumaschine.3: ",{"text":"Schleichzeit","bold":true}]
scoreboard objectives add PZGBuTB.3Schien dummy ["Gleisbrücken- und -tunnelbaumaschine.3: ",{"text":"Schienen für den Baumaschine","bold":true}]
scoreboard objectives add PZGBuTB.3Schwel dummy ["Gleisbrücken- und -tunnelbaumaschine.3: ",{"text":"Schwellen für den Baumaschine","bold":true}]
scoreboard objectives add PZGBuTB.3Stein dummy ["Gleisbrücken- und -tunnelbaumaschine.3: ",{"text":"Stein für den Baumaschine","bold":true}]
scoreboard objectives add PZGBuTB.3Andes dummy ["Gleisbrücken- und -tunnelbaumaschine.3: ",{"text":"Andesit für den Baumaschine","bold":true}]
scoreboard objectives add PZGBuTB.3Pfeil dummy ["Gleisbrücken- und -tunnelbaumaschine.3: ",{"text":"Pfeilblöcke für den Baumaschine","bold":true}]

# Der Rüstungsständer der als Brückenabuer verwendet werden kann wird den Spielern gegeben
give @a[distance=..25] minecraft:armor_stand{gleisbruecken-_und_-tunnelbaumaschine:"v3gegenstand",display:{Name:'{"text":"Gleisbrücken- und -tunnelbaumaschine"}',Lore:['"Platziere den Rüstungsständer"','"um die Gleisbaumaschine zu erstellen"']},EntityTag:{Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Gleisbrücken- und -tunnelbaumaschine"}',Tags:["EtiGBuTB.3Alle","EtiGBuTB.3Baumaschine","EtiGBuTB.3Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b} ],Pose:{Head:[0.0f,0.0f,180.0f] } } } 1
