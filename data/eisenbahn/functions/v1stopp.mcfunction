
scoreboard objectives remove PZEisenB.1Schl
scoreboard objectives remove PZEisenB.1Waggon

execute at @e[tag=EtiEisenB.1Alle] run fill ^-2 ^1 ^ ^2 ^8 ^32 minecraft:air replace #eisenbahn:v1bloecke_die_beim_ersetzen_droppen
execute at @e[tag=EtiEisenB.1Alle] run fill ^-2 ^1 ^ ^2 ^8 ^32 minecraft:air replace

clear @a minecraft:armor_stand{eisenbahn:"v1gegenstand"}
clear @a minecraft:furnace{eisenbahn:"v1gegenstand"}
clear @a minecraft:chest{eisenbahn:"v1gegenstand"}
clear @a minecraft:shulker_box{eisenbahn:"v1gegenstand"}

tag @e[type=minecraft:item,nbt={Item:{tag:{eisenbahn:"v1gegenstand"} } }] add EtiEisenB.1Alle

kill @e[tag=EtiEisenB.1Alle]
