
scoreboard objectives remove PZMausKS.2Klick
clear @p[distance=..15] minecraft:lime_dye{display:{Lore:["Mausklick-Sensor.2"]}}
clear @p[distance=..15] minecraft:orange_dye{display:{Lore:["Mausklick-Sensor.2"]}}
clear @p[distance=..15] minecraft:rose_red{display:{Lore:["Mausklick-Sensor.2"]}}
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Mausklick-Sensor.2"]} } } }] add EtiMausKS.2Alle
kill @e[tag=EtiMausKS.2Alle]
