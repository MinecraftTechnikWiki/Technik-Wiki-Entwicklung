# Damit der Spieler einfacher zu selektieren ist, wird im ein Etikett gegeben
tag @p[distance=..10,scores={PZGBuTB.3Schl=1..}] add EtiGBuTB.3Spieler

# Die aktuelle Anzahl der Materialien die der Spieler bei sich trägt wird ausgelesen und in seinem Punktestand gespeichert
execute as @p[distance=..10,tag=EtiGBuTB.3Spieler] store result score @s PZGBuTB.3Schien run clear @s minecraft:stone_brick_stairs 0
execute as @p[distance=..10,tag=EtiGBuTB.3Spieler] store result score @s PZGBuTB.3Schwel run clear @s minecraft:spruce_slab 0
execute as @p[distance=..10,tag=EtiGBuTB.3Spieler] store result score @s PZGBuTB.3Stein run clear @s minecraft:smooth_stone 0
execute as @p[distance=..10,tag=EtiGBuTB.3Spieler] store result score @s PZGBuTB.3Andes run clear @s minecraft:andesite 0
execute as @p[distance=..10,tag=EtiGBuTB.3Spieler] store result score @s PZGBuTB.3Pfeil run clear @s minecraft:magenta_glazed_terracotta 0

# Wenn der Spieler genug von allen Materielien bei sich trug, werden ihm die benötigten Güter entfernt
clear @p[distance=..10,tag=EtiGBuTB.3Spieler,scores={PZGBuTB.3Schien=2..,PZGBuTB.3Schwel=3..,PZGBuTB.3Stein=14..,PZGBuTB.3Andes=4..,PZGBuTB.3Pfeil=1..}] minecraft:stone_brick_stairs 2
clear @p[distance=..10,tag=EtiGBuTB.3Spieler,scores={PZGBuTB.3Schien=2..,PZGBuTB.3Schwel=3..,PZGBuTB.3Stein=14..,PZGBuTB.3Andes=4..,PZGBuTB.3Pfeil=1..}] minecraft:spruce_slab 3
clear @p[distance=..10,tag=EtiGBuTB.3Spieler,scores={PZGBuTB.3Schien=2..,PZGBuTB.3Schwel=3..,PZGBuTB.3Stein=14..,PZGBuTB.3Andes=4..,PZGBuTB.3Pfeil=1..}] minecraft:smooth_stone 14
clear @p[distance=..10,tag=EtiGBuTB.3Spieler,scores={PZGBuTB.3Schien=2..,PZGBuTB.3Schwel=3..,PZGBuTB.3Stein=14..,PZGBuTB.3Andes=4..,PZGBuTB.3Pfeil=1..}] minecraft:andesite 4
clear @p[distance=..10,tag=EtiGBuTB.3Spieler,scores={PZGBuTB.3Schien=2..,PZGBuTB.3Schwel=3..,PZGBuTB.3Stein=14..,PZGBuTB.3Andes=4..,PZGBuTB.3Pfeil=1..}] minecraft:magenta_glazed_terracotta 1

# Wenn er genug Material bei sich trug, wird die Funktion für das Brücken verlegen aufgerufen, ansonsten erhält der Spieler eine Fehlermeldung
execute if entity @p[tag=EtiGBuTB.3Spieler,scores={PZGBuTB.3Schien=2..,PZGBuTB.3Schwel=3..,PZGBuTB.3Stein=14..,PZGBuTB.3Andes=4..,PZGBuTB.3Pfeil=1..}] run function gleisbruecken-_und_-tunnelbaumaschine:v3bruecke_verlegen_1
execute as @p[distance=..10,tag=EtiGBuTB.3Spieler] unless entity @s[scores={PZGBuTB.3Schien=2..,PZGBuTB.3Schwel=3..,PZGBuTB.3Stein=14..,PZGBuTB.3Andes=4..,PZGBuTB.3Pfeil=1..}] run tellraw @s ["Gleisbrücken- und -tunnelbaumaschine.3 ",{"text":"Du hast zu wenig Blöcke bei dir!","bold":true}]

# Das Etikett wird anschließend wieder entfernt
tag @p[distance=..10,tag=EtiGBuTB.3Spieler] remove EtiGBuTB.3Spieler
