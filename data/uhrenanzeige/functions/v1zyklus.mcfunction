
execute as @e[type=minecraft:armor_stand,tag=EtiUhrA.1Erstellen] at @s run function uhrenanzeige:v1erstellen

scoreboard players add #VarUhrA.1Tick PZUhrA.1Zeichen 1
execute if score #VarUhrA.1Tick PZUhrA.1Zeichen matches 20.. run function uhrenanzeige:v1uhrzeit
execute as @e[type=minecraft:armor_stand,tag=EtiUhrA.1Ziffer] at @s run function uhrenanzeige:v1ziffer

execute if score #VarUhrA.1Tick PZUhrA.1Zeichen matches 0..9 at @e[type=minecraft:armor_stand,tag=EtiUhrA.1Punkte] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:0,name:"uhrenanzeige:v1doppelpunkte"}
execute if score #VarUhrA.1Tick PZUhrA.1Zeichen matches 0..9 at @e[type=minecraft:armor_stand,tag=EtiUhrA.1Punkte] run setblock ~ ~1 ~ minecraft:redstone_block
execute if score #VarUhrA.1Tick PZUhrA.1Zeichen matches 10..19 at @e[type=minecraft:armor_stand,tag=EtiUhrA.1Punkte] run fill ~ ~ ~ ~ ~3 ~ minecraft:air
