# Die Punktestände werden gelöscht
scoreboard objectives remove PZObjSt.10Nr
scoreboard objectives remove PZObjSt.10Vergl
scoreboard objectives remove PZObjSt.10Laenge

# Alle Etiketten, die der Spieler erhalten hatte, werden wieder entfernt
tag @a[tag=EtiObjSt.10Spieler] remove EtiObjSt.10Alle
tag @a[tag=EtiObjSt.10Spieler] remove EtiObjSt.10Spieler

# Alle Rüstungsständer werden wieder entfernt
kill @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle]
