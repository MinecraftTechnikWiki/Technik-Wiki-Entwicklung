
execute as @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] run scoreboard players operation VarSchMS.1Rotation PZSchMS.1Brett = @s PZSchMS.1Brett

summon minecraft:skeleton ~ ~ ~ {NoAI:true,Silent:true,PersistenceRequired:true,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Farbe","EtiSchMS.1Laeufer","EtiSchMS.1FigurBoden"],active_effects:[{id:"minecraft:resistance",amplifier:127b,show_particles:false,duration:-1}],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Laeufer"]},{id:"minecraft:zombie",IsBaby:true,NoAI:true,Silent:true,PersistenceRequired:true,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Anklickbar","EtiSchMS.1Farbe","EtiSchMS.1Laeufer"]}]}

execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 1 as @e[distance=..2,tag=EtiSchMS.1Laeufer] at @s run teleport @s ~ ~ ~ 90 0
execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 2 as @e[distance=..2,tag=EtiSchMS.1Laeufer] at @s run teleport @s ~ ~ ~ 180 0
execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 3 as @e[distance=..2,tag=EtiSchMS.1Laeufer] at @s run teleport @s ~ ~ ~ 270 0

execute as @e[distance=..2,tag=EtiSchMS.1Laeufer,tag=EtiSchMS.1Farbe] unless score @s PZSchMS.1Farbe matches 0.. run data merge entity @s {CustomNameVisible:true,CustomName:{text:"♗",bold:true},equipment:{offhand:{id:"minecraft:bow",count:1},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16383998} },chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16383998} },head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16383998} } } }

execute as @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] run scoreboard players operation VarSchMS.1Farbe PZSchMS.1Farbe = @s PZSchMS.1Farbe
execute as @e[distance=..2,tag=EtiSchMS.1Laeufer] unless score @s PZSchMS.1Farbe matches 0.. run scoreboard players operation @s PZSchMS.1Farbe = VarSchMS.1Farbe PZSchMS.1Farbe

execute if entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] as @e[distance=..2,tag=EtiSchMS.1Farbe,tag=EtiSchMS.1Laeufer,scores={PZSchMS.1Farbe=1..},sort=nearest,limit=2] store result entity @s equipment.legs.components.minecraft:dyed_color int 1 store result entity @s equipment.chest.components.minecraft:dyed_color int 1 store result entity @s equipment.head.components.minecraft:dyed_color int 1 run data get entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten,tag=EtiSchMS.1Anklickbar] equipment.head.components.minecraft:dyed_color 1

scoreboard players set @n[distance=..2,tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1Laeufer] PZSchMS.1Spielz 0

execute unless entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 run scoreboard players add VarSchMS.1FigurAnzahl PZSchMS.1Brett 1
execute unless entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 3 positioned ^3 ^ ^ run function schach-minispiel:v1figur_koenig
execute unless entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 6 positioned ^3 ^ ^ run function schach-minispiel:v1figur_springer

execute unless entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] if score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 positioned ^-3 ^ ^9 run function schach-minispiel:v1figur_turm
