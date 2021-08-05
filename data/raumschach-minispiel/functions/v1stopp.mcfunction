
scoreboard objectives remove PZRSchMS.1Brett
scoreboard objectives remove PZRSchMS.1Farbe
scoreboard objectives remove PZRSchMS.1Spielz

scoreboard objectives remove PZRSchMS.1Zeile
scoreboard objectives remove PZRSchMS.1Spalte

data remove storage raumschach-minispiel:v1werte "EigRSchMS.1Variante"
data remove storage raumschach-minispiel:v1werte "EigRSchMS.1Horde"

clear @a minecraft:armor_stand{EigRSchMS.1Alle:true}

tag @a[tag=EtiRSchMS.1Auswahl] remove EtiRSchMS.1Auswahl

execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace

tag @e[type=minecraft:item,nbt={Item:{tag:{EigRSchMS.1Alle:true} } }] add EtiRSchMS.1Alle
execute as @e[tag=EtiRSchMS.1Alle] at @s run teleport @s ~ -255 ~
kill @e[tag=EtiRSchMS.1Alle]

forceload remove ~ ~
