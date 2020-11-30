
teleport @s[y_rotation=135..-135] ~ ~ ~ 180 0
teleport @s[y_rotation=-135..-45] ~ ~ ~ -90 0
teleport @s[y_rotation=-45..45] ~ ~ ~ 0 0
teleport @s[y_rotation=45..135] ~ ~ ~ 90 0

execute at @s as @p if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ^ ^ ^-31 minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-31,posY:0,posZ:-10,name:"schiff:v1schiff_kanal"} replace
execute at @s as @p if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ^ ^ ^-32 minecraft:structure_block{rotation:"CLOCKWISE_180",mode:"LOAD",posX:31,posY:0,posZ:10,name:"schiff:v1schiff_kanal"} replace

execute at @s as @p if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ^ ^ ^-31 minecraft:structure_block{rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:-10,posY:0,posZ:31,name:"schiff:v1schiff_kanal"} replace
execute at @s as @p if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ^ ^ ^-32 minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:10,posY:0,posZ:-31,name:"schiff:v1schiff_kanal"} replace

execute at @s run fill ^-1 ^ ^-31 ^-1 ^ ^-32 minecraft:redstone_block replace
execute at @s run fill ^7 ^4 ^-1 ^-7 ^4 ^-62 minecraft:water replace

kill @s
