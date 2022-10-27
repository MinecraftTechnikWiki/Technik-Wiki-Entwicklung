
scoreboard objectives add PZEisenB.1Schl minecraft.custom:minecraft.sneak_time ["Eisenbahn.1: ",{"text":"Schleichzeit","bold":true}]

give @a[distance=..15] minecraft:armor_stand{EigEisenB.1Alle:true,display:{Name:'{"text":"Eisenbahn","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um die Lok zu erstellen"']},EntityTag:{Invisible:true,Small:true,NoGravity:true,Tags:["EtiEisenB.1Alle","EtiEisenB.1Lok","EtiEisenB.1Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b}],Pose:{Head:[0.0f,0.0f,180.0f] } } } 16

give @a[distance=..15] minecraft:armor_stand{EigEisenB.1Alle:true,display:{Name:'{"text":"Eisenbahngleis","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um die Gleisstrecke zu erstellen"']},EntityTag:{Tags:["EtiEisenB.1Alle","EtiEisenB.1Bauwerk","EtiEisenB.1Strecke","EtiEisenB.1Gleis"]} } 16

give @a[distance=..15] minecraft:armor_stand{EigEisenB.1Alle:true,display:{Name:'{"text":"Eisenbahngleiskreuzung","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um die Gleisstrecke zu erstellen"']},EntityTag:{Tags:["EtiEisenB.1Alle","EtiEisenB.1Bauwerk","EtiEisenB.1Strecke","EtiEisenB.1Kreuzung"]} } 16

give @a[distance=..15] minecraft:armor_stand{EigEisenB.1Alle:true,display:{Name:'{"text":"Eisenbahnstation","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um die Station zu erstellen"']},EntityTag:{Tags:["EtiEisenB.1Alle","EtiEisenB.1Bauwerk","EtiEisenB.1Station"]} } 16

tellraw @a[distance=..15] ["Eisenbahn.1:\n",{"text":"Es gibt vier Rüstungsständer für die Eisenbahnlok. Der erste platziert die Lok auf einem Gleis, der zweite und dritte setzt das Eisenbahngleis und der vierte wird für das Setzen der Station verwendet.","bold":true}]

forceload add ~ ~
