
scoreboard objectives remove PZEisenB.2Schl

execute at @e[tag=EtiEisenB.2Lok] run fill ^-2 ^1 ^ ^2 ^8 ^32 minecraft:air replace

clear @a minecraft:armor_stand{EigEisenB.2Alle:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{EigEisenB.2Alle:true} } }] add EtiEisenB.2Alle
kill @e[tag=EtiEisenB.2Alle]
