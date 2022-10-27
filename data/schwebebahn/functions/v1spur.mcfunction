
execute if entity @s[y_rotation=135..-135] run teleport @s ~ ~ ~ 180 0
execute if entity @s[y_rotation=-135..-45] run teleport @s ~ ~ ~ -90 0
execute if entity @s[y_rotation=-45..45] run teleport @s ~ ~ ~ 0 0
execute if entity @s[y_rotation=45..135] run teleport @s ~ ~ ~ 90 0

execute at @s run setblock ^ ^ ^-31 minecraft:structure_block{mode:"LOAD",rotation:"NONE",posY:0} replace

execute at @s as @p if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run data merge block ^ ^ ^-31 {name:"schwebebahn:v1pfeiler_aequator",posX:-2,posZ:-13}

execute at @s as @p if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run data merge block ^ ^ ^-31 {name:"schwebebahn:v1pfeiler_pole",posX:-13,posZ:-2}

execute at @s run setblock ^ ^1 ^-31 minecraft:redstone_block replace
execute at @s positioned ^ ^16 ^-31 run fill ~3 ~ ~3 ~-3 ~ ~-3 minecraft:redstone_block replace minecraft:air

kill @s
