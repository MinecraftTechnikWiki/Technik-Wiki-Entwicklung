# Damit der Spieler einfacher zu selektieren ist, wird im ein Etikett gegeben
tag @p[distance=..10,scores={PZBruB.3Schl=1..}] add EtiBruB.3Spieler

# Die aktuelle Anzahl der Materialien die der Spieler bei sich trägt wird ausgelesen und in seinem Punktestand gespeichert
execute as @p[distance=..10,tag=EtiBruB.3Spieler] store result score @s PZBruB.3Schien run clear @s minecraft:stone_brick_stairs 0
execute as @p[distance=..10,tag=EtiBruB.3Spieler] store result score @s PZBruB.3Schwel run clear @s minecraft:spruce_slab 0
execute as @p[distance=..10,tag=EtiBruB.3Spieler] store result score @s PZBruB.3Stein run clear @s minecraft:stone 0
execute as @p[distance=..10,tag=EtiBruB.3Spieler] store result score @s PZBruB.3Andes run clear @s minecraft:andesite 0
execute as @p[distance=..10,tag=EtiBruB.3Spieler] store result score @s PZBruB.3Pfeil run clear @s minecraft:magenta_glazed_terracotta 0

# Wenn der Spieler genug von allen Materielien bei sich trug, werden ihm die benötigten Güter entfernt
clear @p[distance=..10,tag=EtiBruB.3Spieler,scores={PZBruB.3Schien=2..,PZBruB.3Schwel=3..,PZBruB.3Stein=14..,PZBruB.3Andes=4..,PZBruB.3Pfeil=1..}] minecraft:stone_brick_stairs 2
clear @p[distance=..10,tag=EtiBruB.3Spieler,scores={PZBruB.3Schien=2..,PZBruB.3Schwel=3..,PZBruB.3Stein=14..,PZBruB.3Andes=4..,PZBruB.3Pfeil=1..}] minecraft:spruce_slab 3
clear @p[distance=..10,tag=EtiBruB.3Spieler,scores={PZBruB.3Schien=2..,PZBruB.3Schwel=3..,PZBruB.3Stein=14..,PZBruB.3Andes=4..,PZBruB.3Pfeil=1..}] minecraft:stone 14
clear @p[distance=..10,tag=EtiBruB.3Spieler,scores={PZBruB.3Schien=2..,PZBruB.3Schwel=3..,PZBruB.3Stein=14..,PZBruB.3Andes=4..,PZBruB.3Pfeil=1..}] minecraft:andesite 4
clear @p[distance=..10,tag=EtiBruB.3Spieler,scores={PZBruB.3Schien=2..,PZBruB.3Schwel=3..,PZBruB.3Stein=14..,PZBruB.3Andes=4..,PZBruB.3Pfeil=1..}] minecraft:magenta_glazed_terracotta 1

# Wenn er genug Material bei sich trug, wird die Funktion für das Brücken verlegen aufgerufen, ansonsten erhält der Spieler eine Fehlermeldung
execute if entity @p[tag=EtiBruB.3Spieler,scores={PZBruB.3Schien=2..,PZBruB.3Schwel=3..,PZBruB.3Stein=14..,PZBruB.3Andes=4..,PZBruB.3Pfeil=1..}] run function brueckenbauer:v3bruecke_verlegen_1
execute as @p[distance=..10,tag=EtiBruB.3Spieler] unless entity @s[scores={PZBruB.3Schien=2..,PZBruB.3Schwel=3..,PZBruB.3Stein=14..,PZBruB.3Andes=4..,PZBruB.3Pfeil=1..}] run tellraw @s ["Brückenbauer.3 ",{"text":"Du hast zu wenig Blöcke bei dir!","bold":true}]

# Das Etikett wird anschließend wieder entfernt
tag @p[distance=..10,tag=EtiBruB.3Spieler] remove EtiBruB.3Spieler
