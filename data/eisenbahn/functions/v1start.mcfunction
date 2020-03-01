
scoreboard objectives add PZEisenB.1Schl minecraft.custom:minecraft.sneak_time ["Eisenbahn.1: ",{"text":"Schleichzeit","bold":true}]
scoreboard objectives add PZEisenB.1Waggon dummy ["Eisenbahn.1: ",{"text":"Anzahl der Waggons","bold":true}]

give @a[distance=..25] minecraft:armor_stand{eisenbahn:"v1gegenstand",display:{Name:'{"text":"Eisenbahn"}',Lore:['"Platziere den Rüstungsständer"','"um das Anfangsmodul der"','"der Eisenbahn zu erstellen"']},EntityTag:{Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Eisenbahn"}',Tags:["EtiEisenB.1Alle","EtiEisenB.1Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b}],Pose:{Head:[0.0f,0.0f,180.0f] } } } 1

give @a[distance=..25] minecraft:furnace{eisenbahn:"v1gegenstand",display:{Name:'{"text":"Lok"}',Lore:['"Wirf den Gegenstand"','"auf die Eisenbahn,"','"um den Zug zu vergrößern"']} } 3
give @a[distance=..25] minecraft:chest{eisenbahn:"v1gegenstand",display:{Name:'{"text":"Waggon"}',Lore:['"Wirf den Gegenstand"','"auf die Eisenbahn,"','"um den Zug zu vergrößern"']} } 3
give @a[distance=..25] minecraft:shulker_box{eisenbahn:"v1gegenstand",display:{Name:'{"text":"Steuerwaggon"}',Lore:['"Wirf den Gegenstand"','"auf die Eisenbahn,"','"um den Zug zu vergrößern"']} } 3

tellraw @a[distance=..15] ["Eisenbahn.1: ",{"text":"Öffne mit der Taste E das Inventar und fahre mit der Maus über die Gegenstände, um zu erfahren wie man sie benutzt. Nachdem die Eisenbahn mit Waggons erstellt ist, schleiche mit der Taste Shift und schaue in die Fahrtrichtung, um den Zug zu fahren.","bold":true}]
