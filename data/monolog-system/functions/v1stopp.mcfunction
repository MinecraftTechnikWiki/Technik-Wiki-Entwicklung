# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZMonoLS.1Reden

# Der Datenspeicher wird geleert.
data remove storage monolog-system:v1daten "EigMonoLS.1Nachrichten"

# Die Dorfbewohner werden entfernt.
kill @e[tag=EtiMonoLS.1Alle]
