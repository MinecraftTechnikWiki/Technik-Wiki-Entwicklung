# Die Punkte-Ziele werden entfernt.
scoreboard objectives remove PZDiaLS.2Reden
scoreboard objectives remove PZDiaLS.2Antwort

# Der Datenspeicher wird geleert.
data remove storage dialog-system:v2daten "EigDiaLS.2Nachrichten"
data remove storage dialog-system:v2daten "EigDiaLS.2Antworten"
data remove storage dialog-system:v2daten "EigDiaLS.2Antwort"

# Allen Spielern wird der Langsamkeitseffekt entfernt, die noch im Gespräch waren.
execute at @e[tag=EtiDiaLS.2Reden] positioned ^ ^ ^2 run effect clear @a[distance=..5,nbt={active_effects:[{id:"minecraft:slowness"}]}] minecraft:slowness

# Alle Objelkte für den Dialog werden entfernt.
kill @e[tag=EtiDiaLS.2Alle]
