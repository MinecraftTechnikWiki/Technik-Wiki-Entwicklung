
execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.1Bahn] unless entity @s[y_rotation=45..135] at @s align y if block ~ ~6 ~ minecraft:magenta_glazed_terracotta[facing=east] run teleport @s ~ ~ ~ 270 0
execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.1Bahn] unless entity @s[y_rotation=-45..45] at @s align y if block ~ ~6 ~ minecraft:magenta_glazed_terracotta[facing=north] run teleport @s ~ ~ ~ 180 0
execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.1Bahn] unless entity @s[y_rotation=-135..-45] at @s align y if block ~ ~6 ~ minecraft:magenta_glazed_terracotta[facing=west] run teleport @s ~ ~ ~ 90 0
execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.1Bahn] unless entity @s[y_rotation=135..-135] at @s align y if block ~ ~6 ~ minecraft:magenta_glazed_terracotta[facing=south] run teleport @s ~ ~ ~ 0 0

execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.1Erstellen] at @s align y run function schwebebahn:v1erstellen

execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.1Bahn] at @s run function schwebebahn:v1bahn

execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.1ZugEnde] if entity @p[distance=..45,scores={PZSchwB.1Schl=3..},nbt={OnGround:true}] as @e[type=minecraft:armor_stand,tag=EtiSchwB.1ZugAnfang,sort=nearest,limit=1] at @s run function schwebebahn:v1fahren
execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.1ZugEnde] at @s if entity @p[distance=..45,scores={PZSchwB.1Schl=3..},nbt={OnGround:true}] run function schwebebahn:v1fahren

scoreboard players set @a[scores={PZSchwB.1Schl=3..}] PZSchwB.1Schl 0

execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.1Strecke] at @s run function schwebebahn:v1spur
