
scoreboard objectives add PZSchwB.1Schl minecraft.custom:minecraft.sneak_time ["Schwebebahn.1: ",{"text":"Schleichzeit","bold":true}]

give @a[distance=..15] minecraft:armor_stand{EigSchwB.1Alle:true,display:{Name:'{"text":"Schwebebahn","color":"gold"}',Lore:['"Platziere den Rüstungsständer"','"unter dem Schwebebahngleis"','"und stelle dich in den Zug"','"und schleiche mit der Taste Shift"','"um ihn zu steuern"']},EntityTag:{Invisible:true,NoGravity:true,ShowArms:true,Pose:{LeftArm:[90.0f,0.0f,0.0f],RightArm:[90.0f,0.0f,0.0f]},Tags:["EtiSchwB.1Alle","EtiSchwB.1ZugEnde","EtiSchwB.1Erstellen"]} }

give @a[distance=..15] minecraft:armor_stand{EigSchwB.1Alle:true,display:{Name:'{"text":"Schwebebahn-Strecke"}',Lore:['"Platziere den Rüstungsständer"','"um eine Schwebebahn-Strecke"','"zu erstellen"'] },EntityTag:{Tags:["EtiSchwB.1Alle","EtiSchwB.1Strecke"] } }

tellraw @a[distance=..15] ["Schwebebahn.1:\n",{"text":"Wähle den Schwebebahn-Rüstungsständer aus und stelle dich unter das Schwebebahngleis, sodass der Spieler fünf Blöcke unter den magenta Pfeilblöcken entgegen der Fahrtrichtung steht und platziere diesen, um die Schwebebahn zu erstellen.","bold":true}]
