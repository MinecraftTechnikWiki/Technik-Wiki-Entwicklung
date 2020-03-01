# Die Punktestand-Ziele werden wieder entfernt.
scoreboard objectives remove PZFeld.1Wert
scoreboard objectives remove PZFeld.1Pos

# Das Schild an der Position der Partikelwolke wird wieder entfernt.
execute at @e[type=minecraft:area_effect_cloud,tag=EtiFeld.1Schild] run setblock ~ ~ ~ minecraft:air replace

# Alle bisher erzeugten Felder werden gelöscht.
teleport @e[tag=EtiFeld.1Start,tag=EtiFeld.1AlleFelder] ~ -255 ~
kill @e[tag=EtiFeld.1AlleFelder]
