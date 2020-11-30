
fill ^-2 ^1 ^ ^2 ^8 ^32 minecraft:air replace #eisenbahn:v2drop-bloecke
fill ^-2 ^1 ^ ^2 ^8 ^32 minecraft:air replace

execute if entity @s[tag=EtiEisenB.2Lok] run function eisenbahn:v2zug_lok
execute if entity @s[tag=EtiEisenB.2Waggon] run function eisenbahn:v2zug_waggon
execute if entity @s[tag=EtiEisenB.2Steuerwaggon] run function eisenbahn:v2zug_steuerwaggon
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run setblock ~ ~2 ~ minecraft:redstone_block replace

execute at @s rotated ~ 0 positioned ^ ^ ^25 as @e[distance=..10,sort=nearest,limit=1,type=minecraft:armor_stand,tag=EtiEisenB.2Zug] at @s run function eisenbahn:v2zug
