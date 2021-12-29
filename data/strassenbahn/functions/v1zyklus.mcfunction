
execute as @e[type=minecraft:armor_stand,tag=EtiStrasB.1Bauwerk] at @s run function strassenbahn:v1bauwerk

execute at @e[type=minecraft:armor_stand,tag=EtiStrasB.1Erstellen] run scoreboard players add @p[distance=..8] PZStrasB.1Schl 1
tag @e[type=minecraft:armor_stand,tag=EtiStrasB.1Erstellen] remove EtiStrasB.1Erstellen

execute as @e[type=minecraft:armor_stand,tag=EtiStrasB.1Tram] at @s if entity @p[distance=..25,scores={PZStrasB.1Schl=1..},nbt={OnGround:true}] run function strassenbahn:v1tram

scoreboard players set @a[scores={PZStrasB.1Schl=1..}] PZStrasB.1Schl 0
