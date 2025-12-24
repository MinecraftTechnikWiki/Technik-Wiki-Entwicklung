
scoreboard objectives remove PZSchMS.1Brett
scoreboard objectives remove PZSchMS.1Farbe
scoreboard objectives remove PZSchMS.1Spielz
scoreboard objectives remove PZSchMS.1Punkte

team remove TMSchMS.1Weiss
team remove TMSchMS.1Tuerkis
team remove TMSchMS.1Schwarz
team remove TMSchMS.1Orange

data remove storage schach-minispiel:v1daten "EigSchMS.1Variante"
data remove storage schach-minispiel:v1daten "EigSchMS.1Horde"

clear @a minecraft:armor_stand[minecraft:custom_data~{EigSchMS.1Alle:true}]

tag @a[tag=EtiSchMS.1Auswahl] remove EtiSchMS.1Auswahl

execute at @e[type=minecraft:marker,tag=EtiSchMS.1Feld] run fill ~ ~ ~ ~2 ~1 ~2 minecraft:air replace

tag @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{EigSchMS.1Alle:true} } } }] add EtiSchMS.1Alle
execute as @e[tag=EtiSchMS.1Alle] at @s run teleport @s ~ -255 ~
kill @e[tag=EtiSchMS.1Alle]

forceload remove ~ ~
