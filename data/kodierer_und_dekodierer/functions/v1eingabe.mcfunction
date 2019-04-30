
scoreboard players operation #VarKoDe.1Rest PZKoDe.1Wert = #VarKoDe.1Zahl PZKoDe.1Wert
scoreboard players operation #VarKoDe.1Rest PZKoDe.1Wert %= KonstKoDe.1ZWEI PZKoDe.1Wert
scoreboard players operation #VarKoDe.1Zahl PZKoDe.1Wert /= KonstKoDe.1ZWEI PZKoDe.1Wert
scoreboard players operation #VarKoDe.1Rest PZKoDe.1Wert *= #VarKoDe.1Potenz PZKoDe.1Wert
scoreboard players operation #VarKoDe.1Term PZKoDe.1Wert += #VarKoDe.1Rest PZKoDe.1Wert
scoreboard players operation #VarKoDe.1Potenz PZKoDe.1Wert *= KonstKoDe.1ZEHN PZKoDe.1Wert

execute if score #VarKoDe.1Zahl PZKoDe.1Wert matches 1.. run function kodierer_und_dekodierer:v1eingabe
