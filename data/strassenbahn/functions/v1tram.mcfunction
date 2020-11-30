
fill ^-2 ^ ^-2 ^2 ^7 ^32 minecraft:air replace

execute if entity @s[y_rotation=135..-135] if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:0,rotation:"COUNTERCLOCKWISE_90",name:"strassenbahn:v1tram_1"} replace
execute if entity @s[y_rotation=-135..-45] if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:-1,rotation:"NONE",name:"strassenbahn:v1tram_1"} replace
execute if entity @s[y_rotation=-45..45] if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:1,posY:0,posZ:0,rotation:"CLOCKWISE_90",name:"strassenbahn:v1tram_1"} replace
execute if entity @s[y_rotation=45..135] if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:1,rotation:"CLOCKWISE_180",name:"strassenbahn:v1tram_1"} replace

setblock ~ ~1 ~ minecraft:redstone_block replace

execute if entity @s[y_rotation=135..-135] if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ^ ^ ^-11 minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:0,rotation:"COUNTERCLOCKWISE_90",name:"strassenbahn:v1tram_3"} replace
execute if entity @s[y_rotation=-135..-45] if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ^ ^ ^-11 minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:-1,rotation:"NONE",name:"strassenbahn:v1tram_3"} replace
execute if entity @s[y_rotation=-45..45] if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ^ ^ ^-11 minecraft:structure_block{mode:"LOAD",posX:1,posY:0,posZ:0,rotation:"CLOCKWISE_90",name:"strassenbahn:v1tram_3"} replace
execute if entity @s[y_rotation=45..135] if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ^ ^ ^-11 minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:1,rotation:"CLOCKWISE_180",name:"strassenbahn:v1tram_3"} replace

setblock ^ ^1 ^-11 minecraft:redstone_block replace

execute if entity @s[y_rotation=135..-135] if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ^ ^ ^-27 minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:0,rotation:"COUNTERCLOCKWISE_90",name:"strassenbahn:v1tram_2"} replace
execute if entity @s[y_rotation=-135..-45] if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ^ ^ ^-27 minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:-1,rotation:"NONE",name:"strassenbahn:v1tram_2"} replace
execute if entity @s[y_rotation=-45..45] if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ^ ^ ^-27 minecraft:structure_block{mode:"LOAD",posX:1,posY:0,posZ:0,rotation:"CLOCKWISE_90",name:"strassenbahn:v1tram_2"} replace
execute if entity @s[y_rotation=45..135] if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ^ ^ ^-27 minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:1,rotation:"CLOCKWISE_180",name:"strassenbahn:v1tram_2"} replace

setblock ^ ^1 ^-27 minecraft:redstone_block replace

execute if block ~1 ~-1 ~1 minecraft:stone_brick_stairs as @e[distance=..30] unless entity @s[type=!minecraft:player,tag=!EtiStrasB.1Tram] positioned as @s rotated ~ 0 run teleport @s ^ ^ ^1
