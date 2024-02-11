
summon minecraft:zombified_piglin ~ ~ ~ {NoAI:true,Silent:true,PersistenceRequired:true,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Farbe","EtiSchMS.1Koenig","EtiSchMS.1FigurBoden"],ActiveEffects:[{Id:11b,Amplifier:127b,ShowParticles:false,Duration:2147483647}],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Koenig"]},{id:"minecraft:zombie",IsBaby:true,NoAI:true,Silent:true,PersistenceRequired:true,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Anklickbar","EtiSchMS.1Farbe","EtiSchMS.1Koenig"]}]}

execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 1 as @e[distance=..2,tag=EtiSchMS.1Koenig] at @s run teleport @s ~ ~ ~ 90 0
execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 2 as @e[distance=..2,tag=EtiSchMS.1Koenig] at @s run teleport @s ~ ~ ~ 180 0
execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 3 as @e[distance=..2,tag=EtiSchMS.1Koenig] at @s run teleport @s ~ ~ ~ 270 0

execute as @e[distance=..3,tag=EtiSchMS.1Koenig,tag=EtiSchMS.1Farbe,sort=nearest,limit=2] run data merge entity @s {CustomNameVisible:true,CustomName:'{"text":"♔","bold":true}',HandItems:[{},{id:"minecraft:golden_sword",Count:1b}],ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:true,display:{color:16383998} } },{id:"minecraft:golden_helmet",Count:1b,tag:{Unbreakable:true} } ] }

summon minecraft:armor_stand ~ ~3 ~ {Invisible:true,NoGravity:true,Tags:["EtiSchMS.1Alle","EtiSchMS.1ZugAuswahl","EtiSchMS.1BodenZugAuswahl","EtiSchMS.1Mannschaft"],Passengers:[{id:"minecraft:falling_block",NoGravity:true,Time:-2147483648,Tags:["EtiSchMS.1Alle","EtiSchMS.1ZugAuswahl","EtiSchMS.1Mannschaft"],BlockState:{Name:"minecraft:purple_concrete"}},{id:"minecraft:shulker",NoAI:true,Silent:true,Color:10b,DeathLootTable:"minecraft:empty",CustomNameVisible:true,CustomName:'{"text":"Partei wählen","color":"dark_purple","bold":true}',Tags:["EtiSchMS.1Alle","EtiSchMS.1ZugAuswahl","EtiSchMS.1Mannschaft"]}]}

scoreboard players operation @e[distance=..3,tag=EtiSchMS.1Farbe,sort=nearest,limit=2] PZSchMS.1Farbe = VarSchMS.1Farbe PZSchMS.1Farbe

scoreboard players add VarSchMS.1FigurAnzahl PZSchMS.1Brett 1
execute positioned ^3 ^ ^ run function schach-minispiel:v1figur_dame
