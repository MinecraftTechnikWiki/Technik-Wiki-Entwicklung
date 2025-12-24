
execute as @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] run scoreboard players operation VarSchMS.1Rotation PZSchMS.1Brett = @s PZSchMS.1Brett

summon minecraft:armor_stand ~ ~ ~ {Invisible:true,NoGravity:true,Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Turm","EtiSchMS.1FigurBoden"],Passengers:[{id:"minecraft:falling_block",NoGravity:true,Time:-2147483648,BlockState:{Name:"minecraft:white_concrete"},Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Turm"],Passengers:[{id:"minecraft:armor_stand",Small:true,Invisible:true,Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Turm"],equipment:{head:{id:"minecraft:white_concrete",count:1} },Passengers:[{id:"minecraft:zombie",IsBaby:true,NoAI:true,Silent:true,PersistenceRequired:true,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Anklickbar","EtiSchMS.1Farbe","EtiSchMS.1Turm"]}]},{id:"minecraft:shulker",NoAI:true,PersistenceRequired:true,Color:0b,DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiSchMS.1Alle","EtiSchMS.1Figur","EtiSchMS.1Turm","EtiSchMS.1Farbe"],active_effects:[{id:"minecraft:resistance",amplifier:127b,show_particles:false,duration:-1}]}]}]}

execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 1 as @e[distance=..2,tag=EtiSchMS.1Turm] at @s run teleport @s ~ ~ ~ 90 0
execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 2 as @e[distance=..2,tag=EtiSchMS.1Turm] at @s run teleport @s ~ ~ ~ 180 0
execute if score VarSchMS.1Rotation PZSchMS.1Brett matches 3 as @e[distance=..2,tag=EtiSchMS.1Turm] at @s run teleport @s ~ ~ ~ 270 0

data merge entity @n[distance=..3,tag=EtiSchMS.1Turm,tag=EtiSchMS.1Anklickbar] {CustomNameVisible:true,CustomName:{text:"♖",bold:true},equipment:{mainhand:{id:"minecraft:shield",count:1},offhand:{id:"minecraft:iron_sword",count:1},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16383998} },chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16383998} },head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16383998} } } }

execute as @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] run scoreboard players operation VarSchMS.1Farbe PZSchMS.1Farbe = @s PZSchMS.1Farbe
execute as @e[distance=..2,tag=EtiSchMS.1Turm] unless score @s PZSchMS.1Farbe matches 0.. run scoreboard players operation @s PZSchMS.1Farbe = VarSchMS.1Farbe PZSchMS.1Farbe

data merge entity @n[distance=..3,type=minecraft:shulker,tag=EtiSchMS.1Turm,scores={PZSchMS.1Farbe=1}] {Color:9b}
data merge entity @n[distance=..3,type=minecraft:shulker,tag=EtiSchMS.1Turm,scores={PZSchMS.1Farbe=2}] {Color:15b}
data merge entity @n[distance=..3,type=minecraft:shulker,tag=EtiSchMS.1Turm,scores={PZSchMS.1Farbe=3}] {Color:1b}

execute if entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] as @e[distance=..2,tag=EtiSchMS.1Farbe,tag=EtiSchMS.1Turm,scores={PZSchMS.1Farbe=1..},sort=nearest,limit=2] store result entity @s equipment.legs.components.minecraft:dyed_color int 1 store result entity @s equipment.chest.components.minecraft:dyed_color int 1 store result entity @s equipment.head.components.minecraft:dyed_color int 1 run data get entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten,tag=EtiSchMS.1Anklickbar] equipment.head.components.minecraft:dyed_color 1

execute as @n[distance=..3,tag=EtiSchMS.1Turm,tag=EtiSchMS.1FigurBoden] at @s if block ~ ~ ~ minecraft:air run teleport @s ~ ~-1.35 ~

scoreboard players set @n[distance=..2,tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1Turm] PZSchMS.1Spielz 0

execute unless entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 run scoreboard players add VarSchMS.1FigurAnzahl PZSchMS.1Brett 1
execute unless entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 8.. run scoreboard players set VarSchMS.1FigurAnzahl PZSchMS.1Brett 0
execute unless entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 0 unless score VarSchMS.1Rotation PZSchMS.1Brett matches 2 unless score VarSchMS.1Rotation PZSchMS.1Brett matches 3 positioned ^-21 ^ ^3 run function schach-minispiel:v1figur_bauer
execute unless entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 0 unless score VarSchMS.1Rotation PZSchMS.1Brett matches 0 unless score VarSchMS.1Rotation PZSchMS.1Brett matches 1 positioned ^-21 ^ ^-3 run function schach-minispiel:v1figur_bauer
execute unless entity @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] unless score VarSchMS.1FestungSchach PZSchMS.1Brett matches 1 if score VarSchMS.1FigurAnzahl PZSchMS.1Brett matches 1 positioned ^3 ^ ^ run function schach-minispiel:v1figur_springer
