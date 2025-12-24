# Punkte-Ziele löschen.
scoreboard objectives remove wegfinder.data
scoreboard objectives remove wegfinder.direction

# Gegenstände zur Bedinung löschen.
clear @a *[custom_data~{namespace: "wegfinder"}]

# Alle Objekte vom Wegfindungssystem löschen.
kill @e[tag=wegfinder]
