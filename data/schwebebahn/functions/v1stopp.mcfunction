
scoreboard objectives remove PZSchwB.1Schl

execute at @e[tag=EtiSchwB.1Schwebebahn] run fill ^1 ^ ^-1 ^-3 ^7 ^20 minecraft:air replace #schwebebahn:v1schwebebahn_bloecke

clear @a minecraft:armor_stand{Schwebebahn.1:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{Schwebebahn.1:true} } }] add EtiSchwB.1Alle
kill @e[tag=EtiSchwB.1Alle]
