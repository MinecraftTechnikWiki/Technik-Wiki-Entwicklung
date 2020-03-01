# Die Punktestand-Ziele werden wieder entfernt
scoreboard objectives remove PZFeld.p3Wert
scoreboard objectives remove PZFeld.p3Pos
scoreboard objectives remove PZFeld.p3Felder
scoreboard objectives remove PZFeld.p3Dim

# Das Schild an der Position der Partikelwolke wird wieder entfernt.
execute at @e[type=minecraft:area_effect_cloud,tag=EtiFeld.p3Schild] run setblock ~ ~ ~ minecraft:air replace

# Alle bisher erzeugten Felder werden gelöscht
teleport @e[tag=EtiFeld.p3Start,tag=EtiFeld.p3AlleFelder] ~ -255 ~
kill @e[tag=EtiFeld.p3AlleFelder]
