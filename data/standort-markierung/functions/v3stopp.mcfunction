
scoreboard objectives remove PZStaMa.3Wert

clear @a minecraft:armor_stand{standort-markierung:"v3gegenstand"}
tag @e[type=minecraft:item,nbt={Item:{tag:{standort-markierung:"v3gegenstand"} } }] add EtiStaMa.3Alle
kill @e[tag=EtiStaMa.3Alle]
