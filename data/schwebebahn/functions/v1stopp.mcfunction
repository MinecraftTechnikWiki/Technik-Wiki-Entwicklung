
scoreboard objectives remove PZSchwB.1Schl

execute at @e[tag=EtiSchwB.1Bahn] run fill ^1 ^1 ^-1 ^-3 ^8 ^20 minecraft:air replace #schwebebahn:v1droppen

clear @a minecraft:armor_stand{EigSchwB.1Alle:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{EigSchwB.1Alle:true} } }] add EtiSchwB.1Alle
kill @e[tag=EtiSchwB.1Alle]
