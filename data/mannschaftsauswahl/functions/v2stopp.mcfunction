
#execute store result storage mannschaftsauswahl:v2daten "EigManSA.2Argumente".Index int 1 run scoreboard players get VarManSA.2Mannschaften PZManSA.2Ausl
#execute store result score VarManSA.2Auswahl PZManSA.2Ausl run scoreboard players set @p PZManSA.2Ausl -1
#execute as @p run function mannschaftsauswahl:v2liste with storage mannschaftsauswahl:v2daten "EigManSA.2Argumente"

# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZManSA.2Ausl

# Aus den Inventaren der Spieler werden die Stöcke und Helme entfernt.
clear @a *[minecraft:custom_data~{EigManSA.2Alle:true}]

# Das eventuell vorhandene Etikett wird entfernt.
tag @a[tag=EtiManSA.2Auswahl] remove EtiManSA.2Auswahl

# Die Plattform an der Position des Markierers wird entfernt.
execute at @e[type=minecraft:marker,tag=EtiManSA.2Plattform] run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:air replace minecraft:gray_concrete

# Drops die auf den Boden geworfen wurden, erhalten ein Etikett und alle Objekte mit dem Etikett werden entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigManSA.2Alle:true}] run kill @s
kill @e[tag=EtiManSA.2Alle]
