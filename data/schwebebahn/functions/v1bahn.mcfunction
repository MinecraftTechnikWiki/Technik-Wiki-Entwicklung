
execute if entity @s[y_rotation=135..-135] if block ~ ~6 ~ minecraft:magenta_glazed_terracotta[facing=north] run scoreboard players set @s PZSchwB.1Schl 1
execute if entity @s[y_rotation=-135..-45] if block ~ ~6 ~ minecraft:magenta_glazed_terracotta[facing=east] run scoreboard players set @s PZSchwB.1Schl 2
execute if entity @s[y_rotation=-45..45] if block ~ ~6 ~ minecraft:magenta_glazed_terracotta[facing=south] run scoreboard players set @s PZSchwB.1Schl 3
execute if entity @s[y_rotation=45..135] if block ~ ~6 ~ minecraft:magenta_glazed_terracotta[facing=west] run scoreboard players set @s PZSchwB.1Schl 4

execute if entity @s[tag=EtiSchwB.1ZugEnde] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",name:"schwebebahn:v1bahn",posY:0} replace
execute if entity @s[tag=EtiSchwB.1ZugEnde,scores={PZSchwB.1Schl=1}] run data merge block ~ ~1 ~ {rotation:"COUNTERCLOCKWISE_90",posX:-1,posZ:2}
execute if entity @s[tag=EtiSchwB.1ZugEnde,scores={PZSchwB.1Schl=2}] run data merge block ~ ~1 ~ {rotation:"NONE",posX:-2,posZ:-1}
execute if entity @s[tag=EtiSchwB.1ZugEnde,scores={PZSchwB.1Schl=3}] run data merge block ~ ~1 ~ {rotation:"CLOCKWISE_90",posX:1,posZ:-2}
execute if entity @s[tag=EtiSchwB.1ZugEnde,scores={PZSchwB.1Schl=4}] run data merge block ~ ~1 ~ {rotation:"CLOCKWISE_180",posX:2,posZ:1}

execute if entity @s[tag=EtiSchwB.1ZugMitte,scores={PZSchwB.1Schl=1}] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:1,rotation:"COUNTERCLOCKWISE_90",name:"schwebebahn:v1bahn_gelenk"} replace
execute if entity @s[tag=EtiSchwB.1ZugMitte,scores={PZSchwB.1Schl=2}] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,rotation:"NONE",name:"schwebebahn:v1bahn_gelenk"} replace
execute if entity @s[tag=EtiSchwB.1ZugMitte,scores={PZSchwB.1Schl=3}] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",posX:1,posY:0,posZ:-1,rotation:"CLOCKWISE_90",name:"schwebebahn:v1bahn_gelenk"} replace
execute if entity @s[tag=EtiSchwB.1ZugMitte,scores={PZSchwB.1Schl=4}] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",posX:1,posY:0,posZ:1,rotation:"CLOCKWISE_180",name:"schwebebahn:v1bahn_gelenk"} replace

execute if entity @s[tag=EtiSchwB.1ZugAnfang,scores={PZSchwB.1Schl=1}] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-20,rotation:"COUNTERCLOCKWISE_90",mirror:"FRONT_BACK",name:"schwebebahn:v1bahn"} replace
execute if entity @s[tag=EtiSchwB.1ZugAnfang,scores={PZSchwB.1Schl=2}] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",posX:20,posY:0,posZ:-1,rotation:"NONE",mirror:"FRONT_BACK",name:"schwebebahn:v1bahn"} replace
execute if entity @s[tag=EtiSchwB.1ZugAnfang,scores={PZSchwB.1Schl=3}] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",posX:1,posY:0,posZ:20,rotation:"CLOCKWISE_90",mirror:"FRONT_BACK",name:"schwebebahn:v1bahn"} replace
execute if entity @s[tag=EtiSchwB.1ZugAnfang,scores={PZSchwB.1Schl=4}] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",posX:-20,posY:0,posZ:1,rotation:"CLOCKWISE_180",mirror:"FRONT_BACK",name:"schwebebahn:v1bahn"} replace

execute if block ~ ~1 ~ minecraft:structure_block run setblock ~ ~2 ~ minecraft:redstone_block replace

execute if block ^1 ^6 ^ minecraft:magenta_glazed_terracotta positioned ^-13 ^ ^ positioned ~-15 ~ ~-15 as @a[dx=15,dy=7,dz=15] positioned ~15 ~ ~15 positioned ^12 ^2 ^5 rotated as @s run teleport @s ~ ~ ~ ~-90 ~
execute if block ^1 ^6 ^ minecraft:magenta_glazed_terracotta run fill ^-4 ^ ^2 ^-18 ^8 ^-3 minecraft:air replace #schwebebahn:v1droppen
execute if entity @s[tag=EtiSchwB.1ZugEnde] if block ^1 ^6 ^ minecraft:magenta_glazed_terracotta run fill ^2 ^1 ^-4 ^-3 ^8 ^ minecraft:air replace #schwebebahn:v1droppen
