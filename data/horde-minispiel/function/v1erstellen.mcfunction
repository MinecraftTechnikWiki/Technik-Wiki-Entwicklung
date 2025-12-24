
data merge entity @s {Tags:["EtiHordMS.1Alle","EtiHordMS.1Gebiet"]}

scoreboard players set VarHordMS.1Breite PZHordMS.1Ausl 1
function horde-minispiel:v1erstellen_breite

execute at @e[type=minecraft:area_effect_cloud,tag=EtiHordMS.1Bereich] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:0,name:"horde-minispiel:v1gebiet_gras"} replace
execute at @e[type=minecraft:area_effect_cloud,tag=EtiHordMS.1Bereich] run setblock ~1 ~ ~ minecraft:redstone_block replace


setblock ~10 ~ ~15 minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:0,name:"horde-minispiel:v1portal"} replace
setblock ~11 ~ ~15 minecraft:redstone_block replace
