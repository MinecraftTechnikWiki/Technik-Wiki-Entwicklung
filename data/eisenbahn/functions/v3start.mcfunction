
scoreboard objectives add PZEisenB.3Schl minecraft.custom:minecraft.sneak_time ["Eisenbahn.3: ",{"text":"Schleichzeit","bold":true}]

give @a[distance=..25] minecraft:armor_stand{EigEisenB.3Alle:true,display:{Name:'{"text":"Straßenbahn"}',Lore:['"Platziere den Rüstungsständer"','"um die Tram zu erstellen"']},EntityTag:{Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Tram"}',Tags:["EtiEisenB.3Alle","EtiEisenB.3Tram","EtiEisenB.3Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:quartz_block",Count:1b}],Pose:{Head:[0.0f,0.0f,180.0f] } } }

give @a[distance=..25] minecraft:armor_stand{EigEisenB.3Alle:true,display:{Name:'{"text":"Straßenbahnstrecke"}',Lore:['"Platziere den Rüstungsständer"','"um die Gleisstrecke zu erstellen"']},EntityTag:{Tags:["EtiEisenB.3Alle","EtiEisenB.3Bauwerk","EtiEisenB.3TramStrecke"]} }

give @a[distance=..25] minecraft:armor_stand{EigEisenB.3Alle:true,display:{Name:'{"text":"Straßenbahnstrecke (Gras)"}',Lore:['"Platziere den Rüstungsständer"','"um die Station zu erstellen"']},EntityTag:{Tags:["EtiEisenB.3Alle","EtiEisenB.3Bauwerk","EtiEisenB.3TramStreckeGras"]} }

tellraw @a[distance=..15] ["Eisenbahn.3: ",{"text":"Es gibt drei Rüstungsständer für die Straßenbahn. Der erste platziert die Straßenbahn auf einem Gleis, der zweite setzt das Straßenbahngleis ohne Gras und der dritte mit Gras.","bold":true}]
