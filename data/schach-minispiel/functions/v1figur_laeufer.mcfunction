
execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 0 run summon minecraft:skeleton ~ ~ ~ {NoAI:true,Silent:true,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Farbe","EtiSchMS.1Laeufer","EtiSchMS.1FigurBoden"],Passengers:[{id:"minecraft:zombie",IsBaby:true,Silent:true,NoAI:true,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Anklickbar","EtiSchMS.1Farbe","EtiSchMS.1Laeufer"]}]}

execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 1 run summon minecraft:skeleton ~ ~ ~ {NoAI:true,Silent:true,DeathLootTable:"minecraft:empty",Rotation:[90.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Farbe","EtiSchMS.1Laeufer","EtiSchMS.1FigurBoden"],Passengers:[{id:"minecraft:zombie",IsBaby:true,Silent:true,NoAI:true,DeathLootTable:"minecraft:empty",Rotation:[90.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Anklickbar","EtiSchMS.1Farbe","EtiSchMS.1Laeufer"]}]}

execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 2 run summon minecraft:skeleton ~ ~ ~ {NoAI:true,Silent:true,DeathLootTable:"minecraft:empty",Rotation:[180.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Farbe","EtiSchMS.1Laeufer","EtiSchMS.1FigurBoden"],Passengers:[{id:"minecraft:zombie",IsBaby:true,Silent:true,NoAI:true,DeathLootTable:"minecraft:empty",Rotation:[180.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Anklickbar","EtiSchMS.1Farbe","EtiSchMS.1Laeufer"]}]}

execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 3 run summon minecraft:skeleton ~ ~ ~ {NoAI:true,Silent:true,DeathLootTable:"minecraft:empty",Rotation:[270.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Farbe","EtiSchMS.1Laeufer","EtiSchMS.1FigurBoden"],Passengers:[{id:"minecraft:zombie",IsBaby:true,Silent:true,NoAI:true,DeathLootTable:"minecraft:empty",Rotation:[270.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Anklickbar","EtiSchMS.1Farbe","EtiSchMS.1Laeufer"]}]}

execute as @e[tag=EtiSchMS.1Farbe,sort=nearest,limit=2] run data merge entity @s {HandItems:[{},{id:"minecraft:bow",Count:1b}],ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:true,display:{color:16383998}}}]}

scoreboard players operation @e[distance=..3,tag=EtiSchMS.1Farbe,sort=nearest,limit=2] PZSchMS.1Farbe = VarSchMS.1Farbe PZSchMS.1Farbe

execute unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 run scoreboard players add VarSchMS.1FigurAnzahl PZSchMS.1Brett 1
execute unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 3 positioned ^3 ^ ^ run function schach-minispiel:v1figur_dame
execute unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 6 positioned ^3 ^ ^ run function schach-minispiel:v1figur_springer

execute if score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 positioned ^-3 ^ ^9 run function schach-minispiel:v1figur_turm
