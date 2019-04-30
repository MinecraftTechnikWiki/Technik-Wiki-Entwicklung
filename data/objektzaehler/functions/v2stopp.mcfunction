
scoreboard objectives remove PZObjZae.2Anz
scoreboard objectives remove PZObjZae.2Grenz
clear @a[distance=..25] minecraft:armor_stand{display:{Lore:["Objektzähler.2"] } }
clear @a[distance=..25] minecraft:magenta_glazed_terracotta{display:{Lore:["Objektzähler.2"] } }
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Objektzähler.2"] } } } } ] add EtiObjZae.2Alle
kill @e[tag=EtiObjZae.2Alle]
