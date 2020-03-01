# Der Spieler der schleicht, bekommt ein Etikett, um ihn besser erfassen zu können
tag @p[distance=..10,scores={PZGleisB.2Schl=1..}] add EtiGleisB.2Spieler

# Dem Spieler werden in seinen Punkteständen die Anzahl der vorhandenen Materialien gespeichert
execute as @p[distance=..10,tag=EtiGleisB.2Spieler] store result score @s PZGleisB.2Gleis run clear @s minecraft:rail 0
execute as @p[distance=..10,tag=EtiGleisB.2Spieler] store result score @s PZGleisB.2Andes run clear @s minecraft:andesite 0
execute as @p[distance=..10,tag=EtiGleisB.2Spieler] store result score @s PZGleisB.2Stein run clear @s minecraft:smooth_stone 0

# Nur wenn der Spieler von allen Materialien genug hat, werden ihm diese abgezogen
clear @p[distance=..10,tag=EtiGleisB.2Spieler,scores={PZGleisB.2Gleis=2..,PZGleisB.2Andes=2..,PZGleisB.2Stein=3..}] minecraft:rail 1
clear @p[distance=..10,tag=EtiGleisB.2Spieler,scores={PZGleisB.2Gleis=2..,PZGleisB.2Andes=2..,PZGleisB.2Stein=3..}] minecraft:andesite 1
clear @p[distance=..10,tag=EtiGleisB.2Spieler,scores={PZGleisB.2Gleis=2..,PZGleisB.2Andes=2..,PZGleisB.2Stein=3..}] minecraft:smooth_stone 2

# Falls der Spieler einen Gleisbaumaschine für zwei Spuren bedient, werden ihm noch weitere Materialien abgezogen
execute if entity @s[tag=EtiGleisB.2ZweiSpuren] run clear @p[distance=..10,tag=EtiGleisB.2Spieler,scores={PZGleisB.2Gleis=2..,PZGleisB.2Andes=2..,PZGleisB.2Stein=3..}] minecraft:rail 1
execute if entity @s[tag=EtiGleisB.2ZweiSpuren] run clear @p[distance=..10,tag=EtiGleisB.2Spieler,scores={PZGleisB.2Gleis=2..,PZGleisB.2Andes=2..,PZGleisB.2Stein=3..}] minecraft:smooth_stone 2

# Nur wenn der Spieler genug von dem Material hatte, wird die Gleis-Verlegen-1-Funktion aufgerufen und falls nicht, dann erhält er eine Fehlermeldung
execute if entity @p[tag=EtiGleisB.2Spieler,scores={PZGleisB.2Gleis=2..,PZGleisB.2Andes=2..,PZGleisB.2Stein=3..}] run function gleisbaumaschine:v2gleis_verlegen_1
execute as @p[distance=..10,tag=EtiGleisB.2Spieler] unless entity @s[scores={PZGleisB.2Gleis=2..,PZGleisB.2Andes=2..,PZGleisB.2Stein=3..}] run tellraw @s ["Gleisbaumaschine.1 ",{"text":"Du hast zu wenig Blöcke bei dir!","bold":true}]

# Als letztes wird dem Spieler das Etikett wieder entfernt
tag @p[distance=..10,tag=EtiGleisB.2Spieler] remove EtiGleisB.2Spieler
