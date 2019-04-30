# Die Punktestand-Ziele werden wieder entfernt
scoreboard objectives remove PZFeld.1Wert
scoreboard objectives remove PZFeld.1Pos

# Alle bisher erzeugten Felder werden gelöscht
teleport @e[tag=EtiFeld.1Start,tag=EtiFeld.1AlleFelder] ~ -255 ~
kill @e[tag=EtiFeld.1AlleFelder]
