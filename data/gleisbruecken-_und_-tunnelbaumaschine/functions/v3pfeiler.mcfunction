# In einer Ebene wird ein Teil des Pfeilers platziert, solange der Rüstungsständer nicht auf den Boden angekommen ist
fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:smooth_stone replace minecraft:air
teleport @s ~ ~-1 ~
execute if block ~ ~-1 ~ minecraft:water run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:smooth_stone replace #gleisbruecken-_und_-tunnelbaumaschine:v3berg_und_meeres_bloecke
execute at @s unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ #gleisbruecken-_und_-tunnelbaumaschine:v3berg_und_meeres_bloecke run fill ~-2 ~3 ~-2 ~2 ~-10 ~2 minecraft:smooth_stone replace #gleisbruecken-_und_-tunnelbaumaschine:v3berg_und_meeres_bloecke
execute at @s unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ #gleisbruecken-_und_-tunnelbaumaschine:v3berg_und_meeres_bloecke run kill @s
