
scoreboard objectives remove PZEisenB.3Schl

execute at @e[tag=EtiEisenB.3Tram] run fill ^-2 ^ ^-27 ^2 ^7 ^32 minecraft:air replace

clear @a minecraft:armor_stand{EigEisenB.3Alle:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{EigEisenB.3Alle:true} } }] add EtiEisenB.3Alle
kill @e[tag=EtiEisenB.3Alle]
