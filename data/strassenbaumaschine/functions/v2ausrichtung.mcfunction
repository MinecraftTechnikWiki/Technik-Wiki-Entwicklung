
scoreboard players set VarStraBM.2Spur PZStraBM.2Laen 0

# Je nach Blickrichtung wird die Funktion vor dem Aufruf entsprechend exakt ausgerichtet aufgerufen.
execute if entity @s[y_rotation=-45..45] rotated 0 0 run function strassenbaumaschine:v2spuren
execute if entity @s[y_rotation=45..135] rotated 90 0 run function strassenbaumaschine:v2spuren
execute if entity @s[y_rotation=135..-135] rotated 180 0 run function strassenbaumaschine:v2spuren
execute if entity @s[y_rotation=-135..-45] rotated 270 0 run function strassenbaumaschine:v2spuren
