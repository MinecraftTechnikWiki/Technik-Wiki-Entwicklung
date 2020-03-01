
execute if entity @s[y_rotation=135..-135] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",posX:2,posY:0,posZ:-15,name:"schwebebahn:vp2hyperloop"} replace
execute if entity @s[y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:15,posY:0,posZ:2,name:"schwebebahn:vp2hyperloop"} replace
execute if entity @s[y_rotation=-45..45] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",posX:-2,posY:0,posZ:15,name:"schwebebahn:vp2hyperloop"} replace
execute if entity @s[y_rotation=45..135] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-15,posY:0,posZ:-2,name:"schwebebahn:vp2hyperloop"} replace

setblock ~ ~1 ~ minecraft:redstone_block replace
