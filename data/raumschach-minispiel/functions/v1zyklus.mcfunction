
execute as @e[type=minecraft:armor_stand,tag=EtiRSchMS.1SchachbrettErstellen] at @s positioned ~2 ~ ~2 run function raumschach-minispiel:v1erstellen

execute as @e[type=minecraft:zombie,tag=EtiRSchMS.1Anklickbar,nbt=!{Health:20.0f}] at @s run function raumschach-minispiel:v1spielzug_angeklickt

execute as @e[type=minecraft:shulker,tag=EtiRSchMS.1ZugAuswahl,nbt=!{Health:30.0f}] at @s run function raumschach-minispiel:v1spielzug_hierher

tag @a[nbt={SelectedItem:{tag:{EigRSchMS.1RaumSchach:true} } }] add EtiRSchMS.1Ausgewaehlt

scoreboard players set @a[tag=EtiRSchMS.1Ausgewaehlt,tag=!EtiRSchMS.1Auswahl] PZRSchMS.1Brett -99

execute as @a[tag=EtiRSchMS.1Ausgewaehlt] unless entity @s[scores={PZRSchMS.1Brett=0}] run function raumschach-minispiel:v1ausloeser

tag @a[tag=EtiRSchMS.1Ausgewaehlt,tag=!EtiRSchMS.1Auswahl] add EtiRSchMS.1Auswahl
tag @a[tag=!EtiRSchMS.1Ausgewaehlt,tag=EtiRSchMS.1Auswahl] remove EtiRSchMS.1Auswahl

tag @a[tag=EtiRSchMS.1Ausgewaehlt] remove EtiRSchMS.1Ausgewaehlt
