
execute at @r[gamemode=!spectator] as @e[distance=..5,type=minecraft:item,nbt={OnGround:true,Item:{id:"minecraft:diamond_pickaxe",tag:{Enchantments:[{id:"minecraft:mending"} ] } } }] at @s run function strassenbaumaschine:v1rezept

execute at @r[gamemode=!spectator] as @e[type=minecraft:armor_stand,tag=EtiStraB.1Strassenbaumaschine] at @s if entity @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:wooden_sword",tag:{strassenbaumaschine:"v1gegenstand"} } }] run function strassenbaumaschine:v1droppen

execute at @r[gamemode=!spectator] as @e[distance=..5,type=minecraft:armor_stand,tag=EtiStraB.1Erstellen] at @s run function strassenbaumaschine:v1erstellen

execute at @r[gamemode=!spectator] as @e[distance=..5,type=minecraft:armor_stand,tag=EtiStraB.1Strassenbaumaschine] at @s if entity @p[distance=..10,nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{strassenbaumaschine:"v1gegenstand"} } }] rotated ~ 0 run function strassenbaumaschine:v1ausrichtung

execute as @a[gamemode=!spectator,scores={PZStraB.1Schl=0}] at @s as @e[distance=..5,type=minecraft:armor_stand,tag=EtiStraB.1Strassenbaumaschine,sort=nearest,limit=1] if score @p PZStraB.1Schl < @s PZStraB.1Schl run tag @s[scores={PZStraB.1Brenn=1..}] add EtiStraB.1StrasseBauen
execute as @a[gamemode=!spectator,scores={PZStraB.1Schl=1..}] at @s run function strassenbaumaschine:v1schleichen

execute as @e[type=minecraft:armor_stand,tag=EtiStraB.1StrasseBauen] if score @s PZStraB.1Schl > @s PZStraB.1Brenn at @s run tellraw @a[distance=..5,gamemode=!spectator,scores={PZStraB.1Schl=0}] ["Strassenbaumaschine.1 ",{"text":"Die gewünschte Streckenlänge ist größer als der Brennstoff reichen würde!","color":"red","bold":true}]
execute as @e[type=minecraft:armor_stand,tag=EtiStraB.1StrasseBauen] if score @s PZStraB.1Schl > @s PZStraB.1Brenn run scoreboard players operation @s PZStraB.1Schl = @s PZStraB.1Brenn
execute as @e[type=minecraft:armor_stand,tag=EtiStraB.1StrasseBauen] at @s rotated ~180 0 run function strassenbaumaschine:v1strasse
