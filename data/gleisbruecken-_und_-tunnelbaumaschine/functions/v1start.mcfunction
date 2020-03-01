# Die Punktestand-Ziele für die Schleichzeit und für die Materialien werden erstellt
scoreboard objectives add PZGBuTB.1Schl minecraft.custom:minecraft.sneak_time ["Gleisbrücken- und -tunnelbaumaschine.1: ",{"text":"Schleichzeit","bold":true}]
scoreboard objectives add PZGBuTB.1Gleis dummy ["Gleisbrücken- und -tunnelbaumaschine.1: ",{"text":"Schienen für den Baumaschine","bold":true}]
scoreboard objectives add PZGBuTB.1Andes dummy ["Gleisbrücken- und -tunnelbaumaschine.1: ",{"text":"Andesit für den Baumaschine","bold":true}]
scoreboard objectives add PZGBuTB.1Stein dummy ["Gleisbrücken- und -tunnelbaumaschine.1: ",{"text":"Steine für den Baumaschine","bold":true}]
scoreboard objectives add PZGBuTB.1Richt dummy ["Gleisbrücken- und -tunnelbaumaschine.1: ",{"text":"Richtung des Baumaschine","bold":true}]

# Der Spieler erhält einen Rüstungsständer, welcher platziert einen Brückenbauer erstellt
give @a[distance=..25] minecraft:armor_stand{gleisbruecken-_und_-tunnelbaumaschine:"v1gegenstand",display:{Name:'{"text":"Gleisbrücken- und -tunnelbaumaschine","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um die Gleisbaumaschine zu erstellen"']},EntityTag:{Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Gleisbrücken- und -tunnelbaumaschine","color":"gold","bold":true}',Tags:["EtiGBuTB.1Alle","EtiGBuTB.1Baumaschine","EtiGBuTB.1Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b} ],Pose:{Head:[0.0f,0.0f,180.0f] } } } 16
