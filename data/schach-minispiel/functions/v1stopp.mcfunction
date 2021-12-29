
scoreboard objectives remove PZSchMS.1Brett
scoreboard objectives remove PZSchMS.1Farbe
scoreboard objectives remove PZSchMS.1Spielz
scoreboard objectives remove PZSchMS.1Punkte

data remove storage schach-minispiel:v1werte "EigSchMS.1Variante"
data remove storage schach-minispiel:v1werte "EigSchMS.1Horde"

clear @a minecraft:armor_stand{EigSchMS.1Alle:true}

tag @a[tag=EtiSchMS.1Auswahl] remove EtiSchMS.1Auswahl

execute at @e[type=minecraft:marker,tag=EtiSchMS.1Feld] run fill ~ ~ ~ ~2 ~1 ~2 minecraft:air replace

tag @e[type=minecraft:item,nbt={Item:{tag:{EigSchMS.1Alle:true} } }] add EtiSchMS.1Alle
execute as @e[tag=EtiSchMS.1Alle] at @s run teleport @s ~ -255 ~
kill @e[tag=EtiSchMS.1Alle]

forceload remove ~ ~
