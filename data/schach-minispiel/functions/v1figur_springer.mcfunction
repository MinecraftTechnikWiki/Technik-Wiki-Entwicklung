
execute as @e[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten,sort=nearest,limit=1] run scoreboard players operation VarSchMS.1Rotation PZSchMS.1Brett = @s PZSchMS.1Brett

summon minecraft:horse ~ ~ ~ {NoAI:true,Silent:true,Tame:true,NoGravity:true,PersistenceRequired:true,DeathLootTable:"minecraft:empty",Variant:0b,Rotation:[0.0f,0.0f],ArmorItem:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16383998} } },Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Farbe","EtiSchMS.1Springer","EtiSchMS.1FigurBoden"],SaddleItem:{id:"minecraft:saddle",Count:1b},ActiveEffects:[{Id:11b,Amplifier:127b,ShowParticles:false,Duration:-1}],Passengers:[{id:"minecraft:zombie",NoAI:true,IsBaby:true,Silent:true,PersistenceRequired:true,CustomNameVisible:true,CustomName:'{"text":"♘","bold":true}',DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Anklickbar","EtiSchMS.1Farbe","EtiSchMS.1Springer"],HandItems:[{},{id:"minecraft:iron_sword",Count:1b}],ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}}]}]}

execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 1 as @e[distance=..2,tag=EtiSchMS.1Springer] unless score @s PZSchMS.1Farbe matches 0.. at @s run teleport @s ~ ~ ~ 90 0
execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 2 as @e[distance=..2,tag=EtiSchMS.1Springer] unless score @s PZSchMS.1Farbe matches 0.. at @s run teleport @s ~ ~ ~ 180 0
execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 3 as @e[distance=..2,tag=EtiSchMS.1Springer] unless score @s PZSchMS.1Farbe matches 0.. at @s run teleport @s ~ ~ ~ 270 0

execute as @e[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten,sort=nearest,limit=1] run scoreboard players operation VarSchMS.1Farbe PZSchMS.1Farbe = @s PZSchMS.1Farbe
execute as @e[distance=..2,tag=EtiSchMS.1Springer] unless score @s PZSchMS.1Farbe matches 0.. run scoreboard players operation @s PZSchMS.1Farbe = VarSchMS.1Farbe PZSchMS.1Farbe

data merge entity @e[distance=..2,tag=EtiSchMS.1Springer,tag=EtiSchMS.1FigurBoden,scores={PZSchMS.1Farbe=1},sort=nearest,limit=1] {Variant:1b}
data merge entity @e[distance=..2,tag=EtiSchMS.1Springer,tag=EtiSchMS.1FigurBoden,scores={PZSchMS.1Farbe=2},sort=nearest,limit=1] {Variant:4b}
data merge entity @e[distance=..2,tag=EtiSchMS.1Springer,tag=EtiSchMS.1FigurBoden,scores={PZSchMS.1Farbe=3},sort=nearest,limit=1] {Variant:2b}

execute if entity @e[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten,sort=nearest,limit=1] as @e[distance=..2,tag=EtiSchMS.1Farbe,tag=EtiSchMS.1Springer,scores={PZSchMS.1Farbe=1..},sort=nearest,limit=2] store result entity @s ArmorItems[1].tag.display.color int 1 store result entity @s ArmorItems[2].tag.display.color int 1 store result entity @s ArmorItems[3].tag.display.color int 1 store result entity @s ArmorItem.tag.display.color int 1 run data get entity @e[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten,tag=EtiSchMS.1Anklickbar,sort=nearest,limit=1] ArmorItems[3].tag.display.color 1

scoreboard players set @e[distance=..2,tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1Springer,sort=nearest,limit=1] PZSchMS.1Spielz 0

execute unless entity @e[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten,sort=nearest,limit=1] unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 run scoreboard players add VarSchMS.1FigurAnzahl PZSchMS.1Brett 1
execute unless entity @e[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten,sort=nearest,limit=1] unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 2 positioned ^3 ^ ^ run function schach-minispiel:v1figur_laeufer
execute unless entity @e[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten,sort=nearest,limit=1] unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 7 positioned ^3 ^ ^ run function schach-minispiel:v1figur_turm

execute unless entity @e[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten,sort=nearest,limit=1] if score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 positioned ^-3 ^ ^-6 run function schach-minispiel:v1figur_laeufer
