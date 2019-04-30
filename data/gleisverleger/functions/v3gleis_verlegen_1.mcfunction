# Es wird ein großer Luftraum frei gemacht und dann folgt das Gleisbett
execute rotated ~ 0 run fill ^3 ^1 ^ ^-3 ^8 ^ minecraft:air replace
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiGleisV.3Gleisbett1,sort=nearest,limit=4] rotated ~ 0 rotated ~ 0 run setblock ~ ~ ~ minecraft:andesite replace
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiGleisV.3Gleisspur,sort=nearest,limit=4] rotated ~ 0 rotated ~ 0 run setblock ~ ~ ~ minecraft:smooth_stone replace

# Je nach Blickrichtung des Spielers, wird das Gleis in Form von Treppen entsprechend platziert
execute if entity @s[y_rotation=135..-135] rotated 180 0 run setblock ^1 ^1 ^1 minecraft:stone_brick_stairs[facing=west] replace
execute if entity @s[y_rotation=135..-135] rotated 180 0 run setblock ^-1 ^1 ^1 minecraft:stone_brick_stairs[facing=east] replace
execute if entity @s[y_rotation=-135..-45] rotated -90 0 run setblock ^1 ^1 ^1 minecraft:stone_brick_stairs[facing=north] replace
execute if entity @s[y_rotation=-135..-45] rotated -90 0 run setblock ^-1 ^1 ^1 minecraft:stone_brick_stairs[facing=south] replace
execute if entity @s[y_rotation=-45..45] rotated 0 0 run setblock ^1 ^1 ^1 minecraft:stone_brick_stairs[facing=east] replace
execute if entity @s[y_rotation=-45..45] rotated 0 0 run setblock ^-1 ^1 ^1 minecraft:stone_brick_stairs[facing=west] replace
execute if entity @s[y_rotation=45..135] rotated 90 0 run setblock ^1 ^1 ^1 minecraft:stone_brick_stairs[facing=south] replace
execute if entity @s[y_rotation=45..135] rotated 90 0 run setblock ^-1 ^1 ^1 minecraft:stone_brick_stairs[facing=north] replace

# Die Pfeil-Blöcke werden je nach Blickrichtung des Spieler richtig angeordnet
execute if entity @s[y_rotation=135..-135] rotated 180 0 run setblock ^ ^ ^1 minecraft:magenta_glazed_terracotta[facing=north] replace
execute if entity @s[y_rotation=-135..-45] rotated -90 0 run setblock ^ ^ ^1 minecraft:magenta_glazed_terracotta[facing=east] replace
execute if entity @s[y_rotation=-45..45] rotated 0 0 run setblock ^ ^ ^1 minecraft:magenta_glazed_terracotta[facing=south] replace
execute if entity @s[y_rotation=45..135] rotated 90 0 run setblock ^ ^ ^1 minecraft:magenta_glazed_terracotta[facing=west] replace

# Alle zwei Blöcke muss eine Schwelle platziert werden, dazu wird jeder Block gezählt
scoreboard players add @s PZGleisV.3Schl 1
execute if entity @s[scores={PZGleisV.3Schl=2..}] at @e[distance=..5,type=minecraft:armor_stand,tag=EtiGleisV.3Schwelle,sort=nearest,limit=3] rotated ~ 0 run setblock ~ ~1 ~ minecraft:spruce_slab replace
scoreboard players set @s[scores={PZGleisV.3Schl=2..}] PZGleisV.3Schl 0

# Für die Oberleitung der Eisenbahn wird alle 14 Blöcke ein Oberleitungsmast aufgestellt
scoreboard players add @s PZGleisV.3Pfeil 1
execute if entity @s[scores={PZGleisV.3Pfeil=14..}] run function gleisverleger:v3gleis_verlegen_2
scoreboard players set @s[scores={PZGleisV.3Pfeil=14..}] PZGleisV.3Pfeil 0

# Je nach Blickrichtung, wird der Gleisverleger entsprechend bewegt
execute if entity @s[y_rotation=135..-135] rotated 180 0 run teleport @s ^ ^ ^-1
execute if entity @s[y_rotation=-135..-45] rotated -90 0 run teleport @s ^ ^ ^-1
execute if entity @s[y_rotation=-45..45] rotated 0 0 run teleport @s ^ ^ ^-1
execute if entity @s[y_rotation=45..135] rotated 90 0 run teleport @s ^ ^ ^-1
