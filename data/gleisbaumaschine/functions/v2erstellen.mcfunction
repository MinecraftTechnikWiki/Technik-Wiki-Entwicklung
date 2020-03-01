# Falls es bereits einen Gleisbaumaschine gibt, wird dieser entfernt, nicht aber der jetzt erstellte
kill @e[distance=0.9..,tag=EtiGleisB.2Alle]

# Weitere Rüstungsständer mit bestimmten Blöcken im Kopfslot werden erstellt um zu zeigen welche Blöcke platziert werden
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.2Alle","EtiGleisB.2Gleis1","EtiGleisB.2Gleis","EtiGleisB.2EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:rail",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.2Alle","EtiGleisB.2Gleisbett1","EtiGleisB.2Gleisbett","EtiGleisB.2EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.2Alle","EtiGleisB.2Rechts1","EtiGleisB.2Gleisspur","EtiGleisB.2EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.2Alle","EtiGleisB.2Links1","EtiGleisB.2Gleisspur","EtiGleisB.2EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}

# Falls der Spieler zwei Spuren bauen möchte, werden auch weitere Rüstungsständer für die zweite Spur erstellt
execute if entity @s[tag=EtiGleisB.2ZweiSpuren] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.2Alle","EtiGleisB.2Gleis2","EtiGleisB.2Gleis"],ArmorItems:[{},{},{},{id:"minecraft:rail",Count:1b}]}
execute if entity @s[tag=EtiGleisB.2ZweiSpuren] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.2Alle","EtiGleisB.2Gleisbett2","EtiGleisB.2Gleisbett"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
execute if entity @s[tag=EtiGleisB.2ZweiSpuren] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.2Alle","EtiGleisB.2Rechts2","EtiGleisB.2Gleisspur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}

# Damit die Erstellen-Funktion kein zweites mal aufgerufen wird, wird das Etikett von dem Gleisbaumaschine entfernt
tag @s remove EtiGleisB.2Erstellen
