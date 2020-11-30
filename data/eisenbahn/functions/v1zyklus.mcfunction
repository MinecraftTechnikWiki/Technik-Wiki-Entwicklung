
execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.1Bauwerk] at @s run function eisenbahn:v1bauwerk

execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.1Erstellen] at @s run function eisenbahn:v1erstellen

execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.1Lok] at @s if entity @p[distance=..20,scores={PZEisenB.1Schl=1..}] run function eisenbahn:v1zug

scoreboard players set @a[scores={PZEisenB.1Schl=1..}] PZEisenB.1Schl 0
