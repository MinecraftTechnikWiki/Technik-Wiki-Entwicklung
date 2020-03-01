
execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.3TramStrecke] at @s as @p if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ~ ~ ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-1,posY:0,posZ:-2,name:"eisenbahn:v3tram_strecke"} replace
execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.3TramStrecke] at @s as @p if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:2,posY:0,posZ:-1,name:"eisenbahn:v3tram_strecke"} replace

execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.3TramStreckeGras] at @s as @p if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ~ ~ ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-1,posY:0,posZ:-2,name:"eisenbahn:v3tram_strecke_gras"} replace
execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.3TramStreckeGras] at @s as @p if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:2,posY:0,posZ:-1,name:"eisenbahn:v3tram_strecke_gras"} replace

execute at @e[type=minecraft:armor_stand,tag=EtiEisenB.3Bauwerk] run setblock ~ ~ ~1 minecraft:redstone_block replace
kill @e[type=minecraft:armor_stand,tag=EtiEisenB.3Bauwerk]

execute at @e[type=minecraft:armor_stand,tag=EtiEisenB.3Erstellen] run scoreboard players add @p[distance=..8] PZEisenB.3Schl 1
tag @e[type=minecraft:armor_stand,tag=EtiEisenB.3Erstellen] remove EtiEisenB.3Erstellen

execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.3Tram] at @s if entity @p[distance=..25,scores={PZEisenB.3Schl=1..},nbt={OnGround:true}] run function eisenbahn:v3tram

scoreboard players set @a[scores={PZEisenB.3Schl=1..}] PZEisenB.3Schl 0
