
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north] run teleport @s ~ ~ ~ 180 0
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east] run teleport @s ~ ~ ~ -90 0
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] run teleport @s ~ ~ ~ 0 0
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west] run teleport @s ~ ~ ~ 90 0

execute rotated ~ 0 positioned ^ ^ ^25 as @e[distance=..8,type=minecraft:armor_stand,tag=EtiEisenB.2Waggon] at @s run function eisenbahn:v2ausrichtung
