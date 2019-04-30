
scoreboard players reset @s PZLuftS.3Steuer

data merge entity @e[distance=..3,type=item,nbt={Item:{tag:{Luftschiff.3:true}}},sort=nearest,limit=1] {PickupDelay:0s}

execute at @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:air replace #luftschiff:v3bloecke_die_beim_ersetzen_droppen

clear @s minecraft:coal 1

execute positioned as @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] rotated ~ 0 if block ^-7 ^5 ^ minecraft:white_wool run fill ^-7 ^-2 ^4 ^-15 ^13 ^-6 minecraft:air replace
execute positioned as @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] rotated ~ 0 if block ^7 ^5 ^ minecraft:white_wool run fill ^7 ^-2 ^4 ^15 ^13 ^-6 minecraft:air replace
execute positioned as @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] rotated ~ 0 if block ^ ^7 ^-15 minecraft:white_wool run fill ^1 ^6 ^-15 ^-1 ^10 ^-18 minecraft:air replace

execute rotated ~ 0 run teleport @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] ^ ^ ^1
execute rotated ~ 0 run teleport @s ^ ^ ^1

execute if entity @s[y_rotation=45..135] at @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] run setblock ~ ~-3 ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-15,posY:0,posZ:-6,name:"luftschiff:v3luftschiff"}
execute if entity @s[y_rotation=135..-135] at @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] run setblock ~ ~-3 ~ minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:6,posY:0,posZ:-15,name:"luftschiff:v3luftschiff"}
execute if entity @s[y_rotation=-135..-45] at @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] run setblock ~ ~-3 ~ minecraft:structure_block{rotation:"CLOCKWISE_180",mode:"LOAD",posX:15,posY:0,posZ:6,name:"luftschiff:v3luftschiff"}
execute if entity @s[y_rotation=-45..45] at @e[distance=..5,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] run setblock ~ ~-3 ~ minecraft:structure_block{rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:-6,posY:0,posZ:15,name:"luftschiff:v3luftschiff"}

execute at @s[team=TMLuftS.3Pilot] run fill ~1 ~-2 ~1 ~-1 ~-2 ~-1 minecraft:redstone_block
