
summon minecraft:zombified_piglin ~ ~ ~ {NoAI:true,Silent:true,PersistenceRequired:true,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiRSchMS.1Alle","EtiRSchMS.1Figur","EtiRSchMS.1Farbe","EtiRSchMS.1Koenig","EtiRSchMS.1FigurBoden"],active_effects:[{id:"minecraft:resistance",amplifier:127b,show_particles:false,duration:-1}],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiRSchMS.1Alle","EtiRSchMS.1Figur","EtiRSchMS.1Koenig"]},{id:"minecraft:zombie",IsBaby:true,NoAI:true,Silent:true,PersistenceRequired:true,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiRSchMS.1Alle","EtiRSchMS.1Figur","EtiRSchMS.1Anklickbar","EtiRSchMS.1Farbe","EtiRSchMS.1Koenig"]}]}

execute if score VarRSchMS.1Rotation PZRSchMS.1Brett matches 1 as @e[distance=..2,tag=EtiRSchMS.1Koenig] at @s run teleport @s ~ ~ ~ 90 0
execute if score VarRSchMS.1Rotation PZRSchMS.1Brett matches 2 as @e[distance=..2,tag=EtiRSchMS.1Koenig] at @s run teleport @s ~ ~ ~ 180 0
execute if score VarRSchMS.1Rotation PZRSchMS.1Brett matches 3 as @e[distance=..2,tag=EtiRSchMS.1Koenig] at @s run teleport @s ~ ~ ~ 270 0

execute as @e[distance=..3,tag=EtiRSchMS.1Koenig,tag=EtiRSchMS.1Farbe,sort=nearest,limit=2] run data merge entity @s {CustomNameVisible:true,CustomName:{text:"♔",bold:true},equipment:{offhand:{id:"minecraft:golden_sword",count:1},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16383998} },chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16383998} },head:{id:"minecraft:golden_helmet",count:1,components:{"minecraft:unbreakable":{} } } } }

scoreboard players operation @e[distance=..3,tag=EtiRSchMS.1Farbe,sort=nearest,limit=2] PZRSchMS.1Farbe = VarRSchMS.1Farbe PZRSchMS.1Farbe
