
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["EtiManSV.2Alle","EtiManSV.2Reihenfolge","EtiManSV.2Wert"]}

execute as @e[type=minecraft:area_effect_cloud,tag=EtiManSV.2Wert,sort=nearest,limit=1] store result score @s PZManSV.2Wert run scoreboard players get VarManSV.2Schleife PZManSV.2Wert
tag @e[type=minecraft:area_effect_cloud,tag=EtiManSV.2Wert,sort=nearest,limit=1] remove EtiManSV.2Wert

scoreboard players remove VarManSV.2Schleife PZManSV.2Wert 1
execute if score VarManSV.2Schleife PZManSV.2Wert matches 1.. run function mannschaftsverteiler:v2uebrig
