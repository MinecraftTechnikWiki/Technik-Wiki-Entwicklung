
execute as @e[type=minecraft:armor_stand,tag=EtiRSchMS.1SchachbrettErstellen] at @s positioned ~2 ~ ~2 run function raumschach-minispiel:v1erstellen

execute as @e[type=minecraft:zombie,tag=EtiRSchMS.1Anklickbar,nbt=!{Health:20.0f}] at @s run function raumschach-minispiel:v1spielzug_angeklickt

execute as @e[type=minecraft:shulker,tag=EtiRSchMS.1ZugAuswahl,nbt=!{Health:30.0f}] at @s run function raumschach-minispiel:v1spielzug_hierher

execute if score KonstRSchMS.1ZWEI PZRSchMS.1Brett matches 2 as @a[distance=..250] unless entity @s[scores={PZRSchMS.1Brett=0}] run function raumschach-minispiel:v1ausloeser
