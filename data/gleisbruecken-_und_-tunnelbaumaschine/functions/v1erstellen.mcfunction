# Der Spieler erhält die benötigten Materialien, für den Bau der Brücken
give @p[distance=..10] minecraft:rail{gleisbruecken-_und_-tunnelbaumaschine:"v1gegenstand"} 64
give @p[distance=..10] minecraft:andesite{gleisbruecken-_und_-tunnelbaumaschine:"v1gegenstand"} 64
give @p[distance=..10] minecraft:smooth_stone{gleisbruecken-_und_-tunnelbaumaschine:"v1gegenstand"} 256

# Alle bisherigen Brückenbauer werden gelöscht, wenn ein neuer Brückenbauer erstellt wird
kill @e[distance=0.9..,tag=EtiGBuTB.1Alle]

# Rüstungsständer mit einem bestimmten Block im Kopfslot werden erstellt, um die Brücken-Blöcke anschaulich zu machen
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.1Alle","EtiGBuTB.1Gleis1","EtiGBuTB.1Gleis","EtiGBuTB.1EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:rail",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.1Alle","EtiGBuTB.1Gleisbett1","EtiGBuTB.1Gleisbett","EtiGBuTB.1EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.1Alle","EtiGBuTB.1Rechts1","EtiGBuTB.1Gleisspur","EtiGBuTB.1EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.1Alle","EtiGBuTB.1Links1","EtiGBuTB.1Gleisspur","EtiGBuTB.1EineSpur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}

# Falls der Brückenbauer Zweigleisig ist, werden weitere Rüstungsständer mit entsprechenden Block im Kopfslot erstellt
execute if entity @s[tag=EtiGBuTB.1ZweiSpuren] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.1Alle","EtiGBuTB.1Gleis2","EtiGBuTB.1Gleis"],ArmorItems:[{},{},{},{id:"minecraft:rail",Count:1b}]}
execute if entity @s[tag=EtiGBuTB.1ZweiSpuren] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.1Alle","EtiGBuTB.1Gleisbett2","EtiGBuTB.1Gleisbett"],ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
execute if entity @s[tag=EtiGBuTB.1ZweiSpuren] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiGBuTB.1Alle","EtiGBuTB.1Rechts2","EtiGBuTB.1Gleisspur"],ArmorItems:[{},{},{},{id:"minecraft:smooth_stone",Count:1b}]}

# Zuletzt wird vom GleisBaumaschine die Richtung auf null gesetzt und das Etikett entfernt
scoreboard players set @s[tag=EtiGBuTB.1Erstellen] PZGBuTB.1Richt 0
tag @s remove EtiGBuTB.1Erstellen
