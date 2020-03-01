# Dem Spieler werden in seinen Punkteständen die Anzahl der vorhandenen Materialien gespeichert
execute store result score @s PZStraB.1Beton run clear @s minecraft:gray_concrete 0
execute store result score @s PZStraB.1Quarz run clear @s minecraft:smooth_quartz 0

# Nur wenn der Spieler von allen Materialien genug hat, werden ihm diese abgezogen
clear @s[scores={PZStraB.1Beton=3..,PZStraB.1Quarz=2..}] minecraft:gray_concrete 3
clear @s[scores={PZStraB.1Beton=3..,PZStraB.1Quarz=2..}] minecraft:smooth_quartz 2

# Nur wenn der Spieler genug von dem Material hatte, wird die Gleis-Verlegen-1-Funktion aufgerufen und falls nicht, dann erhält er eine Fehlermeldung
execute unless entity @s[scores={PZStraB.1Beton=3..,PZStraB.1Quarz=2..}] run tellraw @s ["Strassenbaumaschine.1 ",{"text":"Du hast zu wenig Blöcke bei dir!","color":"red","bold":true}]
execute unless entity @s[scores={PZStraB.1Beton=3..,PZStraB.1Quarz=2..}] run tag @s remove EtiStraB.1Brennstoff
