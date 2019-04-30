# Der Spieler erhält die benötigten Materialien, für den Bau der Brücken
give @p[distance=..10] minecraft:rail{display:{Lore:["Brückenbauer.1"] } } 64
give @p[distance=..10] minecraft:andesite{display:{Lore:["Brückenbauer.1"] } } 64
give @p[distance=..10] minecraft:stone{display:{Lore:["Brückenbauer.1"] } } 256

# Alle bisherigen Brückenbauer werden gelöscht, wenn ein neuer Brückenbauer erstellt wird
kill @e[distance=0.9..,tag=EtiBruB.1Alle]

# Rüstungsständer mit einem bestimmten Block im Kopfslot werden erstellt, um die Brücken-Blöcke anschaulich zu machen
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.1Alle","EtiBruB.1Gleis1","EtiBruB.1Gleis","EtiBruB.1EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:rail",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.1Alle","EtiBruB.1Gleisbett1","EtiBruB.1Gleisbett","EtiBruB.1EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.1Alle","EtiBruB.1Rechts1","EtiBruB.1Gleisspur","EtiBruB.1EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.1Alle","EtiBruB.1Links1","EtiBruB.1Gleisspur","EtiBruB.1EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}

# Falls der Brückenbauer Zweigleisig ist, werden weitere Rüstungsständer mit entsprechenden Block im Kopfslot erstellt
execute if entity @s[tag=EtiBruB.1ZweiSpuren] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.1Alle","EtiBruB.1Gleis2","EtiBruB.1Gleis"],ArmorItems:[{},{},{},{id:"minecraft:rail",Count:1b}]}
execute if entity @s[tag=EtiBruB.1ZweiSpuren] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.1Alle","EtiBruB.1Gleisbett2","EtiBruB.1Gleisbett"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
execute if entity @s[tag=EtiBruB.1ZweiSpuren] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiBruB.1Alle","EtiBruB.1Rechts2","EtiBruB.1Gleisspur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}

# Zuletzt wird vom Gleisverleger die Richtung auf null gesetzt und das Etikett entfernt
scoreboard players set @s[tag=EtiBruB.1Erstellen] PZBruB.1Richt 0
tag @s remove EtiBruB.1Erstellen
