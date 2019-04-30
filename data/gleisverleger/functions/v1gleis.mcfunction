# Der Spieler der schleicht, bekommt ein Etikett, um ihn besser erfassen zu können
tag @p[distance=..10,scores={PZGleisV.1Schl=1..}] add EtiGleisV.1Spieler

# Dem Spieler werden in seinen Punkteständen die Anzahl der vorhandenen Materialien gespeichert
execute as @p[distance=..10,tag=EtiGleisV.1Spieler] store result score @s PZGleisV.1Gleis run clear @s minecraft:rail 0
execute as @p[distance=..10,tag=EtiGleisV.1Spieler] store result score @s PZGleisV.1Andes run clear @s minecraft:andesite 0
execute as @p[distance=..10,tag=EtiGleisV.1Spieler] store result score @s PZGleisV.1Stein run clear @s minecraft:stone 0

# Nur wenn der Spieler von allen Materialien genug hat, werden ihm diese abgezogen
clear @p[distance=..10,tag=EtiGleisV.1Spieler,scores={PZGleisV.1Gleis=2..,PZGleisV.1Andes=2..,PZGleisV.1Stein=3..}] minecraft:rail 1
clear @p[distance=..10,tag=EtiGleisV.1Spieler,scores={PZGleisV.1Gleis=2..,PZGleisV.1Andes=2..,PZGleisV.1Stein=3..}] minecraft:andesite 1
clear @p[distance=..10,tag=EtiGleisV.1Spieler,scores={PZGleisV.1Gleis=2..,PZGleisV.1Andes=2..,PZGleisV.1Stein=3..}] minecraft:stone 2

# Falls der Spieler einen Gleisverleger für zwei Spuren bedient, werden ihm noch weitere Materialien abgezogen
execute if entity @s[tag=EtiGleisV.1ZweiSpuren] run clear @p[distance=..10,tag=EtiGleisV.1Spieler,scores={PZGleisV.1Gleis=2..,PZGleisV.1Andes=2..,PZGleisV.1Stein=3..}] minecraft:rail 1
execute if entity @s[tag=EtiGleisV.1ZweiSpuren] run clear @p[distance=..10,tag=EtiGleisV.1Spieler,scores={PZGleisV.1Gleis=2..,PZGleisV.1Andes=2..,PZGleisV.1Stein=3..}] minecraft:stone 2

# Nur wenn der Spieler genug von dem Material hatte, wird die Gleis-Verlegen-1-Funktion aufgerufen und falls nicht, dann erhält er eine Fehlermeldung
execute if entity @p[tag=EtiGleisV.1Spieler,scores={PZGleisV.1Gleis=2..,PZGleisV.1Andes=2..,PZGleisV.1Stein=3..}] run function gleisverleger:v1gleis_verlegen_1
execute as @p[distance=..10,tag=EtiGleisV.1Spieler] unless entity @s[scores={PZGleisV.1Gleis=2..,PZGleisV.1Andes=2..,PZGleisV.1Stein=3..}] run tellraw @s ["Gleisverleger.1 ",{"text":"Du hast zu wenig Blöcke bei dir!","bold":true}]

# Als letztes wird dem Spieler das Etikett wieder entfernt
tag @p[distance=..10,tag=EtiGleisV.1Spieler] remove EtiGleisV.1Spieler
