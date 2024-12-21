
execute as @e[type=minecraft:armor_stand,tag=EtiSchMS.1SchachbrettErstellen,sort=nearest,limit=1] at @s run function schach-minispiel:v1erstellen

execute as @e[type=minecraft:zombie,tag=EtiSchMS.1Anklickbar,nbt=!{Health:20.0f}] at @s run function schach-minispiel:v1spielzug_angeklickt

execute as @e[type=minecraft:shulker,tag=EtiSchMS.1ZugAuswahl,nbt=!{Health:30.0f}] at @s run function schach-minispiel:v1spielzug_hierher

execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigSchMS.1Schach:true}] run tag @s add EtiSchMS.1Ausgewaehlt

scoreboard players set @a[tag=EtiSchMS.1Ausgewaehlt,tag=!EtiSchMS.1Auswahl] PZSchMS.1Brett -99

execute as @a[tag=EtiSchMS.1Ausgewaehlt] unless entity @s[scores={PZSchMS.1Brett=0}] run function schach-minispiel:v1ausloeser

tag @a[tag=EtiSchMS.1Ausgewaehlt,tag=!EtiSchMS.1Auswahl] add EtiSchMS.1Auswahl
tag @a[tag=!EtiSchMS.1Ausgewaehlt,tag=EtiSchMS.1Auswahl] remove EtiSchMS.1Auswahl

tag @a[tag=EtiSchMS.1Ausgewaehlt] remove EtiSchMS.1Ausgewaehlt
