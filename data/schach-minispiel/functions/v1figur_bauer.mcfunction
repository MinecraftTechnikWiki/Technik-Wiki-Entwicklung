
summon minecraft:sheep ~ ~ ~ {NoAI:true,Silent:true,PersistenceRequired:true,DeathLootTable:"minecraft:empty",Color:0b,Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Bauer","EtiSchMS.1FigurBoden","EtiSchMS.1Farbe"],ActiveEffects:[{Id:11b,Amplifier:127b,ShowParticles:false,Duration:2147483647}],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Bauer"]},{id:"minecraft:zombie",IsBaby:true,NoAI:true,Silent:true,PersistenceRequired:true,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Anklickbar","EtiSchMS.1Farbe","EtiSchMS.1Bauer","EtiSchMS.1BauerDoppelZug"]}]}

execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 1 as @e[distance=..2,tag=EtiSchMS.1Bauer] at @s run teleport @s ~ ~ ~ 90 0
execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 2 as @e[distance=..2,tag=EtiSchMS.1Bauer] at @s run teleport @s ~ ~ ~ 180 0
execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 3 as @e[distance=..2,tag=EtiSchMS.1Bauer] at @s run teleport @s ~ ~ ~ 270 0

scoreboard players set @e[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Anklickbar,sort=nearest,limit=1] PZSchMS.1Punkte 1

data merge entity @e[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Anklickbar,sort=nearest,limit=1] {CustomNameVisible:true,CustomName:'{"text":"♙","bold":true}',HandItems:[{},{id:"minecraft:iron_hoe",Count:1b}],ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{Damage:1,Unbreakable:true,display:{color:16383998}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}}]}

scoreboard players operation @e[distance=..3,tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Farbe,sort=nearest,limit=2] PZSchMS.1Farbe = VarSchMS.1Farbe PZSchMS.1Farbe
scoreboard players operation @e[distance=..3,tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Farbe,sort=nearest,limit=2] PZSchMS.1Brett = VarSchMS.1Rotation PZSchMS.1Brett

data merge entity @e[distance=..3,tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Farbe,scores={PZSchMS.1Farbe=1},sort=nearest,limit=1] {Color:9b}
data merge entity @e[distance=..3,tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Farbe,scores={PZSchMS.1Farbe=2},sort=nearest,limit=1] {Color:15b}
data merge entity @e[distance=..3,tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Farbe,scores={PZSchMS.1Farbe=3},sort=nearest,limit=1] {Color:1b}

scoreboard players add VarSchMS.1FigurAnzahl PZSchMS.1Brett 1

execute if score VarSchMS.1HordeReihe PZSchMS.1Brett matches 5 if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 1..8 unless score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 2..3 unless score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 6..7 run kill @e[distance=..3,tag=EtiSchMS.1Bauer,sort=nearest,limit=3]

execute if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches ..7 positioned ^3 ^ ^ run function schach-minispiel:v1figur_bauer

execute if score VarSchMS.1HordeReihe PZSchMS.1Brett matches 1..5 if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 8.. run scoreboard players add VarSchMS.1HordeReihe PZSchMS.1Brett 1

execute if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 8.. run scoreboard players set VarSchMS.1FigurAnzahl PZSchMS.1Brett 0
execute if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 0 if score VarSchMS.1HordeReihe PZSchMS.1Brett matches 1..5 positioned ^-21 ^ ^3 run function schach-minispiel:v1figur_bauer

execute if score VarSchMS.1HordeReihe PZSchMS.1Brett matches 6.. run scoreboard players set VarSchMS.1HordeReihe PZSchMS.1Brett 0
