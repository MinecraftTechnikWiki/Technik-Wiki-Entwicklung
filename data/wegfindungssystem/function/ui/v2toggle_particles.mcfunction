
execute if score particles wegfinder.data matches 1 run scoreboard players set particles wegfinder.data 2
execute if score particles wegfinder.data matches 0 run scoreboard players set particles wegfinder.data 1
execute if score particles wegfinder.data matches 2 run scoreboard players set particles wegfinder.data 0

execute if score particles wegfinder.data matches 1 run title @s actionbar {"text": "Partikel aktiviert", "color": "green"}
execute if score particles wegfinder.data matches 0 run title @s actionbar {"text": "Partikel deaktiviert", "color": "red"}

advancement revoke @s only wegfindungssystem:v2toggle_particles
