
execute at @e[distance=..100,type=minecraft:interaction,tag=EtiPaintBMS.1Startpunkt] positioned ~-5 ~-1 ~-5 at @e[dx=10,dy=16,dz=10,type=minecraft:snowball] run particle minecraft:block{block_state:{Name:"minecraft:barrier"} } ~ ~ ~ 0 0 0 1 1 force @a[distance=..15,tag=EtiPaintBMS.1Spielen]

execute at @e[distance=..100,type=minecraft:interaction,tag=EtiPaintBMS.1Startpunkt] positioned ~-5 ~-1 ~-5 run kill @e[dx=10,dy=16,dz=10,type=minecraft:snowball]

execute as @e[distance=..100,type=minecraft:marker,tag=EtiPaintBMS.1Paintball] at @s as @a[distance=..2.5,tag=EtiPaintBMS.1Spielen,gamemode=!spectator] run function paintball-minispiel:v1treffer with entity @n[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld] data."EigPaintBMS.1Argumente"

execute as @e[distance=..100,type=minecraft:marker,tag=EtiPaintBMS.1Paintball] at @s unless entity @e[distance=..1,type=minecraft:snowball,tag=EtiPaintBMS.1Paintball] run kill @s

execute at @e[distance=..100,type=minecraft:snowball,tag=!EtiPaintBMS.1Paintball] summon minecraft:marker store result score @s PZPaintBMS.1Verlassen run ride @s mount @n[type=minecraft:snowball,tag=!EtiPaintBMS.1Paintball]

execute as @e[distance=..100,type=minecraft:snowball,tag=!EtiPaintBMS.1Paintball] on passengers run data merge entity @s {Tags:["EtiPaintBMS.1Alle","EtiPaintBMS.1Paintball"]}

execute as @e[distance=..100,type=minecraft:snowball,tag=!EtiPaintBMS.1Paintball] store result score @s PZPaintBMS.1Wert on passengers store result score @s PZPaintBMS.1Wert on vehicle run data get entity @s Item.components.minecraft:custom_data."EigPaintBMS.1Mannschaft"

execute as @e[distance=..100,type=minecraft:snowball,tag=!EtiPaintBMS.1Paintball,scores={PZPaintBMS.1Wert=1}] run data modify entity @s Item set value {id:"minecraft:red_concrete",count:1}
execute as @e[distance=..100,type=minecraft:snowball,tag=!EtiPaintBMS.1Paintball,scores={PZPaintBMS.1Wert=2}] run data modify entity @s Item set value {id:"minecraft:blue_concrete",count:1}

tag @e[distance=..100,type=minecraft:snowball,tag=!EtiPaintBMS.1Paintball,scores={PZPaintBMS.1Wert=1..}] add EtiPaintBMS.1Paintball
