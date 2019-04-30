# Die Blöcke für das Gleisbett und die Brücke werden platziert, zuvor wird noch ein Hohlraum mit Verglasung erzeugt, falls man sich im Meer oder in einer Höhle befindet
execute rotated ~ 0 run fill ^4 ^ ^1 ^-4 ^11 ^-1 minecraft:light_gray_stained_glass replace #brueckenbauer:v3berg_und_meeres_bloecke
execute rotated ~ 0 run fill ^3 ^1 ^-1 ^-3 ^10 ^-1 minecraft:air replace
execute rotated ~ 0 run fill ^3 ^-2 ^-1 ^-3 ^ ^-1 minecraft:smooth_stone replace
execute rotated ~ 0 run setblock ^3 ^-2 ^-1 minecraft:air replace
execute rotated ~ 0 run setblock ^-3 ^-2 ^-1 minecraft:air replace
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiBruB.3Gleisbett1,sort=nearest,limit=4] rotated ~ 0 rotated ~ 0 run setblock ~ ~ ~ minecraft:andesite replace

# Je nach Blickrichtung des Brückenbauers werden die Gleise entsprechend ausgerichtet platziert
execute if entity @s[y_rotation=135..-135] rotated 180 0 run setblock ^1 ^1 ^1 minecraft:stone_brick_stairs[facing=west] replace
execute if entity @s[y_rotation=135..-135] rotated 180 0 run setblock ^-1 ^1 ^1 minecraft:stone_brick_stairs[facing=east] replace
execute if entity @s[y_rotation=-135..-45] rotated -90 0 run setblock ^1 ^1 ^1 minecraft:stone_brick_stairs[facing=north] replace
execute if entity @s[y_rotation=-135..-45] rotated -90 0 run setblock ^-1 ^1 ^1 minecraft:stone_brick_stairs[facing=south] replace
execute if entity @s[y_rotation=-45..45] rotated 0 0 run setblock ^1 ^1 ^1 minecraft:stone_brick_stairs[facing=east] replace
execute if entity @s[y_rotation=-45..45] rotated 0 0 run setblock ^-1 ^1 ^1 minecraft:stone_brick_stairs[facing=west] replace
execute if entity @s[y_rotation=45..135] rotated 90 0 run setblock ^1 ^1 ^1 minecraft:stone_brick_stairs[facing=south] replace
execute if entity @s[y_rotation=45..135] rotated 90 0 run setblock ^-1 ^1 ^1 minecraft:stone_brick_stairs[facing=north] replace

# In dem Gleisbett wird glasierte Keramik eingebettet die mit ihrem Pfeil die Richtung des Gleises anzeigen wird
execute if entity @s[y_rotation=135..-135] rotated 180 0 run setblock ^ ^ ^1 minecraft:magenta_glazed_terracotta[facing=north] replace
execute if entity @s[y_rotation=-135..-45] rotated -90 0 run setblock ^ ^ ^1 minecraft:magenta_glazed_terracotta[facing=east] replace
execute if entity @s[y_rotation=-45..45] rotated 0 0 run setblock ^ ^ ^1 minecraft:magenta_glazed_terracotta[facing=south] replace
execute if entity @s[y_rotation=45..135] rotated 90 0 run setblock ^ ^ ^1 minecraft:magenta_glazed_terracotta[facing=west] replace

# Alle zwei Blöcke wird eine Schwelle platziert und dazu wird der Zähler immer bis zwei hochgezählt
scoreboard players add @s PZBruB.3Schl 1
execute if entity @s[scores={PZBruB.3Schl=2..}] at @e[distance=..5,type=minecraft:armor_stand,tag=EtiBruB.3Schwelle,sort=nearest,limit=3] rotated ~ 0 run setblock ~ ~1 ~ minecraft:spruce_slab replace
scoreboard players set @s[scores={PZBruB.3Schl=2..}] PZBruB.3Schl 0

# Alle vierzehn Blöcke wird ein Oberleitungsmast durch die geladene Funktion platziert, dazu wird ein Zähler bis vierzehn hochzählen
scoreboard players add @s PZBruB.3Pfeil 1
execute if entity @s[scores={PZBruB.3Pfeil=14..}] run function brueckenbauer:v3bruecke_verlegen_2
scoreboard players set @s[scores={PZBruB.3Pfeil=14..}] PZBruB.3Pfeil 0

# Anschließend wird der Brückenverleger exakt geradeaus von seiner Blickrichtung nach vorne teleportiert
execute if entity @s[y_rotation=135..-135] rotated 180 0 run teleport @s ^ ^ ^-1
execute if entity @s[y_rotation=-135..-45] rotated -90 0 run teleport @s ^ ^ ^-1
execute if entity @s[y_rotation=-45..45] rotated 0 0 run teleport @s ^ ^ ^-1
execute if entity @s[y_rotation=45..135] rotated 90 0 run teleport @s ^ ^ ^-1
