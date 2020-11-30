
scoreboard objectives remove PZStrasB.1Schl

execute at @e[tag=EtiStrasB.1Tram] run fill ^-1 ^ ^-27 ^1 ^7 ^32 minecraft:air replace

clear @a minecraft:armor_stand{EigStrasB.1Alle:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{EigStrasB.1Alle:true} } }] add EtiStrasB.1Alle
kill @e[tag=EtiStrasB.1Alle]
