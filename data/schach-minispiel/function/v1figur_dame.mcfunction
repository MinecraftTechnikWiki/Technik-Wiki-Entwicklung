
execute as @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] run scoreboard players operation VarSchMS.1Rotation PZSchMS.1Brett = @s PZSchMS.1Brett

summon minecraft:wither_skeleton ~ ~ ~ {NoAI:true,Silent:true,PersistenceRequired:true,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Farbe","EtiSchMS.1Dame","EtiSchMS.1FigurBoden"],active_effects:[{id:"minecraft:resistance",amplifier:127b,show_particles:false,duration:-1}],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Dame"]},{id:"minecraft:zombie",IsBaby:true,NoAI:true,Silent:true,PersistenceRequired:true,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Anklickbar","EtiSchMS.1Farbe","EtiSchMS.1Dame"]}]}

execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 1 as @e[distance=..2,tag=EtiSchMS.1Dame] at @s run teleport @s ~ ~ ~ 90 0
execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 2 as @e[distance=..2,tag=EtiSchMS.1Dame] at @s run teleport @s ~ ~ ~ 180 0
execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 3 as @e[distance=..2,tag=EtiSchMS.1Dame] at @s run teleport @s ~ ~ ~ 270 0

execute as @e[distance=..3,tag=EtiSchMS.1Dame,tag=EtiSchMS.1Farbe] unless score @s PZSchMS.1Farbe matches 0.. run data merge entity @s {CustomNameVisible:true,CustomName:{text:"♕",bold:true},equipment:{offhand:{id:"minecraft:diamond_sword",count:1},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16383998} },chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16383998} },head:{id:"minecraft:diamond_helmet",count:1,components:{"minecraft:unbreakable":{} } } } }

execute as @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] run scoreboard players operation VarSchMS.1Farbe PZSchMS.1Farbe = @s PZSchMS.1Farbe
execute as @e[distance=..3,tag=EtiSchMS.1Dame] unless score @s PZSchMS.1Farbe matches 0.. run scoreboard players operation @s PZSchMS.1Farbe = VarSchMS.1Farbe PZSchMS.1Farbe

execute if entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] as @e[distance=..2,tag=EtiSchMS.1Farbe,tag=EtiSchMS.1Dame,scores={PZSchMS.1Farbe=1..},sort=nearest,limit=2] store result entity @s equipment.legs.components.minecraft:dyed_color int 1 store result entity @s equipment.chest.components.minecraft:dyed_color int 1 store result entity @s equipment.head.components.minecraft:dyed_color int 1 run data get entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten,tag=EtiSchMS.1Anklickbar] equipment.heas.components.minecraft:dyed_color 1

scoreboard players set @n[distance=..3,tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1Dame] PZSchMS.1Spielz 0

execute unless entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] run scoreboard players add VarSchMS.1FigurAnzahl PZSchMS.1Brett 1
execute unless entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] positioned ^3 ^ ^ run function schach-minispiel:v1figur_laeufer
