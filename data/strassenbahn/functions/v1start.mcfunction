
scoreboard objectives add PZStrasB.1Schl minecraft.custom:minecraft.sneak_time ["Straßenbahn.1: ",{"text":"Schleichzeit","bold":true}]

give @a[distance=..25] minecraft:armor_stand{EigStrasB.1Alle:true,display:{Name:'{"text":"Straßenbahn"}',Lore:['"Platziere den Rüstungsständer"','"um die Tram zu erstellen"']},EntityTag:{Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Tram"}',Tags:["EtiStrasB.1Alle","EtiStrasB.1Tram","EtiStrasB.1Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:quartz_block",Count:1b}],Pose:{Head:[0.0f,0.0f,180.0f] } } }

give @a[distance=..25] minecraft:armor_stand{EigStrasB.1Alle:true,display:{Name:'{"text":"Straßenbahnstrecke"}',Lore:['"Platziere den Rüstungsständer"','"um die Gleisstrecke zu erstellen"']},EntityTag:{Tags:["EtiStrasB.1Alle","EtiStrasB.1Bauwerk","EtiStrasB.1TramStrecke"]} }

give @a[distance=..25] minecraft:armor_stand{EigStrasB.1Alle:true,display:{Name:'{"text":"Straßenbahnstrecke (Gras)"}',Lore:['"Platziere den Rüstungsständer"','"um die Station zu erstellen"']},EntityTag:{Tags:["EtiStrasB.1Alle","EtiStrasB.1Bauwerk","EtiStrasB.1TramStreckeGras"]} }

tellraw @a[distance=..15] ["Straßenbahn.1: ",{"text":"Es gibt drei Rüstungsständer für die Straßenbahn. Der erste platziert die Straßenbahn auf einem Gleis, der zweite setzt das Straßenbahngleis ohne Gras und der dritte mit Gras.","bold":true}]
