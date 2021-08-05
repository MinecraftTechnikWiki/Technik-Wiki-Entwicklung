
scoreboard objectives remove PZAnzTaf.1Ausl
scoreboard objectives remove PZAnzTaf.1Wert

clear @a minecraft:armor_stand{EigAnzTaf.1Alle:true}

tag @a[tag=EtiAnzTaf.1Auswahl] remove EtiAnzTaf.1Auswahl
tag @a[tag=EtiAnzTaf.1Rangliste] remove EtiAnzTaf.1Rangliste

execute at @e[type=minecraft:armor_stand,tag=EtiAnzTaf.1Schild] run setblock ~ ~ ~ minecraft:air replace

tag @e[type=minecraft:item,nbt={Item:{tag:{EigAnzTaf.1Alle:true} } }] add EtiAnzTaf.1Alle
kill @e[tag=EtiAnzTaf.1Alle]
