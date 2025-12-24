
scoreboard players add VarBlZal.1Schleife PZBlZal.1Wert 1
scoreboard players operation VarBlZal.1Sortieren PZBlZal.1Wert = VarBlZal.1Liste PZBlZal.1Wert
scoreboard players operation VarBlZal.1Sortieren PZBlZal.1Wert -= VarBlZal.1Schleife PZBlZal.1Wert
scoreboard players set VarBlZal.1Schleife2 PZBlZal.1Wert 0
function block-zaehler:v1tauschen

execute if score VarBlZal.1Schleife PZBlZal.1Wert < VarBlZal.1Liste PZBlZal.1Wert run function block-zaehler:v1liste
