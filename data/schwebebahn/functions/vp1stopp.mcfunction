
scoreboard objectives remove PZSchwB.p1Ausl

clear @a minecraft:armor_stand{schwebebahn:"vp1gegenstand"}

execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p1Transrapid] run fill ^-2 ^-1 ^-21 ^2 ^4 ^21 minecraft:air replace
execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p1Transrapid] run fill ^-2 ^-2 ^-20 ^2 ^-2 ^20 minecraft:air replace minecraft:quartz_stairs

tag @e[type=minecraft:item,nbt={Item:{tag:{schwebebahn:"vp1gegenstand"} } }] add EtiSchwB.p1Alle
kill @e[tag=EtiSchwB.p1Alle]
