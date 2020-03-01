# Die Punktestand-Ziele werden wieder entfernt.
scoreboard objectives remove PZFeld.p1Wert
scoreboard objectives remove PZFeld.p1Pos
scoreboard objectives remove PZFeld.p1Felder

# Das Schild an der Position der Partikelwolke wird wieder entfernt.
execute at @e[type=minecraft:area_effect_cloud,tag=EtiFeld.p1Schild] run setblock ~ ~ ~ minecraft:air replace

# Alle bisher erzeugten Felder werden gelöscht.
teleport @e[tag=EtiFeld.p1Start,tag=EtiFeld.p1AlleFelder] ~ -255 ~
kill @e[tag=EtiFeld.p1AlleFelder]
