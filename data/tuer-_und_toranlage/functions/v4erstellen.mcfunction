execute if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run data merge entity @s {Rotation:[90.0f,0.0f],Tags:["EtiTuTor.4Alle","EtiTuTor.4Torrahmen","EtiTuTor.4Aequator"]}
execute if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run data merge entity @s {Rotation:[0.0f,0.0f],Tags:["EtiTuTor.4Alle","EtiTuTor.4Torrahmen","EtiTuTor.4Pole"]}

execute if entity @s[tag=EtiTuTor.4Aequator] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-2,posY:0,posZ:-4,name:"tuer-_und_toranlage:v4torrahmen"} replace
execute if entity @s[tag=EtiTuTor.4Pole] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",posX:4,posY:0,posZ:-2,name:"tuer-_und_toranlage:v4torrahmen"} replace

setblock ~1 ~ ~ minecraft:redstone_block replace

scoreboard players set @s PZTuTor.4Tor 0
