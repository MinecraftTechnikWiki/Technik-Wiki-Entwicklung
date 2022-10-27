
scoreboard objectives add PZEisenB.2Schl minecraft.custom:minecraft.sneak_time ["Eisenbahn.2: ",{"text":"Schleichzeit","bold":true}]
scoreboard objectives add PZEisenB.2Waggon dummy ["Eisenbahn.2: ",{"text":"Anzahl der Waggons","bold":true}]

give @a[distance=..15] minecraft:armor_stand{EigEisenB.2Alle:true,display:{Name:'{"text":"Eisenbahn","color":"red","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um das Anfangsmodul der"','"Eisenbahn zu erstellen"']},EntityTag:{Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Eisenbahn","color":"red","bold":true}',Tags:["EtiEisenB.2Alle","EtiEisenB.2Zug","EtiEisenB.2Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:magenta_glazed_terracotta",Count:1b}],Pose:{Head:[0.0f,0.0f,180.0f] } } } 1

give @a[distance=..15] minecraft:furnace{EigEisenB.2Alle:true,display:{Name:'{"text":"Lok","color":"red","bold":true}',Lore:['"Wirf den Gegenstand"','"auf die Eisenbahn,"','"um den Zug zu vergrößern"']} } 3
give @a[distance=..15] minecraft:chest{EigEisenB.2Alle:true,display:{Name:'{"text":"Waggon","color":"red","bold":true}',Lore:['"Wirf den Gegenstand"','"auf die Eisenbahn,"','"um den Zug zu vergrößern"']} } 3
give @a[distance=..15] minecraft:shulker_box{EigEisenB.2Alle:true,display:{Name:'{"text":"Steuerwaggon","color":"red","bold":true}',Lore:['"Wirf den Gegenstand"','"auf die Eisenbahn,"','"um den Zug zu vergrößern"']} } 3

tellraw @a[distance=..15] ["Eisenbahn.2:\n",{"text":"Öffne mit der Taste E das Inventar und fahre mit der Maus über die Gegenstände, um zu erfahren wie man sie benutzt. Nachdem die Eisenbahn mit Waggons erstellt ist, schleiche mit der Taste Shift und schaue in die Fahrtrichtung, um den Zug zu fahren.","bold":true}]
