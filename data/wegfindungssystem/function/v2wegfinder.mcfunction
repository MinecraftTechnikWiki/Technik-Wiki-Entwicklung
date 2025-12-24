# Zahlen für Ausrichtung.
# 1 = north  = ~ ~ ~-1
# 2 = east   = ~1 ~ ~
# 3 = south  = ~ ~ ~1
# 4 = west   = ~-1 ~ ~

# Falls kein Block im Weg, ein Block unter der neuen Position und kein Marker an der neuen Position, dann erstelle neuen Marker an der neuen Position.
execute positioned ~ ~.1 ~-1 align y if block ~ ~-.5 ~ #wegfindungssystem:v2solide if block ~ ~.5 ~ #wegfindungssystem:v2nicht_solide if block ~ ~1.5 ~ #wegfindungssystem:v2nicht_solide unless entity @e[tag=wegfinder.marker, distance=...9] run summon minecraft:marker ~ ~ ~ {Tags:["wegfinder", "wegfinder.marker", "init"]}
execute positioned ~1 ~.1 ~ align y if block ~ ~-.5 ~ #wegfindungssystem:v2solide if block ~ ~.5 ~ #wegfindungssystem:v2nicht_solide if block ~ ~1.5 ~ #wegfindungssystem:v2nicht_solide unless entity @e[tag=wegfinder.marker, distance=...9] run summon minecraft:marker ~ ~ ~ {Tags:["wegfinder", "wegfinder.marker", "init"]}
execute positioned ~ ~.1 ~1 align y if block ~ ~-.5 ~ #wegfindungssystem:v2solide if block ~ ~.5 ~ #wegfindungssystem:v2nicht_solide if block ~ ~1.5 ~ #wegfindungssystem:v2nicht_solide unless entity @e[tag=wegfinder.marker, distance=...9] run summon minecraft:marker ~ ~ ~ {Tags:["wegfinder", "wegfinder.marker", "init"]}
execute positioned ~-1 ~.1 ~ align y if block ~ ~-.5 ~ #wegfindungssystem:v2solide if block ~ ~.5 ~ #wegfindungssystem:v2nicht_solide if block ~ ~1.5 ~ #wegfindungssystem:v2nicht_solide unless entity @e[tag=wegfinder.marker, distance=...9] run summon minecraft:marker ~ ~ ~ {Tags:["wegfinder", "wegfinder.marker", "init"]}

# Setze als der aktuelle Marker für die neuen Marker die Ausrichtung.
execute positioned ~ ~ ~1 run scoreboard players set @e[tag=wegfinder.marker, tag=init, distance=..0.9] wegfinder.direction 1
execute positioned ~-1 ~ ~ run scoreboard players set @e[tag=wegfinder.marker, tag=init, distance=..0.9] wegfinder.direction 2
execute positioned ~ ~ ~-1 run scoreboard players set @e[tag=wegfinder.marker, tag=init, distance=..0.9] wegfinder.direction 3
execute positioned ~1 ~ ~ run scoreboard players set @e[tag=wegfinder.marker, tag=init, distance=..0.9] wegfinder.direction 4

# Falls der Start-Marker weniger als 1 Block vom aktuellen Marker entfernt ist, dass spawne den Visualizer-Runner und setze wegfinder.data für state auf 2.
execute if entity @n[tag=wegfinder.start, distance=..0.9] run summon minecraft:marker ~ ~ ~ {Tags:["wegfinder", "wegfinder.visualizer", "wegfinder.visualizer.runner", "init"], CustomName: {text: "Visualizer.Runner", color: "light_purple"} }
execute if entity @n[tag=wegfinder.start, distance=..0.9] run scoreboard players set state wegfinder.data 2

# Entferne den Initialisierungs-Tag und füge den calculated-Tag dem aktuellen Marker hinzu, damit er nicht nochmal berechnet wird.
tag @e[tag=init] remove init
tag @s add calculated
