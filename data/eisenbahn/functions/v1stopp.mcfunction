
scoreboard objectives remove PZEisenB.1Schl

execute at @e[tag=EtiEisenB.1Lok] run fill ^-2 ^1 ^-1 ^2 ^8 ^32 minecraft:air replace #eisenbahn:v1droppen
execute at @e[tag=EtiEisenB.1Lok] run fill ^-2 ^1 ^-1 ^2 ^8 ^32 minecraft:air replace

clear @a minecraft:armor_stand{EigEisenB.1Alle:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{EigEisenB.1Alle:true} } }] add EtiEisenB.1Alle
kill @e[tag=EtiEisenB.1Alle]

forceload remove ~ ~
