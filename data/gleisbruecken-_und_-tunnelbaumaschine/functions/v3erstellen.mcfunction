# Dem Spieler werden alle Materialien gegeben die er für den Bau der Brücken und Tunnel benötigt
give @p[distance=..10] minecraft:stone_brick_stairs{gleisbruecken-_und_-tunnelbaumaschine:"v3gegenstand"} 128
give @p[distance=..10] minecraft:spruce_slab{gleisbruecken-_und_-tunnelbaumaschine:"v3gegenstand"} 192
give @p[distance=..10] minecraft:smooth_stone{gleisbruecken-_und_-tunnelbaumaschine:"v3gegenstand"} 896
give @p[distance=..10] minecraft:andesite{gleisbruecken-_und_-tunnelbaumaschine:"v3gegenstand"} 256
give @p[distance=..10] minecraft:magenta_glazed_terracotta{gleisbruecken-_und_-tunnelbaumaschine:"v3gegenstand"} 64

# Alle anderen Brückenbauer werden entfernt
kill @e[distance=0.9..,tag=EtiGBuTB.3Alle]

# Damit die Blöcke die der Brückenbauer platziert auch schon vorher zu erahnen sind, werden Rüstungsständer mit dem entsprechenden Block im Kopfslot gespawnt
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.3Alle","EtiGBuTB.3SchieneRechts","EtiGBuTB.3Gleis1","EtiGBuTB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:stone_brick_stairs",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.3Alle","EtiGBuTB.3SchieneLinks","EtiGBuTB.3Gleis1","EtiGBuTB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:stone_brick_stairs",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.3Alle","EtiGBuTB.3Rechts1","EtiGBuTB.3Gleisspur","EtiGBuTB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.3Alle","EtiGBuTB.3Links1","EtiGBuTB.3Gleisspur","EtiGBuTB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.3Alle","EtiGBuTB.3SchwelleRechts1","EtiGBuTB.3Schwelle","EtiGBuTB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:spruce_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.3Alle","EtiGBuTB.3SchwelleMitte1","EtiGBuTB.3Schwelle","EtiGBuTB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:spruce_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.3Alle","EtiGBuTB.3SchwelleLinks1","EtiGBuTB.3Schwelle","EtiGBuTB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:spruce_slab",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.3Alle","EtiGBuTB.3Schotter1","EtiGBuTB.3Gleisbett1","EtiGBuTB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.3Alle","EtiGBuTB.3Schotter2","EtiGBuTB.3Gleisbett1","EtiGBuTB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.3Alle","EtiGBuTB.3Schotter3","EtiGBuTB.3Gleisbett1","EtiGBuTB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.3Alle","EtiGBuTB.3Schotter4","EtiGBuTB.3Gleisbett1","EtiGBuTB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}

# Damit diese Funktion nicht erneut aufgerufen wird, wird das Etikett entfernt
tag @s remove EtiGBuTB.3Erstellen
