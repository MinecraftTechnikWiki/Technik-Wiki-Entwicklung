
scoreboard objectives add PZRadiW.2Wert trigger ["Radizierwerk.2: ",{"text":"Wert der Variablen","bold":true}]

scoreboard players set VarRadiW.2Variable1 PZRadiW.2Wert 1
scoreboard players set VarRadiW.2Variable2 PZRadiW.2Wert 2
scoreboard players set VarRadiW.2Ergebnis PZRadiW.2Wert 1

scoreboard players set KonstRadiW.2EINS PZRadiW.2Wert 1
scoreboard players set KonstRadiW.2ZWEI PZRadiW.2Wert 2
scoreboard players set KonstRadiW.2MINUSEINS PZRadiW.2Wert -1

data merge storage radizierwerk:v2daten {EigRadi.2Bruch:'""',EigRadi.2Wert:'{"text":"1","color":"dark_purple","bold":true}',EigRadi.2NegativeWurzel:'""',EigRadi.2Ergebnis:[]}
