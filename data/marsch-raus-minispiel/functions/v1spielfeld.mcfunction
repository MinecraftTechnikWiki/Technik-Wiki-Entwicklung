
scoreboard players add VarMADNMS.1Farbe PZMADNMS.1Team 1

execute positioned ^-3 ^ ^3 run function marsch-raus-minispiel:v1feld

summon minecraft:armor_stand ^-15 ^1 ^15 {Small:true,Invisible:true,NoGravity:true,Tags:["EtiMADNMS.1Alle","EtiMADNMS.1Haus","EtiMADNMS.1Startfeld","EtiMADNMS.1Neu"]}
summon minecraft:armor_stand ^-12 ^1 ^15 {Small:true,Invisible:true,NoGravity:true,Tags:["EtiMADNMS.1Alle","EtiMADNMS.1Haus","EtiMADNMS.1Startfeld","EtiMADNMS.1Neu"]}
summon minecraft:armor_stand ^-15 ^1 ^12 {Small:true,Invisible:true,NoGravity:true,Tags:["EtiMADNMS.1Alle","EtiMADNMS.1Haus","EtiMADNMS.1Startfeld","EtiMADNMS.1Neu"]}
summon minecraft:armor_stand ^-12 ^1 ^12 {Small:true,Invisible:true,NoGravity:true,Tags:["EtiMADNMS.1Alle","EtiMADNMS.1Haus","EtiMADNMS.1Startfeld","EtiMADNMS.1Neu"]}

#summon minecraft:armor_stand ^-12 ^1 ^9 {Small:true,Invisible:true,NoGravity:true,Tags:["EtiMADNMS.1Alle","EtiMADNMS.1Team","EtiMADNMS.1Neu"]}

summon minecraft:armor_stand ^ ^1 ^3 {Small:true,Invisible:true,NoGravity:true,Tags:["EtiMADNMS.1Alle","EtiMADNMS.1Ziel","EtiMADNMS.1Neu"]}
summon minecraft:armor_stand ^ ^1 ^6 {Small:true,Invisible:true,NoGravity:true,Tags:["EtiMADNMS.1Alle","EtiMADNMS.1Ziel","EtiMADNMS.1Neu"]}
summon minecraft:armor_stand ^ ^1 ^9 {Small:true,Invisible:true,NoGravity:true,Tags:["EtiMADNMS.1Alle","EtiMADNMS.1Ziel","EtiMADNMS.1Neu"]}
summon minecraft:armor_stand ^ ^1 ^12 {Small:true,Invisible:true,NoGravity:true,Tags:["EtiMADNMS.1Alle","EtiMADNMS.1Ziel","EtiMADNMS.1Neu"]}

summon minecraft:armor_stand ^-3 ^1 ^15 {Small:true,Invisible:true,NoGravity:true,Tags:["EtiMADNMS.1Alle","EtiMADNMS.1Startfeld","EtiMADNMS.1Team","EtiMADNMS.1Neu"]}

execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Neu] unless score @s PZMADNMS.1Team = @s PZMADNMS.1Team run scoreboard players operation @s PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team

scoreboard players set VarMADNMS.1Position PZMADNMS.1Wert 0
execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Haus,tag=EtiMADNMS.1Neu] if score @s PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team store result score @s PZMADNMS.1Wert run scoreboard players add VarMADNMS.1Position PZMADNMS.1Wert 1

execute at @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Startfeld,tag=EtiMADNMS.1Neu] run setblock ~ ~-1 ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"marsch-raus-minispiel:v1start_feld"} replace

execute at @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Ziel,tag=EtiMADNMS.1Neu] run setblock ~ ~-1 ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"marsch-raus-minispiel:v1ziel_feld"} replace

execute at @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Neu] run setblock ~1 ~-1 ~ minecraft:redstone_block replace

#execute at @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Team,tag=EtiMADNMS.1Neu] run setblock ~ ~-1 ~ minecraft:bedrock replace

execute at @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Neu,scores={PZMADNMS.1Team=1}] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:orange_concrete replace minecraft:bedrock
execute at @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Neu,scores={PZMADNMS.1Team=2}] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:light_blue_concrete replace minecraft:bedrock
execute at @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Neu,scores={PZMADNMS.1Team=3}] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:purple_concrete replace minecraft:bedrock
execute at @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Neu,scores={PZMADNMS.1Team=4}] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:lime_concrete replace minecraft:bedrock

execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Neu] positioned as @s run teleport @s ~ ~ ~ ~180 ~

tag @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Neu] remove EtiMADNMS.1Neu

execute if score VarMADNMS.1Farbe PZMADNMS.1Team matches 1..3 rotated ~90 ~ run function marsch-raus-minispiel:v1spielfeld
