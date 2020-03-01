
scoreboard objectives remove PZSchwB.p2Ausl

clear @a minecraft:armor_stand{schwebebahn:"vp2gegenstand"}

execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Hyperloop] run fill ^-2 ^ ^-15 ^2 ^4 ^15 minecraft:air replace

tag @e[type=minecraft:item,nbt={Item:{tag:{schwebebahn:"vp2gegenstand"} } }] add EtiSchwB.p2Alle
kill @e[tag=EtiSchwB.p2Alle]
