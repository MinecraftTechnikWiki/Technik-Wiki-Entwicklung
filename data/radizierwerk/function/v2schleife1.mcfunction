
scoreboard players operation VarRadiW.2Vielfaches PZRadiW.2Wert = VarRadiW.2ZahlSchleife1 PZRadiW.2Wert
scoreboard players set VarRadiW.2ZahlSchleife2 PZRadiW.2Wert 1

function radizierwerk:v2schleife2

execute if score VarRadiW.2Vielfaches PZRadiW.2Wert <= VarRadiW.2Variable1 PZRadiW.2Wert run scoreboard players operation VarRadiW.2Ergebnis PZRadiW.2Wert = VarRadiW.2ZahlSchleife1 PZRadiW.2Wert

scoreboard players add VarRadiW.2ZahlSchleife1 PZRadiW.2Wert 1
execute if score VarRadiW.2Vielfaches PZRadiW.2Wert <= VarRadiW.2Variable1 PZRadiW.2Wert run function radizierwerk:v2schleife1
