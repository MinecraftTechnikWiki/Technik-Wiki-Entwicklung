# Dem Spieler werden alle Materialien gegeben die er für den Bau der Brücken und Tunnel benötigt
give @p[distance=..10] minecraft:stone_brick_stairs{display:{Lore:["Brückenbauer.3"]} } 128
give @p[distance=..10] minecraft:spruce_slab{display:{Lore:["Brückenbauer.3"]} } 192
give @p[distance=..10] minecraft:stone{display:{Lore:["Brückenbauer.3"]} } 896
give @p[distance=..10] minecraft:andesite{display:{Lore:["Brückenbauer.3"]} } 256
give @p[distance=..10] minecraft:magenta_glazed_terracotta{display:{Lore:["Brückenbauer.3"]} } 64

# Alle anderen Brückenbauer werden entfernt
kill @e[distance=0.9..,tag=EtiBruB.3Alle]

# Damit die Blöcke die der Brückenbauer platziert auch schon vorher zu erahnen sind, werden Rüstungsständer mit dem entsprechenden Block im Kopfslot gespawnt
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.3Alle","EtiBruB.3SchieneRechts","EtiBruB.3Gleis1","EtiBruB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:stone_brick_stairs",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.3Alle","EtiBruB.3SchieneLinks","EtiBruB.3Gleis1","EtiBruB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:stone_brick_stairs",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.3Alle","EtiBruB.3Rechts1","EtiBruB.3Gleisspur","EtiBruB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.3Alle","EtiBruB.3Links1","EtiBruB.3Gleisspur","EtiBruB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.3Alle","EtiBruB.3SchwelleRechts1","EtiBruB.3Schwelle","EtiBruB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:spruce_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.3Alle","EtiBruB.3SchwelleMitte1","EtiBruB.3Schwelle","EtiBruB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:spruce_slab",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.3Alle","EtiBruB.3SchwelleLinks1","EtiBruB.3Schwelle","EtiBruB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:spruce_slab",Count:1b}]}

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.3Alle","EtiBruB.3Schotter1","EtiBruB.3Gleisbett1","EtiBruB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.3Alle","EtiBruB.3Schotter2","EtiBruB.3Gleisbett1","EtiBruB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.3Alle","EtiBruB.3Schotter3","EtiBruB.3Gleisbett1","EtiBruB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.3Alle","EtiBruB.3Schotter4","EtiBruB.3Gleisbett1","EtiBruB.3EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}

# Damit diese Funktion nicht erneut aufgerufen wird, wird das Etikett entfernt
tag @s remove EtiBruB.3Erstellen
