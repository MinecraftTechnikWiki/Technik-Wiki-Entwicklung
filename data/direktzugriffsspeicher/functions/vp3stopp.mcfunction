# Die Punktestand-Ziele werden wieder entfernt
scoreboard objectives remove PZFeld.p3Wert
scoreboard objectives remove PZFeld.p3Pos
scoreboard objectives remove PZFeld.p3Felder
scoreboard objectives remove PZFeld.p3Dim

# Alle bisher erzeugten Felder werden gelöscht
teleport @e[tag=EtiFeld.p3Start,tag=EtiFeld.p3AlleFelder] ~ -255 ~
kill @e[tag=EtiFeld.p3AlleFelder]
