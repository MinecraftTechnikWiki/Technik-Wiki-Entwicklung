# Hauptfunktion
# Steuert die anderen Funktionen zur Berechnung des Weges.

# Spawne bei dem Zielpunkt, falls er noch keinen Marker hat, einen Marker.
execute if score state wegfinder.data matches 0 as @e[tag=wegfinder.target] at @s unless entity @n[tag=wegfinder.marker, distance=..1] run summon minecraft:marker ~ ~ ~ {Tags: ["wegfinder", "wegfinder.marker"]}

# Führe jeden Tick die Funktion "wegfinder:wegfinder" als maximal 100 Marker aus, die nicht das Etiket "calculated" haben.
execute if score state wegfinder.data matches 1 as @e[tag=wegfinder.marker, limit=100, tag=!calculated] at @s run function wegfindungssystem:v2wegfinder

# Führe jeden Tick die Funktion "wegfinder:visualizer" als jeder  aus, die nicht das Etiket "calculated" haben.
execute if score state wegfinder.data matches 2 as @e[tag=wegfinder.visualizer.runner] at @s run function wegfindungssystem:visualizer/v2main

# Zahlen für Ausrichtung
# 1 = Norden  = ~ ~ ~-1
# 2 = Osten   = ~1 ~ ~
# 3 = Süden   = ~ ~ ~1
# 4 = Westen  = ~-1 ~ ~

# Farbpunkte zum anzeigen von berechneten Wegen.
# execute if score particles wegfinder.data matches 1 at @e[tag=wegfinder.marker] run particle dust{color:16711680, scale:.75} ~ ~.1 ~
execute if score particles wegfinder.data matches 1 at @e[tag=wegfinder.marker, scores={wegfinder.direction=1}] run particle dust{color:255, scale:.5} ~ ~.1 ~-.3
execute if score particles wegfinder.data matches 1 at @e[tag=wegfinder.marker, scores={wegfinder.direction=2}] run particle dust{color:255, scale:.5} ~.3 ~.1 ~
execute if score particles wegfinder.data matches 1 at @e[tag=wegfinder.marker, scores={wegfinder.direction=3}] run particle dust{color:255, scale:.5} ~ ~.1 ~.3
execute if score particles wegfinder.data matches 1 at @e[tag=wegfinder.marker, scores={wegfinder.direction=4}] run particle dust{color:255, scale:.5} ~-.3 ~.1 ~
