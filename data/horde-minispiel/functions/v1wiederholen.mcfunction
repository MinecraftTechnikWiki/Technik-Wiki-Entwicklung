

execute as @e[type=minecraft:armor_stand,tag=EtiHordMS.1Erstellen] at @s run function horde-minispiel:v1erstellen

execute if entity @e[type=minecraft:armor_stand,tag=EtiHordMS.1Gebiet] as @a[distance=..25] unless entity @s[scores={PZHordMS.1Ausl=0}] run function horde-minispiel:v1ausloeser
