# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZMonoLS.1Reden

# Der Datenspeicher wird geleert.
data remove storage monolog-system:v1daten "EigMonoLS.1Nachrichten"

# Allen Spielern wird der Langsamkeitseffekt entfernt, die noch im Gespräch waren.
execute at @e[tag=EtiMonoLS.1Reden] positioned ^ ^ ^2 run effect clear @a[distance=..5,nbt={active_effects:[{id:"minecraft:slowness"}]}] minecraft:slowness

# Die Dorfbewohner werden entfernt.
kill @e[tag=EtiMonoLS.1Alle]
