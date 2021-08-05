
scoreboard players operation @s PZStrBTBM.2Schl = @s PZStrBTBM.2Laen

execute if entity @s[y_rotation=135..-135] rotated 180 0 run function strassenbruecken-_und_-tunnelbaumaschine:v2strasse
execute if entity @s[y_rotation=-135..-45] rotated -90 0 run function strassenbruecken-_und_-tunnelbaumaschine:v2strasse
execute if entity @s[y_rotation=-45..45] rotated 0 0 run function strassenbruecken-_und_-tunnelbaumaschine:v2strasse
execute if entity @s[y_rotation=45..135] rotated 90 0 run function strassenbruecken-_und_-tunnelbaumaschine:v2strasse
