
scoreboard objectives remove PZWegFS.1Wert
scoreboard objectives remove PZWegFS.1Vergl

tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Wegfindungssystem.1"]}}}}] add EtiWegFS.1Alle
kill @e[tag=EtiWegFS.1Alle]

clear @a[distance=..25] minecraft:armor_stand{display:{Lore:["Wegfindungssystem.1"]}}
