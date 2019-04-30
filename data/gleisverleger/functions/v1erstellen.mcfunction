# Dem Spieler in der Nähe werden Schienen, Andesit und Steine gegeben
give @p[distance=..10] minecraft:rail{display:{Lore:["Gleisverleger.1"] } } 64
give @p[distance=..10] minecraft:andesite{display:{Lore:["Gleisverleger.1"] } } 64
give @p[distance=..10] minecraft:stone{display:{Lore:["Gleisverleger.1"] } } 128

# Falls es bereits einen Gleisverleger gibt, wird dieser entfernt, nicht aber der jetzt erstellte
kill @e[distance=0.9..,tag=EtiGleisV.1Alle]

# Weitere Rüstungsständer mit bestimmten Blöcken im Kopfslot werden erstellt um zu zeigen welche Blöcke platziert werden
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.1Alle","EtiGleisV.1Gleis1","EtiGleisV.1Gleis","EtiGleisV.1EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:rail",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.1Alle","EtiGleisV.1Gleisbett1","EtiGleisV.1Gleisbett","EtiGleisV.1EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.1Alle","EtiGleisV.1Rechts1","EtiGleisV.1Gleisspur","EtiGleisV.1EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.1Alle","EtiGleisV.1Links1","EtiGleisV.1Gleisspur","EtiGleisV.1EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}

# Falls der Spieler zwei Spuren bauen möchte, werden auch weitere Rüstungsständer für die zweite Spur erstellt
execute if entity @s[tag=EtiGleisV.1ZweiSpuren] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.1Alle","EtiGleisV.1Gleis2","EtiGleisV.1Gleis"],ArmorItems:[{},{},{},{id:"minecraft:rail",Count:1b}]}
execute if entity @s[tag=EtiGleisV.1ZweiSpuren] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.1Alle","EtiGleisV.1Gleisbett2","EtiGleisV.1Gleisbett"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
execute if entity @s[tag=EtiGleisV.1ZweiSpuren] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.1Alle","EtiGleisV.1Rechts2","EtiGleisV.1Gleisspur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}

# Damit die Erstellen-Funktion kein zweites mal aufgerufen wird, wird das Etikett von dem Gleisverleger entfernt
tag @s remove EtiGleisV.1Erstellen
