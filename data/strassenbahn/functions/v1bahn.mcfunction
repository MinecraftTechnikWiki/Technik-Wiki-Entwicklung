
fill ^-2 ^ ^-2 ^2 ^7 ^32 minecraft:air replace

execute if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"strassenbahn:v1bahn_1",posY:0} replace

execute if entity @s[y_rotation=-135..-45] run data merge block ~ ~ ~ {rotation:"NONE",posX:0,posZ:-1}
execute if entity @s[y_rotation=-45..45] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90",posX:1,posZ:0}
execute if entity @s[y_rotation=45..135] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180",posX:0,posZ:1}
execute if entity @s[y_rotation=135..-135] run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90",posX:-1,posZ:0}

execute if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ~ ~1 ~ minecraft:redstone_block replace

execute if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ^ ^ ^-11 minecraft:structure_block{mode:"LOAD",name:"strassenbahn:v1bahn_3",posY:0} replace

execute if entity @s[y_rotation=-135..-45] run data merge block ^ ^ ^-11 {rotation:"NONE",posX:0,posZ:-1}
execute if entity @s[y_rotation=-45..45] run data merge block ^ ^ ^-11 {rotation:"CLOCKWISE_90",posX:1,posZ:0}
execute if entity @s[y_rotation=45..135] run data merge block ^ ^ ^-11 {rotation:"CLOCKWISE_180",posX:0,posZ:1}
execute if entity @s[y_rotation=135..-135] run data merge block ^ ^ ^-11 {rotation:"COUNTERCLOCKWISE_90",posX:-1,posZ:0}

execute if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ^ ^1 ^-11 minecraft:redstone_block replace

execute if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ^ ^ ^-27 minecraft:structure_block{mode:"LOAD",name:"strassenbahn:v1bahn_2",posY:0} replace

execute if entity @s[y_rotation=-135..-45] run data merge block ^ ^ ^-27 {rotation:"NONE",posX:0,posZ:-1}
execute if entity @s[y_rotation=-45..45] run data merge block ^ ^ ^-27 {rotation:"CLOCKWISE_90",posX:1,posZ:0}
execute if entity @s[y_rotation=45..135] run data merge block ^ ^ ^-27 {rotation:"CLOCKWISE_180",posX:0,posZ:1}
execute if entity @s[y_rotation=135..-135] run data merge block ^ ^ ^-27 {rotation:"COUNTERCLOCKWISE_90",posX:-1,posZ:0}

execute if block ~1 ~-1 ~1 minecraft:stone_brick_stairs run setblock ^ ^1 ^-27 minecraft:redstone_block replace

execute if block ~1 ~-1 ~1 minecraft:stone_brick_stairs as @e[distance=..30] unless entity @s[type=!minecraft:player,tag=!EtiStrasB.1Tram] positioned as @s rotated ~ 0 run teleport @s ^ ^ ^1
