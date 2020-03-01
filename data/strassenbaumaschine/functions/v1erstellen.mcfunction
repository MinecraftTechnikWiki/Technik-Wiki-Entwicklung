# Damit die Erstellen-Funktion kein zweites mal aufgerufen wird, wird das Etikett von dem Gleisbaumaschine entfernt
tag @s remove EtiStraB.1Erstellen

# Weitere Rüstungsständer mit bestimmten Blöcken im Kopfslot werden erstellt um zu zeigen welche Blöcke platziert werden
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStraB.1Alle","EtiStraB.1Segment","EtiStraB.1StrasseMitte","EtiStraB.1Beton"],ArmorItems:[{},{},{},{id:"minecraft:gray_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStraB.1Alle","EtiStraB.1Segment","EtiStraB.1StrasseRechts","EtiStraB.1Beton"],ArmorItems:[{},{},{},{id:"minecraft:gray_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStraB.1Alle","EtiStraB.1Segment","EtiStraB.1StrasseLinks","EtiStraB.1Beton"],ArmorItems:[{},{},{},{id:"minecraft:gray_concrete",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStraB.1Alle","EtiStraB.1Segment","EtiStraB.1RandRechts","EtiStraB.1Quarz"],ArmorItems:[{},{},{},{id:"minecraft:smooth_quartz",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiStraB.1Alle","EtiStraB.1Segment","EtiStraB.1RandLinks","EtiStraB.1Quarz"],ArmorItems:[{},{},{},{id:"minecraft:smooth_quartz",Count:1b}]}


execute rotated ~ 0 run function strassenbaumaschine:v1ausrichtung
