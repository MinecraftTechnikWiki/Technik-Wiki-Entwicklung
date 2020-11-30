
execute as @e[type=minecraft:armor_stand,tag=EtiStrasB.1TramStrecke] at @s as @p if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ~ ~ ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-1,posY:0,posZ:-2,name:"strassenbahn:v1tram_strecke"} replace
execute as @e[type=minecraft:armor_stand,tag=EtiStrasB.1TramStrecke] at @s as @p if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:2,posY:0,posZ:-1,name:"strassenbahn:v1tram_strecke"} replace

execute as @e[type=minecraft:armor_stand,tag=EtiStrasB.1TramStreckeGras] at @s as @p if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ~ ~ ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-1,posY:0,posZ:-2,name:"strassenbahn:v1tram_strecke_gras"} replace
execute as @e[type=minecraft:armor_stand,tag=EtiStrasB.1TramStreckeGras] at @s as @p if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:2,posY:0,posZ:-1,name:"strassenbahn:v1tram_strecke_gras"} replace

execute at @e[type=minecraft:armor_stand,tag=EtiStrasB.1Bauwerk] run setblock ~ ~ ~1 minecraft:redstone_block replace
kill @e[type=minecraft:armor_stand,tag=EtiStrasB.1Bauwerk]

execute at @e[type=minecraft:armor_stand,tag=EtiStrasB.1Erstellen] run scoreboard players add @p[distance=..8] PZStrasB.1Schl 1
tag @e[type=minecraft:armor_stand,tag=EtiStrasB.1Erstellen] remove EtiStrasB.1Erstellen

execute as @e[type=minecraft:armor_stand,tag=EtiStrasB.1Tram] at @s if entity @p[distance=..25,scores={PZStrasB.1Schl=1..},nbt={OnGround:true}] run function strassenbahn:v1tram

scoreboard players set @a[scores={PZStrasB.1Schl=1..}] PZStrasB.1Schl 0
