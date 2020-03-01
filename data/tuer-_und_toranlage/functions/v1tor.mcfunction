
#execute if entity @s[tag=EtiTuTor.1Oeffnen] store result score VarTuTor.1Stufe PZTuTor.1Tor run scoreboard players add @s PZTuTor.1Tor 1

#execute unless entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiTuTor.1SpielerBeimTor,sort=nearest,limit=1] run scoreboard players remove @s[scores={PZTuTor.1Tor=1..}] PZTuTor.1Tor 1
scoreboard players remove @s[tag=!EtiTuTor.1SpielerBeimTor,scores={PZTuTor.1Tor=1..}] PZTuTor.1Tor 1
scoreboard players add @s[tag=EtiTuTor.1SpielerBeimTor,scores={PZTuTor.1Tor=..2}] PZTuTor.1Tor 1
#execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiTuTor.1SpielerBeimTor,sort=nearest,limit=1] run scoreboard players add @s[scores={PZTuTor.1Tor=..2}] PZTuTor.1Tor 1

execute if entity @s[tag=EtiTuTor.1Aequator,scores={PZTuTor.1Tor=1..}] run setblock ~ ~ ~1 minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:0,posY:0,posZ:-1,name:"tuer-_und_toranlage:v1tor_1"} replace
execute if entity @s[tag=EtiTuTor.1Pole,scores={PZTuTor.1Tor=1..}] run setblock ~1 ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",posX:2,posY:0,posZ:0,name:"tuer-_und_toranlage:v1tor_2"} replace
execute if entity @s[scores={PZTuTor.1Tor=1..}] run setblock ~ ~ ~ minecraft:redstone_block replace

scoreboard players set VarTuTor.1Stufe PZTuTor.1Tor 0
execute if score @s PZTuTor.1Tor matches 1.. run function tuer-_und_toranlage:v1tor_bewegen_1

execute if entity @s[tag=EtiTuTor.1Aequator,scores={PZTuTor.1Tor=1..}] run setblock ~ ~ ~-1 minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:0,posY:0,posZ:-2,name:"tuer-_und_toranlage:v1tor_2"} replace
execute if entity @s[tag=EtiTuTor.1Pole,scores={PZTuTor.1Tor=1..}] run setblock ~-1 ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",posX:1,posY:0,posZ:0,name:"tuer-_und_toranlage:v1tor_1"} replace
execute if entity @s[scores={PZTuTor.1Tor=1..}] run setblock ~ ~ ~ minecraft:redstone_block replace

scoreboard players set VarTuTor.1Stufe PZTuTor.1Tor 0
execute if score @s PZTuTor.1Tor matches 1.. run function tuer-_und_toranlage:v1tor_bewegen_2
#say tor

execute if entity @s[tag=EtiTuTor.1Aequator,scores={PZTuTor.1Tor=0}] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:0,posY:-1,posZ:-3,name:"tuer-_und_toranlage:v1tor"} replace
execute if entity @s[tag=EtiTuTor.1Pole,scores={PZTuTor.1Tor=0}] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",posX:3,posY:-1,posZ:0,name:"tuer-_und_toranlage:v1tor"} replace

execute if entity @s[scores={PZTuTor.1Tor=0}] run setblock ~ ~ ~ minecraft:redstone_block replace
