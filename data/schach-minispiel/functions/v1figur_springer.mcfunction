
summon minecraft:horse ~ ~ ~ {NoAI:true,Silent:true,Tame:true,NoGravity:true,DeathLootTable:"minecraft:empty",Variant:0b,Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Springer","EtiSchMS.1FigurBoden"],SaddleItem:{id:"minecraft:saddle",Count:1b},Passengers:[{id:"minecraft:area_effect_cloud",Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiSchMS.1Alle","EtiSchMS.1Springer"]},{id:"minecraft:zombie",IsBaby:true,Silent:true,NoAI:true,CustomNameVisible:true,CustomName:'{"text":"♘","bold":true}',DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Anklickbar","EtiSchMS.1Farbe","EtiSchMS.1Springer"],HandItems:[{},{id:"minecraft:iron_sword",Count:1b}],ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}}]}]}

execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 1 as @e[distance=..2,tag=EtiSchMS.1Springer,sort=nearest,limit=3] at @s run teleport @s ~ ~ ~ 90 0
execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 2 as @e[distance=..2,tag=EtiSchMS.1Springer,sort=nearest,limit=3] at @s run teleport @s ~ ~ ~ 180 0
execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 3 as @e[distance=..2,tag=EtiSchMS.1Springer,sort=nearest,limit=3] at @s run teleport @s ~ ~ ~ 270 0

scoreboard players operation @e[distance=..2,tag=EtiSchMS.1Springer,sort=nearest,limit=3] PZSchMS.1Farbe = VarSchMS.1Farbe PZSchMS.1Farbe

data merge entity @e[distance=..2,tag=EtiSchMS.1Springer,tag=EtiSchMS.1FigurBoden,scores={PZSchMS.1Farbe=1},sort=nearest,limit=1] {Variant:1b}
data merge entity @e[distance=..2,tag=EtiSchMS.1Springer,tag=EtiSchMS.1FigurBoden,scores={PZSchMS.1Farbe=2},sort=nearest,limit=1] {Variant:4b}
data merge entity @e[distance=..2,tag=EtiSchMS.1Springer,tag=EtiSchMS.1FigurBoden,scores={PZSchMS.1Farbe=3},sort=nearest,limit=1] {Variant:2b}

execute unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 run scoreboard players add VarSchMS.1FigurAnzahl PZSchMS.1Brett 1
execute unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 2 positioned ^3 ^ ^ run function schach-minispiel:v1figur_laeufer
execute unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 7 positioned ^3 ^ ^ run function schach-minispiel:v1figur_turm

execute if score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 positioned ^-3 ^ ^-6 run function schach-minispiel:v1figur_laeufer
