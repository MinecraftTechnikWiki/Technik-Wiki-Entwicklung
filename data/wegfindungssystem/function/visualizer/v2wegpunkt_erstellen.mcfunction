# Teleportiere den Visualizer-Runner entsprechent dem Parameter pos.
$teleport @s $(pos)

# Erstelle einen neuen Wegpunkt.
summon minecraft:marker ~ ~ ~ {Tags: ["wegfinder.visualizer", "wegfinder", "init"]}
execute align xyz run summon minecraft:block_display ~ ~ ~ {Tags: ["wegfinder.visualizer.block", "wegfinder", "init"], block_state:{Name:"lime_stained_glass"}, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,0.1f,1f]}}

# Übernehme die Richtung vom nächsten Marker.
scoreboard players operation @e[tag=wegfinder.visualizer, tag=init] wegfinder.direction = @n[tag=wegfinder.marker] wegfinder.direction

# Entferne den Initialisierungstag.
tag @e[tag=init] remove init
