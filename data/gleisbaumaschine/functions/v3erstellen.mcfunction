# Dem Spieler werden alle Materialien gegeben die er für den Gleisbaumaschine benötigt
give @p[distance=..10] minecraft:stone_brick_stairs{gleisbaumaschine:"v3gegenstand"} 128
give @p[distance=..10] minecraft:spruce_slab{gleisbaumaschine:"v3gegenstand"} 192
give @p[distance=..10] minecraft:smooth_stone{gleisbaumaschine:"v3gegenstand"} 128
give @p[distance=..10] minecraft:andesite{gleisbaumaschine:"v3gegenstand"} 320
give @p[distance=..10] minecraft:magenta_glazed_terracotta{gleisbaumaschine:"v3gegenstand"} 64

# Anschließend werden eventuell andere Gleisbaumaschine gelöscht
kill @e[distance=0.9..,tag=EtiGleisB.3Alle]

# Sämtliche Materialien die für den Bau der Gleise verwendet werden, werden mit Rüstungsständer die den entsprechenden Materialblock in ihren Kopfslot tragen angezeigt
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.3Alle","EtiGleisB.3SchieneRechts","EtiGleisB.3Gleis1","EtiGleisB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:stone_brick_stairs",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.3Alle","EtiGleisB.3SchieneLinks","EtiGleisB.3Gleis1","EtiGleisB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:stone_brick_stairs",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.3Alle","EtiGleisB.3Rechts1","EtiGleisB.3Gleisspur","EtiGleisB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.3Alle","EtiGleisB.3Links1","EtiGleisB.3Gleisspur","EtiGleisB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.3Alle","EtiGleisB.3SchwelleRechts1","EtiGleisB.3Schwelle","EtiGleisB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:spruce_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.3Alle","EtiGleisB.3SchwelleMitte1","EtiGleisB.3Schwelle","EtiGleisB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:spruce_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.3Alle","EtiGleisB.3SchwelleLinks1","EtiGleisB.3Schwelle","EtiGleisB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:spruce_slab",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.3Alle","EtiGleisB.3Schotter1","EtiGleisB.3Gleisbett1","EtiGleisB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.3Alle","EtiGleisB.3Schotter2","EtiGleisB.3Gleisbett1","EtiGleisB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.3Alle","EtiGleisB.3Schotter3","EtiGleisB.3Gleisbett1","EtiGleisB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisB.3Alle","EtiGleisB.3Schotter4","EtiGleisB.3Gleisbett1","EtiGleisB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}

# Damit diese Funktion nicht mehrmals für den gleichen Rüstungsständer aufgerufen wird, wird das Etikett entfernt
tag @s remove EtiGleisB.3Erstellen
