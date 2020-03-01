# Das Punktestand-Ziel wird wieder gelöscht.
scoreboard objectives remove PZZeiEin.1Taste

# Das Schild wie auch die Partikelwolken werden entfernt
execute at @e[tag=EtiZeiEin.1Zeichen] run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=EtiZeiEin.1Alle]
