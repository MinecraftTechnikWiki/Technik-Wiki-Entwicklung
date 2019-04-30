
scoreboard players operation #VarKoDe.2Rest PZKoDe.2Wert = #VarKoDe.2EingabeZahl PZKoDe.2Wert
scoreboard players operation #VarKoDe.2Rest PZKoDe.2Wert %= #VarKoDe.2AusgabeSystem PZKoDe.2Wert
scoreboard players operation #VarKoDe.2EingabeZahl PZKoDe.2Wert /= #VarKoDe.2AusgabeSystem PZKoDe.2Wert
scoreboard players operation #VarKoDe.2Rest PZKoDe.2Wert *= #VarKoDe.2Potenz PZKoDe.2Wert
scoreboard players operation #VarKoDe.2Term PZKoDe.2Wert += #VarKoDe.2Rest PZKoDe.2Wert
scoreboard players operation #VarKoDe.2Potenz PZKoDe.2Wert *= KonstKoDe.2ZEHN PZKoDe.2Wert

execute if score #VarKoDe.2EingabeZahl PZKoDe.2Wert matches 1.. run function kodierer_und_dekodierer:v2eingabe
