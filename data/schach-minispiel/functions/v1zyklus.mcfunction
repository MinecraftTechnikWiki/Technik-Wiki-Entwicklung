
execute as @e[type=minecraft:armor_stand,tag=EtiSchMS.1SchachbrettErstellen,sort=nearest,limit=1] at @s run function schach-minispiel:v1erstellen

execute as @e[type=minecraft:zombie,tag=EtiSchMS.1Anklickbar,nbt=!{Health:20.0f}] at @s run function schach-minispiel:v1spielzug_angeklickt

execute as @e[type=minecraft:shulker,tag=EtiSchMS.1ZugAuswahl,nbt=!{Health:30.0f}] at @s run function schach-minispiel:v1spielzug_hierher

execute if score KonstSchMS.1ZWEI PZSchMS.1Brett matches 2 as @a[distance=..250] unless entity @s[scores={PZSchMS.1Brett=0}] run function schach-minispiel:v1ausloeser
