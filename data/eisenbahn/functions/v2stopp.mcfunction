
scoreboard objectives remove PZEisenB.2Schl
scoreboard objectives remove PZEisenB.2Waggon

execute at @e[tag=EtiEisenB.2Wagen] run fill ^-2 ^1 ^ ^2 ^8 ^32 minecraft:air replace #eisenbahn:v2droppen
execute at @e[tag=EtiEisenB.2Wagen] run fill ^-2 ^1 ^ ^2 ^8 ^32 minecraft:air replace

clear @a minecraft:armor_stand{EigEisenB.2Alle:true}
clear @a minecraft:furnace{EigEisenB.2Alle:true}
clear @a minecraft:chest{EigEisenB.2Alle:true}
clear @a minecraft:shulker_box{EigEisenB.2Alle:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{EigEisenB.2Alle:true} } }] add EtiEisenB.2Alle

kill @e[tag=EtiEisenB.2Alle]
