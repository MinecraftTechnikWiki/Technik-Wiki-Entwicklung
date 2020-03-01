
execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.2Gleisstrecke] at @s as @p if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ~ ~ ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-1,posY:0,posZ:-3,name:"eisenbahn:v2eisenbahngleis"} replace
execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.2Gleisstrecke] at @s as @p if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:3,posY:0,posZ:-1,name:"eisenbahn:v2eisenbahngleis"} replace

execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.2Station] at @s as @p if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-1,posY:0,posZ:-5,name:"eisenbahn:v2station"} replace
execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.2Station] at @s as @p if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ~ ~ ~ minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:5,posY:0,posZ:-1,name:"eisenbahn:v2station"} replace

execute at @e[type=minecraft:armor_stand,tag=EtiEisenB.2Bauwerk] run setblock ~ ~ ~1 minecraft:redstone_block replace
kill @e[type=minecraft:armor_stand,tag=EtiEisenB.2Bauwerk]

execute at @e[type=minecraft:armor_stand,tag=EtiEisenB.2Erstellen] run scoreboard players add @p[distance=..8] PZEisenB.2Schl 1
tag @e[type=minecraft:armor_stand,tag=EtiEisenB.2Erstellen] remove EtiEisenB.2Erstellen

execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.2Lok] at @s if entity @p[distance=..25,scores={PZEisenB.2Schl=1..},nbt={OnGround:true}] run function eisenbahn:v2lok

scoreboard players set @a[scores={PZEisenB.2Schl=1..}] PZEisenB.2Schl 0
