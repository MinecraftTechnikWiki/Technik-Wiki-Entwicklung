# Die Punkte-Ziele werden entfernt.
scoreboard objectives remove PZDiaLS.1Reden
scoreboard objectives remove PZDiaLS.1Antwort

# Der Datenspeicher wird geleert.
data remove storage dialog-system:v1daten "EigDiaLS.1Nachrichten"

# Allen Spielern wird der Langsamkeitseffekt entfernt, die noch im Gespräch waren.
execute at @e[tag=EtiDiaLS.1Reden] positioned ^ ^ ^2 run effect clear @a[distance=..5,nbt={active_effects:[{id:"minecraft:slowness"}]}] minecraft:slowness

# Alle Objelkte für den Dialog werden entfernt.
kill @e[tag=EtiDiaLS.1Alle]
