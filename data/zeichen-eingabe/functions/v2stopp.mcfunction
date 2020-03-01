# Das Punktestand-Ziel sowie das Team wird gelöscht
scoreboard objectives remove PZZeiEin.2Klick
team remove TMZeiEin.2Kol

# Die Treppe und das Schild wird entfernt und der Esel, Dorfbewohner und alle Rüstungsständer werden gelöscht.
execute at @e[type=minecraft:donkey,tag=EtiZeiEin.2Sitz] run fill ~ ~1 ~ ~2 ~1 ~ minecraft:air replace
execute as @e[tag=EtiZeiEin.2Alle] at @s run teleport @s ~ ~-256 ~
kill @e[tag=EtiZeiEin.2Alle]
