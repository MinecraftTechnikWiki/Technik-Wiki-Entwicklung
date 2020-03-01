
fill ^-2 ^1 ^-2 ^2 ^8 ^32 minecraft:air replace

execute if entity @s[y_rotation=135..-135] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",posX:-2,posY:0,posZ:0,rotation:"COUNTERCLOCKWISE_90",name:"eisenbahn:v2lok"} replace
execute if entity @s[y_rotation=-135..-45] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:-2,rotation:"NONE",name:"eisenbahn:v2lok"} replace
execute if entity @s[y_rotation=-45..45] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",posX:2,posY:0,posZ:0,rotation:"CLOCKWISE_90",name:"eisenbahn:v2lok"} replace
execute if entity @s[y_rotation=45..135] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:2,rotation:"CLOCKWISE_180",name:"eisenbahn:v2lok"} replace

setblock ~ ~2 ~ minecraft:redstone_block replace

execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta as @e[distance=..30] unless entity @s[type=!minecraft:player,tag=!EtiEisenB.2Lok] positioned as @s rotated ~ 0 run teleport @s ^ ^ ^1
