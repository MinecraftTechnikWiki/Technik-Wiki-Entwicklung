
execute as @n[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Leuchten] run scoreboard players operation VarRSchMS.1Rotation PZRSchMS.1Brett = @s PZRSchMS.1Brett

summon minecraft:horse ~ ~ ~ {NoAI:true,Silent:true,Tame:true,NoGravity:true,PersistenceRequired:true,DeathLootTable:"minecraft:empty",Variant:0b,Rotation:[0.0f,0.0f],Tags:["EtiRSchMS.1Alle","EtiRSchMS.1Figur","EtiRSchMS.1Springer","EtiRSchMS.1FigurBoden"],SaddleItem:{id:"minecraft:saddle",count:1},active_effects:[{id:"minecraft:resistance",amplifier:127b,show_particles:false,duration:-1}],Passengers:[{id:"minecraft:zombie",NoAI:true,IsBaby:true,Silent:true,PersistenceRequired:true,CustomNameVisible:true,CustomName:{text:"♘",bold:true},DeathLootTable:"minecraft:empty",Rotation:[0.0f,0.0f],Tags:["EtiRSchMS.1Alle","EtiRSchMS.1Figur","EtiRSchMS.1Anklickbar","EtiRSchMS.1Farbe","EtiRSchMS.1Springer"],equipment:{offhand:{id:"minecraft:iron_sword",count:1},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16383998} },chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16383998} },head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16383998} } } }]}

execute if score VarRSchMS.1Rotation PZRSchMS.1Brett matches 1 as @e[distance=..2,tag=EtiRSchMS.1Springer] unless score @s PZRSchMS.1Farbe matches 0.. at @s run teleport @s ~ ~ ~ 90 0
execute if score VarRSchMS.1Rotation PZRSchMS.1Brett matches 2 as @e[distance=..2,tag=EtiRSchMS.1Springer] unless score @s PZRSchMS.1Farbe matches 0.. at @s run teleport @s ~ ~ ~ 180 0
execute if score VarRSchMS.1Rotation PZRSchMS.1Brett matches 3 as @e[distance=..2,tag=EtiRSchMS.1Springer] unless score @s PZRSchMS.1Farbe matches 0.. at @s run teleport @s ~ ~ ~ 270 0

execute if entity @n[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Leuchten] run scoreboard players operation VarRSchMS.1Farbe PZRSchMS.1Farbe = @n[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Leuchten] PZRSchMS.1Farbe
execute as @e[distance=..2,tag=EtiRSchMS.1Springer] unless score @s PZRSchMS.1Farbe matches 0.. run scoreboard players operation @s PZRSchMS.1Farbe = VarRSchMS.1Farbe PZRSchMS.1Farbe

data merge entity @n[distance=..2,tag=EtiRSchMS.1Springer,tag=EtiRSchMS.1FigurBoden,scores={PZRSchMS.1Farbe=1}] {Variant:1b}
data merge entity @n[distance=..2,tag=EtiRSchMS.1Springer,tag=EtiRSchMS.1FigurBoden,scores={PZRSchMS.1Farbe=2}] {Variant:4b}
data merge entity @n[distance=..2,tag=EtiRSchMS.1Springer,tag=EtiRSchMS.1FigurBoden,scores={PZRSchMS.1Farbe=3}] {Variant:2b}

execute if entity @n[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Leuchten] as @n[distance=..2,tag=EtiRSchMS.1Farbe,tag=EtiRSchMS.1Springer,scores={PZRSchMS.1Farbe=1..}] store result entity @s equipment.legs.components.minecraft:dyed_color int 1 store result entity @s equipment.chest.components.minecraft:dyed_color int 1 store result entity @s equipment.head.components.minecraft:dyed_color int 1 run data get entity @n[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Leuchten,tag=EtiRSchMS.1Anklickbar] equipment.head.components.minecraft:dyed_color 1

scoreboard players set @n[distance=..2,tag=EtiRSchMS.1Anklickbar,tag=EtiRSchMS.1Springer] PZRSchMS.1Spielz 0
