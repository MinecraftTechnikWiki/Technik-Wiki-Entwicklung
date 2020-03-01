# Ab Stufe 1 und höher
function werkzeug-system:v1ernten

# Ab Stufe 2 und höher
execute if entity @s[scores={PZWerkS.1Verz=2..}] positioned ~1 ~ ~1 run function werkzeug-system:v1ernten
execute if entity @s[scores={PZWerkS.1Verz=2}] positioned ~-1 ~ ~1 run function werkzeug-system:v1ernten
execute if entity @s[scores={PZWerkS.1Verz=2}] positioned ~1 ~ ~-1 run function werkzeug-system:v1ernten
execute if entity @s[scores={PZWerkS.1Verz=2..}] positioned ~-1 ~ ~-1 run function werkzeug-system:v1ernten

# Ab Stufe 3 und höher
execute if entity @s[scores={PZWerkS.1Verz=3..}] positioned ~2 ~ ~2 run function werkzeug-system:v1ernten
execute if entity @s[scores={PZWerkS.1Verz=3..}] positioned ~-2 ~ ~2 run function werkzeug-system:v1ernten
execute if entity @s[scores={PZWerkS.1Verz=3..}] positioned ~2 ~ ~-2 run function werkzeug-system:v1ernten
execute if entity @s[scores={PZWerkS.1Verz=3..}] positioned ~-2 ~ ~-2 run function werkzeug-system:v1ernten

# Ab Stufe 4 und höher
execute if entity @s[scores={PZWerkS.1Verz=4..}] positioned ~3 ~ ~3 run function werkzeug-system:v1ernten
execute if entity @s[scores={PZWerkS.1Verz=4..}] positioned ~-3 ~ ~3 run function werkzeug-system:v1ernten
execute if entity @s[scores={PZWerkS.1Verz=4..}] positioned ~3 ~ ~-3 run function werkzeug-system:v1ernten
execute if entity @s[scores={PZWerkS.1Verz=4..}] positioned ~-3 ~ ~-3 run function werkzeug-system:v1ernten

execute if entity @s[scores={PZWerkS.1Verz=4..}] positioned ~3 ~ ~ run function werkzeug-system:v1ernten
execute if entity @s[scores={PZWerkS.1Verz=4..}] positioned ~-3 ~ ~ run function werkzeug-system:v1ernten
execute if entity @s[scores={PZWerkS.1Verz=4..}] positioned ~ ~ ~3 run function werkzeug-system:v1ernten
execute if entity @s[scores={PZWerkS.1Verz=4..}] positioned ~ ~ ~-3 run function werkzeug-system:v1ernten

# Ab Stufe 5
execute if entity @s[scores={PZWerkS.1Verz=5..}] positioned ~4 ~ ~4 run function werkzeug-system:v1ernten
execute if entity @s[scores={PZWerkS.1Verz=5..}] positioned ~-4 ~ ~4 run function werkzeug-system:v1ernten
execute if entity @s[scores={PZWerkS.1Verz=5..}] positioned ~4 ~ ~-4 run function werkzeug-system:v1ernten
execute if entity @s[scores={PZWerkS.1Verz=5..}] positioned ~-4 ~ ~-4 run function werkzeug-system:v1ernten
