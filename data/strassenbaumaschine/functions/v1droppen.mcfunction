
execute if score @s PZStraB.1Brenn matches 1.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:coal",Count:127b,tag:{strassenbaumaschine:"v1gegenstand"} },Tags:["EtiStraB.1Alle","EtiStraB.1Kohle"]}
execute if score @s PZStraB.1Brenn matches 1.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gray_concrete",Count:127b,tag:{strassenbaumaschine:"v1gegenstand"} },Tags:["EtiStraB.1Alle","EtiStraB.1Beton"]}
execute if score @s PZStraB.1Brenn matches 1.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:smooth_quartz",Count:127b,tag:{strassenbaumaschine:"v1gegenstand"} },Tags:["EtiStraB.1Alle","EtiStraB.1Quarz"]}

execute if score @s PZStraB.1Brenn matches 1..1411 store result entity @e[distance=..2,type=minecraft:item,tag=EtiStraB.1Kohle,sort=nearest,limit=1] Item.Count byte 0.09 run scoreboard players get @s PZStraB.1Brenn
execute if score @s PZStraB.1Brenn matches 1..42 store result entity @e[distance=..2,type=minecraft:item,tag=EtiStraB.1Beton,sort=nearest,limit=1] Item.Count byte 3 run scoreboard players get @s PZStraB.1Brenn
execute if score @s PZStraB.1Brenn matches 1..63 store result entity @e[distance=..2,type=minecraft:item,tag=EtiStraB.1Quarz,sort=nearest,limit=1] Item.Count byte 2 run scoreboard players get @s PZStraB.1Brenn

kill @e[distance=..3,tag=EtiStraB.1Segment]
function strassenbaumaschine:v1herstellen
