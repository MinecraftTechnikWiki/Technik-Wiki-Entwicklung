
teleport @s[y_rotation=135..-135] ~ ~ ~ 180 0
teleport @s[y_rotation=-135..-45] ~ ~ ~ -90 0
teleport @s[y_rotation=-45..45] ~ ~ ~ 0 0
teleport @s[y_rotation=45..135] ~ ~ ~ 90 0

execute if entity @s[tag=EtiStrasB.1TramStrecke] as @p if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-1,posY:0,posZ:-2,name:"strassenbahn:v1tram_strecke"} replace
execute if entity @s[tag=EtiStrasB.1TramStrecke] as @p if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",posX:2,posY:0,posZ:-1,name:"strassenbahn:v1tram_strecke"} replace

execute if entity @s[tag=EtiStrasB.1TramStreckeGras] as @p if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-1,posY:0,posZ:-2,name:"strassenbahn:v1tram_strecke_gras"} replace
execute if entity @s[tag=EtiStrasB.1TramStreckeGras] as @p if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",posX:2,posY:0,posZ:-1,name:"strassenbahn:v1tram_strecke_gras"} replace

execute at @e[type=minecraft:armor_stand,tag=EtiStrasB.1Bauwerk] run setblock ~ ~ ~1 minecraft:redstone_block replace
kill @e[type=minecraft:armor_stand,tag=EtiStrasB.1Bauwerk]
