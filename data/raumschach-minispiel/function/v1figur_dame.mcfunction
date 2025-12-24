
execute as @n[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Leuchten] run scoreboard players operation VarRSchMS.1Rotation PZRSchMS.1Brett = @s PZRSchMS.1Brett

summon minecraft:wither_skeleton ~ ~ ~ {NoAI:true,Silent:true,PersistenceRequired:true,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiRSchMS.1Alle","EtiRSchMS.1Figur","EtiRSchMS.1Farbe","EtiRSchMS.1Dame","EtiRSchMS.1FigurBoden"],active_effects:[{id:"minecraft:resistance",amplifier:127b,show_particles:false,duration:-1}],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiRSchMS.1Alle","EtiRSchMS.1Figur","EtiRSchMS.1Dame"]},{id:"minecraft:zombie",IsBaby:true,NoAI:true,Silent:true,PersistenceRequired:true,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiRSchMS.1Alle","EtiRSchMS.1Figur","EtiRSchMS.1Anklickbar","EtiRSchMS.1Farbe","EtiRSchMS.1Dame"]}]}

execute if score VarRSchMS.1Rotation PZRSchMS.1Brett matches 1 as @e[distance=..2,tag=EtiRSchMS.1Dame] at @s run teleport @s ~ ~ ~ 90 0
execute if score VarRSchMS.1Rotation PZRSchMS.1Brett matches 2 as @e[distance=..2,tag=EtiRSchMS.1Dame] at @s run teleport @s ~ ~ ~ 180 0
execute if score VarRSchMS.1Rotation PZRSchMS.1Brett matches 3 as @e[distance=..2,tag=EtiRSchMS.1Dame] at @s run teleport @s ~ ~ ~ 270 0

execute as @e[distance=..3,tag=EtiRSchMS.1Dame,tag=EtiRSchMS.1Farbe] unless score @s PZRSchMS.1Farbe matches 0.. run data merge entity @s {CustomNameVisible:true,CustomName:{text:"♕",bold:true},equipment:{offhand:{id:"minecraft:diamond_sword",count:1},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16383998} },chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16383998} },head:{id:"minecraft:diamond_helmet",count:1,components:{"minecraft:unbreakable":{} } } } }

execute as @n[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Leuchten] run scoreboard players operation VarRSchMS.1Farbe PZRSchMS.1Farbe = @s PZRSchMS.1Farbe
execute as @e[distance=..3,tag=EtiRSchMS.1Dame] unless score @s PZRSchMS.1Farbe matches 0.. run scoreboard players operation @s PZRSchMS.1Farbe = VarRSchMS.1Farbe PZRSchMS.1Farbe

execute if entity @n[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Leuchten] as @e[distance=..3,tag=EtiRSchMS.1Farbe,tag=EtiRSchMS.1Dame,scores={PZRSchMS.1Farbe=1..},sort=nearest,limit=2] store result entity @s equipment.legs.components.minecraft:dyed_color int 1 store result entity @s equipment.chest.components.minecraft:dyed_color int 1 store result entity @s equipment.head.components.minecraft:dyed_color int 1 run data get entity @n[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Leuchten,tag=EtiRSchMS.1Anklickbar] equipment.head.components.minecraft:dyed_color 1

scoreboard players set @n[distance=..2,tag=EtiRSchMS.1Anklickbar,tag=EtiRSchMS.1Dame] PZRSchMS.1Spielz 0
