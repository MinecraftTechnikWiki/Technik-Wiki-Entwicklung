# Um den schleichenden Spieler besser zu erfassen, wird ihm ein Etikett gegeben
tag @p[distance=..10,scores={PZGleisB.3Schl=1..}] add EtiGleisB.3Spieler

# Zuerst wird in den Punktestand-Zielen des Spielers die Anzahl der Materialien gespeichert
execute as @p[distance=..10,tag=EtiGleisB.3Spieler] store result score @s PZGleisB.3Schien run clear @s minecraft:stone_brick_stairs 0
execute as @p[distance=..10,tag=EtiGleisB.3Spieler] store result score @s PZGleisB.3Schwel run clear @s minecraft:spruce_slab 0
execute as @p[distance=..10,tag=EtiGleisB.3Spieler] store result score @s PZGleisB.3Stein run clear @s minecraft:smooth_stone 0
execute as @p[distance=..10,tag=EtiGleisB.3Spieler] store result score @s PZGleisB.3Andes run clear @s minecraft:andesite 0
execute as @p[distance=..10,tag=EtiGleisB.3Spieler] store result score @s PZGleisB.3Pfeil run clear @s minecraft:magenta_glazed_terracotta 0

# Wenn die Anzahl größer oder gleich dem benötigten entspricht, werden diese Materialien aus dem Inventar abgezogen
clear @p[distance=..10,tag=EtiGleisB.3Spieler,scores={PZGleisB.3Schien=2..,PZGleisB.3Schwel=3..,PZGleisB.3Stein=2..,PZGleisB.3Andes=5..,PZGleisB.3Pfeil=1..}] minecraft:stone_brick_stairs 2
clear @p[distance=..10,tag=EtiGleisB.3Spieler,scores={PZGleisB.3Schien=2..,PZGleisB.3Schwel=3..,PZGleisB.3Stein=2..,PZGleisB.3Andes=5..,PZGleisB.3Pfeil=1..}] minecraft:smooth_stone 2
clear @p[distance=..10,tag=EtiGleisB.3Spieler,scores={PZGleisB.3Schien=2..,PZGleisB.3Schwel=3..,PZGleisB.3Stein=2..,PZGleisB.3Andes=5..,PZGleisB.3Pfeil=1..}] minecraft:spruce_slab 3
clear @p[distance=..10,tag=EtiGleisB.3Spieler,scores={PZGleisB.3Schien=2..,PZGleisB.3Schwel=3..,PZGleisB.3Stein=2..,PZGleisB.3Andes=5..,PZGleisB.3Pfeil=1..}] minecraft:andesite 5
clear @p[distance=..10,tag=EtiGleisB.3Spieler,scores={PZGleisB.3Schien=2..,PZGleisB.3Schwel=3..,PZGleisB.3Stein=2..,PZGleisB.3Andes=5..,PZGleisB.3Pfeil=1..}] minecraft:magenta_glazed_terracotta 1

# Wenn der Spieler genug Material hatte, wird die Gleis-Verlegen-1-Funktion geladen, ansonsten erhält der Spieler eine Fehlermeldung
execute if entity @p[tag=EtiGleisB.3Spieler,scores={PZGleisB.3Schien=2..,PZGleisB.3Schwel=3..,PZGleisB.3Stein=2..,PZGleisB.3Andes=5..,PZGleisB.3Pfeil=1..}] run function gleisbaumaschine:v3gleis_verlegen_1
execute as @p[distance=..10,tag=EtiGleisB.3Spieler] unless entity @s[scores={PZGleisB.3Schien=2..,PZGleisB.3Schwel=3..,PZGleisB.3Stein=2..,PZGleisB.3Andes=5..,PZGleisB.3Pfeil=1..}] run tellraw @s ["Gleisbaumaschine.3: ",{"text":"Du hast zu wenig Blöcke bei dir!","bold":true}]

# Am Ende wird das Etikett wieder entfernt
tag @p[distance=..10,tag=EtiGleisB.3Spieler] remove EtiGleisB.3Spieler
