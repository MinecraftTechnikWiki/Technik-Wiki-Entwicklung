
scoreboard objectives add PZStraB.1Schl minecraft.custom:minecraft.sneak_time ["Straßenbaumaschine.1: ",{"text":"Schleichzeit","bold":true}]
scoreboard objectives add PZStraB.1Brenn dummy ["Straßenbaumaschine.1: ",{"text":"Brennstoff","bold":true}]
scoreboard objectives add PZStraB.1Beton dummy ["Straßenbaumaschine.1: ",{"text":"Grauer Beton","bold":true}]
scoreboard objectives add PZStraB.1Quarz dummy ["Straßenbaumaschine.1: ",{"text":"Glatter Quarzblock","bold":true}]

gamemode survival @a[distance=..25,gamemode=!survival]

give @a[distance=..15] minecraft:hopper{strassenbaumaschine:"v1gegenstand",display:{Lore:['"Wirf den Gegenstand mit weiteren"','"auf den Boden, um daraus"','"beim richtigen Rezept die"','"Strassenbaumaschine zu erhalten"']} }
give @a[distance=..15] minecraft:observer{strassenbaumaschine:"v1gegenstand",display:{Lore:['"Wirf den Gegenstand mit weiteren"','"auf den Boden, um daraus"','"beim richtigen Rezept die"','"Strassenbaumaschine zu erhalten"']} }
give @a[distance=..15] minecraft:dispenser{strassenbaumaschine:"v1gegenstand",display:{Lore:['"Wirf den Gegenstand mit weiteren"','"auf den Boden, um daraus"','"beim richtigen Rezept die"','"Strassenbaumaschine zu erhalten"']} }
give @a[distance=..15] minecraft:iron_ingot{strassenbaumaschine:"v1gegenstand",display:{Lore:['"Wirf den Gegenstand mit weiteren"','"auf den Boden, um daraus"','"beim richtigen Rezept die"','"Strassenbaumaschine zu erhalten"']} }
give @a[distance=..15] minecraft:saddle{strassenbaumaschine:"v1gegenstand",display:{Lore:['"Wirf den Gegenstand mit weiteren"','"auf den Boden, um daraus"','"beim richtigen Rezept die"','"Strassenbaumaschine zu erhalten"']} }
give @a[distance=..15] minecraft:diamond_pickaxe{strassenbaumaschine:"v1gegenstand",Enchantments:[{id:"minecraft:mending",lvl:1s}],display:{Lore:['"Wirf den Gegenstand mit weiteren"','"auf den Boden, um daraus"','"beim richtigen Rezept die"','"Strassenbaumaschine zu erhalten"']} }

give @a[distance=..15] minecraft:coal{strassenbaumaschine:"v1gegenstand"} 64
give @a[distance=..15] minecraft:gray_concrete{strassenbaumaschine:"v1gegenstand"} 192
give @a[distance=..15] minecraft:smooth_quartz{strassenbaumaschine:"v1gegenstand"} 128

tellraw @a[distance=..15] ["Straßenbaumaschine.1: ",{"text":"Wirf die Gegenstände auf den Boden um eine Straßenbaumaschine in Form eines Rüstungsständers zu erhalten. Den Rüstungsständer muss man platzieren und anschließend kann der Brennstoff durch das Auswählen von Kohle in der Schnelleiste und das Drücken von Shift aufgetankt werden. Ist die Straßenbaumaschine mit genug Brennstoff versorgt, wählt man das Schwert aus und Drückt ebenfalls Shift um die Länge der Straßenstrecke zu bestimmen.","bold":true}]
