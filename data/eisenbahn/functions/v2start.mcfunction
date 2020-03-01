
scoreboard objectives add PZEisenB.2Schl minecraft.custom:minecraft.sneak_time ["Eisenbahn.2: ",{"text":"Schleichzeit","bold":true}]

give @a[distance=..25] minecraft:armor_stand{EigEisenB.2Alle:true,display:{Name:'{"text":"Eisenbahn"}',Lore:['"Platziere den Rüstungsständer"','"um die Lok zu erstellen"']},EntityTag:{Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Eisenbahn"}',Tags:["EtiEisenB.2Alle","EtiEisenB.2Lok","EtiEisenB.2Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b}],Pose:{Head:[0.0f,0.0f,180.0f] } } }

give @a[distance=..25] minecraft:armor_stand{EigEisenB.2Alle:true,display:{Name:'{"text":"Eisenbahnstrecke"}',Lore:['"Platziere den Rüstungsständer"','"um die Gleisstrecke zu erstellen"']},EntityTag:{Tags:["EtiEisenB.2Alle","EtiEisenB.2Bauwerk","EtiEisenB.2Gleisstrecke"]} }

give @a[distance=..25] minecraft:armor_stand{EigEisenB.2Alle:true,display:{Name:'{"text":"Eisenbahnstation"}',Lore:['"Platziere den Rüstungsständer"','"um die Station zu erstellen"']},EntityTag:{Tags:["EtiEisenB.2Alle","EtiEisenB.2Bauwerk","EtiEisenB.2Station"]} }

tellraw @a[distance=..15] ["Eisenbahn.2: ",{"text":"Es gibt drei Rüstungsständer für die Eisenbahnlok. Der erste platziert die Lok auf einem Gleis, der zweite setzt das Eisenbahngleis und der dritte wird für die Station verwendet.","bold":true}]
