
fill ^-2 ^1 ^ ^2 ^8 ^32 minecraft:air replace #eisenbahn:v1bloecke_die_beim_ersetzen_droppen
fill ^-2 ^1 ^ ^2 ^8 ^32 minecraft:air replace

execute if entity @s[tag=EtiEisenB.1Lok] run function eisenbahn:v1zug_lok
execute if entity @s[tag=EtiEisenB.1Waggon] run function eisenbahn:v1zug_waggon
execute if entity @s[tag=EtiEisenB.1Steuerwaggon] run function eisenbahn:v1zug_steuerwaggon
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run setblock ~ ~2 ~ minecraft:redstone_block replace

execute at @s rotated ~ 0 positioned ^ ^ ^25 as @e[distance=..10,sort=nearest,limit=1,type=minecraft:armor_stand,tag=EtiEisenB.1Zug] at @s run function eisenbahn:v1zug
