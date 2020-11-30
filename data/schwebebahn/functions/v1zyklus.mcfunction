
execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.1Schwebebahn] unless entity @s[y_rotation=45..135] at @s if block ~ ~5 ~ minecraft:magenta_glazed_terracotta[facing=east] run teleport @s ~ ~ ~ 270 0
execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.1Schwebebahn] unless entity @s[y_rotation=-45..45] at @s if block ~ ~5 ~ minecraft:magenta_glazed_terracotta[facing=north] run teleport @s ~ ~ ~ 180 0
execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.1Schwebebahn] unless entity @s[y_rotation=-135..-45] at @s if block ~ ~5 ~ minecraft:magenta_glazed_terracotta[facing=west] run teleport @s ~ ~ ~ 90 0
execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.1Schwebebahn] unless entity @s[y_rotation=135..-135] at @s if block ~ ~5 ~ minecraft:magenta_glazed_terracotta[facing=south] run teleport @s ~ ~ ~ 0 0

execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.1Erstellen] at @s store success score @s PZSchwB.1Schl if block ~ ~5 ~ minecraft:magenta_glazed_terracotta run function schwebebahn:v1erstellen
execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.1Erstellen,scores={PZSchwB.1Schl=0}] run tellraw @a[distance=..10] ["Schwebebahn.1: ",{"text":"Kein Schwebebahngleis über dem Rüstungsständer gefunden!","color":"red","bold":true}]
kill @e[type=minecraft:armor_stand,tag=EtiSchwB.1Erstellen,scores={PZSchwB.1Schl=0}]

execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.1Schwebebahn] at @s run function schwebebahn:v1schwebebahn

execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.1ZugEnde] if entity @p[distance=..45,scores={PZSchwB.1Schl=3..},nbt={OnGround:true}] as @e[type=minecraft:armor_stand,tag=EtiSchwB.1ZugAnfang,sort=nearest,limit=1] at @s run function schwebebahn:v1fahren
execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.1ZugEnde] at @s if entity @p[distance=..45,scores={PZSchwB.1Schl=3..},nbt={OnGround:true}] run function schwebebahn:v1fahren

scoreboard players set @a[scores={PZSchwB.1Schl=3..}] PZSchwB.1Schl 0

execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.1Strecke] at @s run function schwebebahn:v1schwebebahn_strecke
