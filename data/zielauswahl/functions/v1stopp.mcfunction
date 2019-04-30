
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Zielauswahl.1"]} } } }] add EtiZielA.1Alle
kill @e[tag=EtiZielA.1Alle]
clear @a[distance=..50] minecraft:armor_stand{display:{Lore:["Zielauswahl.1"]} }
scoreboard objectives remove PZZielA.1Klick
