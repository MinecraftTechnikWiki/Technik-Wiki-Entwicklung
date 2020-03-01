
execute if entity @e[distance=..2,tag=EtiSchMS.1Bauer,scores={PZSchMS.1Spielz=4..},sort=nearest,limit=1] run scoreboard players operation VarSchMS.1Rotation PZSchMS.1Brett = @e[distance=..2,tag=EtiSchMS.1Bauer,scores={PZSchMS.1Spielz=4..},sort=nearest,limit=1] PZSchMS.1Brett

execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 0 run summon minecraft:wither_skeleton ~ ~ ~ {Silent:true,NoAI:true,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Farbe","EtiSchMS.1Dame","EtiSchMS.1FigurBoden"],Passengers:[{id:"minecraft:zombie",IsBaby:true,Silent:true,NoAI:true,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Anklickbar","EtiSchMS.1Farbe","EtiSchMS.1Dame"]}]}

execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 1 run summon minecraft:wither_skeleton ~ ~ ~ {Silent:true,NoAI:true,DeathLootTable:"minecraft:empty",Rotation:[90.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Farbe","EtiSchMS.1Dame","EtiSchMS.1FigurBoden"],Passengers:[{id:"minecraft:zombie",IsBaby:true,Silent:true,NoAI:true,DeathLootTable:"minecraft:empty",Rotation:[90.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Anklickbar","EtiSchMS.1Farbe","EtiSchMS.1Dame"]}]}

execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 2 run summon minecraft:wither_skeleton ~ ~ ~ {Silent:true,NoAI:true,DeathLootTable:"minecraft:empty",Rotation:[180.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Farbe","EtiSchMS.1Dame","EtiSchMS.1FigurBoden"],Passengers:[{id:"minecraft:zombie",IsBaby:true,Silent:true,NoAI:true,DeathLootTable:"minecraft:empty",Rotation:[180.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Anklickbar","EtiSchMS.1Farbe","EtiSchMS.1Dame"]}]}

execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 3 run summon minecraft:wither_skeleton ~ ~ ~ {Silent:true,NoAI:true,DeathLootTable:"minecraft:empty",Rotation:[270.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Farbe","EtiSchMS.1Dame","EtiSchMS.1FigurBoden"],Passengers:[{id:"minecraft:zombie",IsBaby:true,Silent:true,NoAI:true,DeathLootTable:"minecraft:empty",Rotation:[270.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Anklickbar","EtiSchMS.1Farbe","EtiSchMS.1Dame"]}]}

execute as @e[distance=..2,tag=EtiSchMS.1Farbe,tag=EtiSchMS.1Dame,sort=nearest,limit=2] run data merge entity @s {CustomNameVisible:true,CustomName:'{"text":"♕","bold":true}',HandItems:[{},{id:"minecraft:diamond_sword",Count:1b}],ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}}]}

execute if score VarSchMS.1Modelle PZSchMS.1Brett matches 1 as @e[distance=..2,tag=EtiSchMS.1Farbe,tag=EtiSchMS.1Dame,sort=nearest,limit=2] run data merge entity @s {HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:feather",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}}],ActiveEffects:[{Id:14b,ShowParticles:false,Duration:19999999}]}
execute if score VarSchMS.1Modelle PZSchMS.1Brett matches 1 run replaceitem entity @e[distance=..2,tag=EtiSchMS.1Dame,tag=EtiSchMS.1Anklickbar,sort=nearest,limit=1] armor.head minecraft:leather_chestplate{Unbreakable:true,Damage:5,display:{color:16383998}}

execute if entity @e[distance=..2,tag=EtiSchMS.1Bauer,scores={PZSchMS.1Spielz=4..},sort=nearest,limit=1] run scoreboard players operation VarSchMS.1Farbe PZSchMS.1Farbe = @e[distance=..2,tag=EtiSchMS.1Bauer,scores={PZSchMS.1Spielz=4..},sort=nearest,limit=1] PZSchMS.1Farbe
scoreboard players operation @e[distance=..2,tag=EtiSchMS.1Farbe,tag=EtiSchMS.1Dame,sort=nearest,limit=2] PZSchMS.1Farbe = VarSchMS.1Farbe PZSchMS.1Farbe

execute if entity @e[distance=..2,tag=EtiSchMS.1Bauer,scores={PZSchMS.1Spielz=4..},sort=nearest,limit=1] as @e[distance=..2,tag=EtiSchMS.1Farbe,tag=EtiSchMS.1Dame,scores={PZSchMS.1Farbe=1..},sort=nearest,limit=2] store result entity @s ArmorItems[1].tag.display.color int 1 store result entity @s ArmorItems[2].tag.display.color int 1 store result entity @s ArmorItems[3].tag.display.color int 1 run data get entity @e[distance=..2,tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Anklickbar,scores={PZSchMS.1Spielz=4..},sort=nearest,limit=1] ArmorItems[3].tag.display.color 1

scoreboard players set @e[distance=..2,tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1Dame,scores={PZSchMS.1Farbe=1},sort=nearest,limit=1] PZSchMS.1Spielz 0

execute unless entity @e[distance=..2,tag=EtiSchMS.1Bauer,scores={PZSchMS.1Spielz=4..}] run scoreboard players add VarSchMS.1FigurAnzahl PZSchMS.1Brett 1
execute unless entity @e[distance=..2,tag=EtiSchMS.1Bauer,scores={PZSchMS.1Spielz=4..}] positioned ^3 ^ ^ run function schach-minispiel:v1figur_koenig

execute at @e[distance=..2,tag=EtiSchMS.1Bauer,scores={PZSchMS.1Spielz=4..},sort=nearest,limit=1] run tag @e[distance=..2,tag=EtiSchMS.1Bauer] add EtiSchMS.1Besiegen
effect clear @e[tag=EtiSchMS.1Besiegen]
execute as @e[tag=EtiSchMS.1Besiegen] at @s run teleport ~ -255 ~
kill @e[tag=EtiSchMS.1Besiegen]
