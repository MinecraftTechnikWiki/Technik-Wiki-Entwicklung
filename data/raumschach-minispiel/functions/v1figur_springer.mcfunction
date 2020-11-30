
execute as @e[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Leuchten,sort=nearest,limit=1] run scoreboard players operation VarRSchMS.1Rotation PZRSchMS.1Brett = @s PZRSchMS.1Brett

summon minecraft:horse ~ ~ ~ {NoAI:true,Silent:true,Tame:true,NoGravity:true,PersistenceRequired:true,DeathLootTable:"minecraft:empty",Variant:0b,Rotation:[0.0f,0.0f],Tags:["EtiRSchMS.1Alle","EtiRSchMS.1Figur","EtiRSchMS.1Springer","EtiRSchMS.1FigurBoden"],SaddleItem:{id:"minecraft:saddle",Count:1b},ActiveEffects:[{Id:11b,Amplifier:127b,ShowParticles:false,Duration:2147483647}],Passengers:[{id:"minecraft:area_effect_cloud",Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiRSchMS.1Alle","EtiRSchMS.1Springer"]},{id:"minecraft:zombie",NoAI:true,IsBaby:true,Silent:true,PersistenceRequired:true,CustomNameVisible:true,CustomName:'{"text":"♘","bold":true}',DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiRSchMS.1Alle","EtiRSchMS.1Figur","EtiRSchMS.1Anklickbar","EtiRSchMS.1Farbe","EtiRSchMS.1Springer"],HandItems:[{},{id:"minecraft:iron_sword",Count:1b}],ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}}]}]}

execute if score VarRSchMS.1Rotation PZRSchMS.1Brett matches 1 as @e[distance=..2,tag=EtiRSchMS.1Springer] unless score @s PZRSchMS.1Farbe matches 0.. at @s run teleport @s ~ ~ ~ 90 0
execute if score VarRSchMS.1Rotation PZRSchMS.1Brett matches 2 as @e[distance=..2,tag=EtiRSchMS.1Springer] unless score @s PZRSchMS.1Farbe matches 0.. at @s run teleport @s ~ ~ ~ 180 0
execute if score VarRSchMS.1Rotation PZRSchMS.1Brett matches 3 as @e[distance=..2,tag=EtiRSchMS.1Springer] unless score @s PZRSchMS.1Farbe matches 0.. at @s run teleport @s ~ ~ ~ 270 0

execute if entity @e[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Leuchten,sort=nearest,limit=1] run scoreboard players operation VarRSchMS.1Farbe PZRSchMS.1Farbe = @e[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Leuchten,sort=nearest,limit=1] PZRSchMS.1Farbe
execute as @e[distance=..2,tag=EtiRSchMS.1Springer] unless score @s PZRSchMS.1Farbe matches 0.. run scoreboard players operation @s PZRSchMS.1Farbe = VarRSchMS.1Farbe PZRSchMS.1Farbe

data merge entity @e[distance=..2,tag=EtiRSchMS.1Springer,tag=EtiRSchMS.1FigurBoden,scores={PZRSchMS.1Farbe=1},sort=nearest,limit=1] {Variant:1b}
data merge entity @e[distance=..2,tag=EtiRSchMS.1Springer,tag=EtiRSchMS.1FigurBoden,scores={PZRSchMS.1Farbe=2},sort=nearest,limit=1] {Variant:4b}
data merge entity @e[distance=..2,tag=EtiRSchMS.1Springer,tag=EtiRSchMS.1FigurBoden,scores={PZRSchMS.1Farbe=3},sort=nearest,limit=1] {Variant:2b}

execute if entity @e[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Leuchten,sort=nearest,limit=1] as @e[distance=..2,tag=EtiRSchMS.1Farbe,tag=EtiRSchMS.1Springer,scores={PZRSchMS.1Farbe=1..},sort=nearest,limit=1] store result entity @s ArmorItems[1].tag.display.color int 1 store result entity @s ArmorItems[2].tag.display.color int 1 store result entity @s ArmorItems[3].tag.display.color int 1 run data get entity @e[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Leuchten,tag=EtiRSchMS.1Anklickbar,sort=nearest,limit=1] ArmorItems[3].tag.display.color 1

scoreboard players set @e[distance=..2,tag=EtiRSchMS.1Anklickbar,tag=EtiRSchMS.1Springer,sort=nearest,limit=1] PZRSchMS.1Spielz 0
