
execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.2Erstellen] at @s if entity @e[distance=..2,type=minecraft:item] run function eisenbahn:v2erstellen

execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.2Alle,scores={PZEisenB.2Waggon=1..}] at @s if entity @a[distance=..10] run function eisenbahn:v2ausrichtung

execute at @e[type=minecraft:armor_stand,tag=EtiEisenB.2Alle,scores={PZEisenB.2Waggon=1..}] if entity @a[distance=..10,scores={PZEisenB.2Schl=1..},nbt={OnGround:true}] as @e[distance=..2,type=minecraft:armor_stand,tag=EtiEisenB.2Zug,sort=nearest,limit=1] at @s run function eisenbahn:v2zug

execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.2Alle,y_rotation=135..-135,scores={PZEisenB.2Waggon=1..}] at @s if entity @a[distance=..10,y_rotation=-45..45,scores={PZEisenB.2Schl=1..},nbt={OnGround:true}] positioned ~-2 ~ ~ as @e[dx=4,dy=7,dz=-100] at @s run teleport @s ~ ~ ~1
execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.2Alle,y_rotation=-135..-45,scores={PZEisenB.2Waggon=1..}] at @s if entity @a[distance=..10,y_rotation=45..135,scores={PZEisenB.2Schl=1..},nbt={OnGround:true}] positioned ~ ~ ~-2 as @e[dx=100,dy=7,dz=4] at @s run teleport @s ~-1 ~ ~
execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.2Alle,y_rotation=-45..45,scores={PZEisenB.2Waggon=1..}] at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] if entity @a[distance=..10,y_rotation=135..-135,scores={PZEisenB.2Schl=1..},nbt={OnGround:true}] positioned ~-2 ~ ~ as @e[dx=4,dy=7,dz=100] at @s run teleport @s ~ ~ ~-1
execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.2Alle,y_rotation=45..135,scores={PZEisenB.2Waggon=1..}] at @s if entity @a[distance=..10,y_rotation=-135..-45,scores={PZEisenB.2Schl=1..},nbt={OnGround:true}] positioned ~ ~ ~-2 as @e[dx=-100,dy=7,dz=4] at @s run teleport @s ~1 ~ ~

execute as @a[scores={PZEisenB.2Schl=1..}] as @e[type=minecraft:armor_stand,y_rotation=135..-135,tag=EtiEisenB.2Alle,scores={PZEisenB.2Waggon=1..}] at @s positioned ~ ~1 ~-2 run kill @e[dx=4,dy=7,dz=18,type=minecraft:item]

scoreboard players set @a[scores={PZEisenB.2Schl=1..}] PZEisenB.2Schl 0
