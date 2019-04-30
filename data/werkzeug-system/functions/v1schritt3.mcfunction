# Ein 3 * 3 Bereich wird geerntet, wenn sich vor Ort die Ackerpflanzen befinden
execute if block ~1 ~ ~ #werkzeug-system:v1pflanzen run setblock ~1 ~ ~ minecraft:air destroy
execute if block ~ ~ ~ #werkzeug-system:v1pflanzen run setblock ~ ~ ~ minecraft:air destroy
execute if block ~-1 ~ ~ #werkzeug-system:v1pflanzen run setblock ~-1 ~ ~ minecraft:air destroy

execute if block ~1 ~ ~1 #werkzeug-system:v1pflanzen run setblock ~1 ~ ~1 minecraft:air destroy
execute if block ~ ~ ~1 #werkzeug-system:v1pflanzen run setblock ~ ~ ~1 minecraft:air destroy
execute if block ~-1 ~ ~1 #werkzeug-system:v1pflanzen run setblock ~-1 ~ ~1 minecraft:air destroy

execute if block ~1 ~ ~-1 #werkzeug-system:v1pflanzen run setblock ~1 ~ ~-1 minecraft:air destroy
execute if block ~ ~ ~-1 #werkzeug-system:v1pflanzen run setblock ~ ~ ~-1 minecraft:air destroy
execute if block ~-1 ~ ~-1 #werkzeug-system:v1pflanzen run setblock ~-1 ~ ~-1 minecraft:air destroy
