
execute if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ~-1 ~-1 ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-20,posY:-1,posZ:-2,name:"schwebebahn:vp1transrapid"} replace
execute if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ~1 ~-1 ~ minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",mirror:"LEFT_RIGHT",posX:20,posY:-1,posZ:-2,name:"schwebebahn:vp1transrapid"} replace

execute if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ~ ~-1 ~-1 minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",posX:2,posY:-1,posZ:-20,name:"schwebebahn:vp1transrapid"} replace
execute if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ~ ~-1 ~1 minecraft:structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",mirror:"LEFT_RIGHT",posX:2,posY:-1,posZ:20,name:"schwebebahn:vp1transrapid"} replace

setblock ~ ~-1 ~ minecraft:redstone_block replace
setblock ~ ~-1 ~ minecraft:redstone_block replace
