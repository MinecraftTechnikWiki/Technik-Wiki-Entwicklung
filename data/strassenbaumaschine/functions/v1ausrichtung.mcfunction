# Die Baumaschine richtet sich, nach dem Spieler der sich in der Lore befindet, aus.
execute rotated as @p[distance=..5,tag=EtiStraBM.1Sitzen,tag=EtiStraBM.1Ausgewaehlt] run teleport @s ~ ~ ~ ~ ~

# Die Raster-Einstellung wird ausgelesen und als vereinfachte Abfrage ermöglicht. Danach wird, sofern die Raster-Einstellung aktiv ist, die Baumaschine nur noch in die vier Himmelsrichtungen ausrichtbar sein.
data modify entity @s CustomName set from entity @s data."EigStraBM.1Raster"
teleport @s[y_rotation=-45.0..44.9,name="wahr"] ~ ~ ~ 0 0
teleport @s[y_rotation=45.0..134.9,name="wahr"] ~ ~ ~ 90 0
teleport @s[y_rotation=135.0..-134.9,name="wahr"] ~ ~ ~ 180 0
teleport @s[y_rotation=-135.0..-44.9,name="wahr"] ~ ~ ~ 270 0

# Der nächstgelegene Spieler der sich nicht im Zuschauermodus befindet führt die Ausrichtungs-Spur-Funktion aus.
data modify entity @s CustomName set from entity @s data."EigStraBM.1Zweierspur"
execute as @p[distance=..10,gamemode=!spectator] run function strassenbaumaschine:v1ausrichtung_spur
