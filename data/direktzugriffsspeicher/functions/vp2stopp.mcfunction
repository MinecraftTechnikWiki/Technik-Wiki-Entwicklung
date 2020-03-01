# Die Punktestand-Ziele werden wieder entfernt.
scoreboard objectives remove PZFeld.p2Wert
scoreboard objectives remove PZFeld.p2Pos
scoreboard objectives remove PZFeld.p2Felder

# Das Schild an der Position der Partikelwolke wird wieder entfernt.
execute at @e[type=minecraft:area_effect_cloud,tag=EtiFeld.p2Schild] run setblock ~ ~ ~ minecraft:air replace

# Alle bisher erzeugten Felder werden gelöscht.
teleport @e[tag=EtiFeld.p2Start,tag=EtiFeld.p2AlleFelder] ~ -255 ~
kill @e[tag=EtiFeld.p2AlleFelder]
