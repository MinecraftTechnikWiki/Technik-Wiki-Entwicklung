
scoreboard objectives remove PZEisenB.1Schl
scoreboard objectives remove PZEisenB.1Waggon

execute at @e[tag=EtiEisenB.1Alle] run fill ^-2 ^1 ^ ^2 ^8 ^32 minecraft:air replace #eisenbahn:v1bloecke_die_beim_ersetzen_droppen
execute at @e[tag=EtiEisenB.1Alle] run fill ^-2 ^1 ^ ^2 ^8 ^32 minecraft:air replace
kill @e[tag=EtiEisenB.1Alle]

clear @a minecraft:armor_stand{display:{Lore:["Eisenbahn.1"]} }
clear @a minecraft:furnace{display:{Lore:["Eisenbahn.1"]} }
clear @a minecraft:chest{display:{Lore:["Eisenbahn.1"]} }
clear @a minecraft:shulker_box{display:{Lore:["Eisenbahn.1"]} }
