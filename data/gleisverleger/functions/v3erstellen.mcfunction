# Dem Spieler werden alle Materialien gegeben die er für den Gleisverleger benötigt
give @p[distance=..10] minecraft:stone_brick_stairs{display:{Lore:["Gleisverleger.3"]} } 128
give @p[distance=..10] minecraft:spruce_slab{display:{Lore:["Gleisverleger.3"]} } 192
give @p[distance=..10] minecraft:stone{display:{Lore:["Gleisverleger.3"]} } 128
give @p[distance=..10] minecraft:andesite{display:{Lore:["Gleisverleger.3"]}} 320
give @p[distance=..10] minecraft:magenta_glazed_terracotta{display:{Lore:["Gleisverleger.3"]} } 64

# Anschließend werden eventuell andere Gleisverleger gelöscht
kill @e[distance=0.9..,tag=EtiGleisV.3Alle]

# Sämtliche Materialien die für den Bau der Gleise verwendet werden, werden mit Rüstungsständer die den entsprechenden Materialblock in ihren Kopfslot tragen angezeigt
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.3Alle","EtiGleisV.3SchieneRechts","EtiGleisV.3Gleis1","EtiGleisV.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:stone_brick_stairs",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.3Alle","EtiGleisV.3SchieneLinks","EtiGleisV.3Gleis1","EtiGleisV.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:stone_brick_stairs",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.3Alle","EtiGleisV.3Rechts1","EtiGleisV.3Gleisspur","EtiGleisV.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.3Alle","EtiGleisV.3Links1","EtiGleisV.3Gleisspur","EtiGleisV.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.3Alle","EtiGleisV.3SchwelleRechts1","EtiGleisV.3Schwelle","EtiGleisV.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:spruce_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.3Alle","EtiGleisV.3SchwelleMitte1","EtiGleisV.3Schwelle","EtiGleisV.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:spruce_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.3Alle","EtiGleisV.3SchwelleLinks1","EtiGleisV.3Schwelle","EtiGleisV.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:spruce_slab",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.3Alle","EtiGleisV.3Schotter1","EtiGleisV.3Gleisbett1","EtiGleisV.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.3Alle","EtiGleisV.3Schotter2","EtiGleisV.3Gleisbett1","EtiGleisV.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.3Alle","EtiGleisV.3Schotter3","EtiGleisV.3Gleisbett1","EtiGleisV.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGleisV.3Alle","EtiGleisV.3Schotter4","EtiGleisV.3Gleisbett1","EtiGleisV.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}

# Damit diese Funktion nicht mehrmals für den gleichen Rüstungsständer aufgerufen wird, wird das Etikett entfernt
tag @s remove EtiGleisV.3Erstellen
