
scoreboard objectives remove PZUhrA.1Zeichen
execute at @e[type=minecraft:armor_stand,tag=EtiUhrA.1Alle] run fill ~-1 ~-2 ~ ~1 ~6 ~ minecraft:air
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Uhrenanzeige.1"]} } } }] add EtiUhrA.1Alle
kill @e[tag=EtiUhrA.1Alle]
clear @a[distance=..50] minecraft:armor_stand{display:{Lore:["Uhrenanzeige.1"]} }
