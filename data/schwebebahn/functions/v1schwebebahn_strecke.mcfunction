
execute if entity @s[y_rotation=135..-135] run teleport @s ~ ~ ~ 180 0
execute if entity @s[y_rotation=-135..-45] run teleport @s ~ ~ ~ -90 0
execute if entity @s[y_rotation=-45..45] run teleport @s ~ ~ ~ 0 0
execute if entity @s[y_rotation=45..135] run teleport @s ~ ~ ~ 90 0

execute at @s as @p if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ^ ^ ^-31 minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-2,posY:0,posZ:-13,name:"schwebebahn:v1schwebebahn_pfeiler_aequator"} replace

execute at @s as @p if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ^ ^ ^-31 minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-13,posY:0,posZ:-2,name:"schwebebahn:v1schwebebahn_pfeiler_pole"} replace

execute at @s run setblock ^ ^1 ^-31 minecraft:redstone_block replace
execute at @s positioned ^ ^16 ^-31 run fill ~3 ~ ~3 ~-3 ~ ~-3 minecraft:redstone_block replace minecraft:air

kill @s
