
scoreboard objectives remove PZSchwB.p1Ausl

clear @a minecraft:armor_stand{EigSchwB.p1Alle:true}

execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p1Transrapid] run fill ^-2 ^-1 ^-21 ^2 ^4 ^21 minecraft:air replace
execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p1Transrapid] run fill ^-2 ^-2 ^-20 ^2 ^-2 ^20 minecraft:air replace minecraft:quartz_stairs

tag @e[type=minecraft:item,nbt={Item:{tag:{EigSchwB.p1Alle:true} } }] add EtiSchwB.p1Alle
kill @e[tag=EtiSchwB.p1Alle]

forceload remove ~ ~
