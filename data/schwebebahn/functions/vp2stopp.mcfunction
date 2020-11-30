
scoreboard objectives remove PZSchwB.p2Ausl

clear @a minecraft:armor_stand{EigSchwB.p2Alle:true}

execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Hyperloop] run fill ^-2 ^ ^-15 ^2 ^4 ^15 minecraft:air replace

tag @e[type=minecraft:item,nbt={Item:{tag:{EigSchwB.p2Alle:true} } }] add EtiSchwB.p2Alle
kill @e[tag=EtiSchwB.p2Alle]
