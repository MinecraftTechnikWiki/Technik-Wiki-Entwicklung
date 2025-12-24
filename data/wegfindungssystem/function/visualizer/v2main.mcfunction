
# Zahlen für Ausrichtung.
# 1 = Norden  = ~ ~ ~-1
# 2 = Osten   = ~1 ~ ~
# 3 = Süden   = ~ ~ ~1
# 4 = Westen  = ~-1 ~ ~

# Erstelle als der Visualizer-Runner bei sich einen Wegpunkt und teleportiere dich in die Richtung, in die der nächste Marker zeigt.
execute at @s if entity @n[tag=wegfinder.marker, scores={wegfinder.direction=1}, distance=..0.9] unless entity @n[tag=wegfinder.visualizer, tag=!wegfinder.visualizer.runner, distance=..0.9] run function wegfindungssystem:visualizer/v2wegpunkt_erstellen {pos: "~ ~ ~-1"}
execute at @s if entity @n[tag=wegfinder.marker, scores={wegfinder.direction=2}, distance=..0.9] unless entity @n[tag=wegfinder.visualizer, tag=!wegfinder.visualizer.runner, distance=..0.9] run function wegfindungssystem:visualizer/v2wegpunkt_erstellen {pos: "~1 ~ ~"}
execute at @s if entity @n[tag=wegfinder.marker, scores={wegfinder.direction=3}, distance=..0.9] unless entity @n[tag=wegfinder.visualizer, tag=!wegfinder.visualizer.runner, distance=..0.9] run function wegfindungssystem:visualizer/v2wegpunkt_erstellen {pos: "~ ~ ~1"}
execute at @s if entity @n[tag=wegfinder.marker, scores={wegfinder.direction=4}, distance=..0.9] unless entity @n[tag=wegfinder.visualizer, tag=!wegfinder.visualizer.runner, distance=..0.9] run function wegfindungssystem:visualizer/v2wegpunkt_erstellen {pos: "~-1 ~ ~"}

# Falls der Visualizer-Runner weniger als einen Block vom Ziel entfernt ist, wird das System beendet.
execute if entity @e[tag=wegfinder.target, distance=..0.9] run scoreboard players set state wegfinder.data 3
