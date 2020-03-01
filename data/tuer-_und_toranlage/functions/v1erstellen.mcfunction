
#teleport @s[y_rotation=135..-135] ~ ~ ~ 180 0
#teleport @s[y_rotation=-135..-45] ~ ~ ~ -90 0
#teleport @s[y_rotation=-45..45] ~ ~ ~ 0 0
#teleport @s[y_rotation=45..135] ~ ~ ~ 90 0

execute if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run data merge entity @s {Rotation:[90.0f,0.0f],Tags:["EtiTuTor.1Alle","EtiTuTor.1Torrahmen","EtiTuTor.1Aequator"]}
execute if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run data merge entity @s {Rotation:[0.0f,0.0f],Tags:["EtiTuTor.1Alle","EtiTuTor.1Torrahmen","EtiTuTor.1Pole"]}

#summon minecraft:armor_stand ~ ~ ~ {Small:true,Marker:true,Invisible:true,NoGravity:true,Tags:["EtiTuTor.1Alle","EtiTuTor.1Torrahmen"],Passengers:[{id:"minecraft:armor_stand",Small:true,Marker:true,Invisible:true,NoGravity:true,Tags:["EtiTuTor.1Alle","EtiTuTor.1Tor"]}]}

execute if entity @s[tag=EtiTuTor.1Aequator] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-2,posY:0,posZ:-4,name:"tuer-_und_toranlage:v1torrahmen"} replace
execute if entity @s[tag=EtiTuTor.1Pole] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",posX:4,posY:0,posZ:-2,name:"tuer-_und_toranlage:v1torrahmen"} replace

setblock ~1 ~ ~ minecraft:redstone_block replace

#scoreboard players set @e[distance=..2,type=minecraft:armor_stand,tag=EtiTuTor.1Tor,sort=nearest,limit=1] PZTuTor.1Tor 0
#data merge entity @s {Tags:["EtiTuTor.1Alle","EtiTuTor.1Torrahmen"]}
scoreboard players set @s PZTuTor.1Tor 0

#kill @s
