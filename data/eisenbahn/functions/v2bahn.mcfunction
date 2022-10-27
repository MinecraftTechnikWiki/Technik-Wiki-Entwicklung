
fill ^-2 ^1 ^ ^2 ^8 ^32 minecraft:air replace #eisenbahn:v2droppen
fill ^-2 ^1 ^ ^2 ^8 ^32 minecraft:air replace

execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",name:"eisenbahn:v2regio_lok",posY:0} replace

execute if entity @s[scores={PZEisenB.2Waggon=2}] run data merge block ~ ~1 ~ {name:"eisenbahn:v2regio_waggon"}
execute if entity @s[scores={PZEisenB.2Waggon=3}] run data merge block ~ ~1 ~ {name:"eisenbahn:v2regio_steuerwaggon"}

execute if entity @s[scores={PZEisenB.2Waggon=1..3},y_rotation=135..-135] run data merge block ~ ~1 ~ {rotation:"COUNTERCLOCKWISE_90",posX:-2,posZ:0}
execute if entity @s[scores={PZEisenB.2Waggon=1..3},y_rotation=-135..-45] run data merge block ~ ~1 ~ {rotation:"NONE",posX:0,posZ:-2}
execute if entity @s[scores={PZEisenB.2Waggon=1..3},y_rotation=-45..45] run data merge block ~ ~1 ~ {rotation:"CLOCKWISE_90",posX:2,posZ:0}
execute if entity @s[scores={PZEisenB.2Waggon=1..3},y_rotation=45..135] run data merge block ~ ~1 ~ {rotation:"CLOCKWISE_180",posX:0,posZ:2}

execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run setblock ~ ~2 ~ minecraft:redstone_block replace

execute at @s rotated ~ 0 positioned ^ ^ ^25 as @e[distance=..10,sort=nearest,limit=1,type=minecraft:armor_stand,tag=EtiEisenB.2Wagen] at @s run function eisenbahn:v2bahn
