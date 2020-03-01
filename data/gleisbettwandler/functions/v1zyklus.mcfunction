
execute at @e[type=minecraft:area_effect_cloud,tag=EtiGlBW.1Alle] run setblock ~ ~-1.5 ~-1 minecraft:air
execute at @e[type=minecraft:area_effect_cloud,tag=EtiGlBW.1Alle] run setblock ~ ~-1.5 ~-1 minecraft:redstone_block

execute at @e[type=minecraft:armor_stand,tag=EtiGlBW.1Erstellen] run kill @e[type=minecraft:armor_stand,distance=0.9..,tag=EtiGlBW.1Wandler]
tag @e[type=minecraft:armor_stand,tag=EtiGlBW.1Erstellen] remove EtiGlBW.1Erstellen

execute as @e[type=minecraft:armor_stand,tag=EtiGlBW.1Wandler] at @s if entity @p[distance=..10] rotated ~ 0 run teleport @s ~ ~ ~ facing entity @p[distance=..10] feet

execute at @e[type=minecraft:area_effect_cloud,tag=EtiGlBW.1Alle] unless block ~ ~-0.5 ~ minecraft:air as @e[type=minecraft:armor_stand,tag=EtiGlBW.1Wandler] at @s if entity @p[distance=..10,scores={PZGlBW.1Schl=3..},nbt={OnGround:true}] rotated ~180 0 run function gleisbettwandler:v1gleisbett

execute at @e[type=minecraft:area_effect_cloud,tag=EtiGlBW.1Alle] if block ~ ~-0.5 ~ minecraft:air run tellraw @a[scores={PZGlBW.1Schl=3..},nbt={OnGround:true}] ["Gleisbettwandler.1: ",{"text":"Es wurde kein Block auf den Konstruktionsblock gesetzt um das Gleisbett festzulegen!","color":"red","bold":true}]

scoreboard players reset @a[scores={PZGlBW.1Schl=3..}] PZGlBW.1Schl
