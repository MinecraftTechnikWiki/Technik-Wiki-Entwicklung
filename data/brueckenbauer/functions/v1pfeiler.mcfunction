# Pro Ebene wird ein 3x3 Bereich mit glatten Stein ausgefüllt. Falls der Pfeiler in eine Flüssigkeit eintaucht, wird der Sockel breiter
fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:smooth_stone replace minecraft:air
teleport @s ~ ~-1 ~
execute if block ~ ~-1 ~ minecraft:water run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:smooth_stone replace #brueckenbauer:v1berg_und_meeres_bloecke
execute at @s unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ #brueckenbauer:v1berg_und_meeres_bloecke run fill ~-2 ~3 ~-2 ~2 ~-10 ~2 minecraft:smooth_stone replace #brueckenbauer:v1berg_und_meeres_bloecke
execute at @s unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ #brueckenbauer:v1berg_und_meeres_bloecke run kill @s
