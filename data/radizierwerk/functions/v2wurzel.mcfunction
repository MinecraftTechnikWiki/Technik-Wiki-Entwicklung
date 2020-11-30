
execute store success score VarRadiW.2Variable1Negativ PZRadiW.2Wert if score VarRadiW.2Variable1 PZRadiW.2Wert matches ..-1
execute store success score VarRadiW.2Variable2Negativ PZRadiW.2Wert if score VarRadiW.2Variable2 PZRadiW.2Wert matches ..-1

execute if score VarRadiW.2Variable2Negativ PZRadiW.2Wert matches 1 run scoreboard players operation VarRadiW.2Variable2 PZRadiW.2Wert *= KonstRadiW.2MINUSEINS PZRadiW.2Wert

scoreboard players operation VarRadiW.2ModulusZwei PZRadiW.2Wert = VarRadiW.2Variable2 PZRadiW.2Wert
scoreboard players operation VarRadiW.2ModulusZwei PZRadiW.2Wert %= KonstRadiW.2ZWEI PZRadiW.2Wert

scoreboard players set VarRadiW.2Var1NegativUndVar2ModulusZwei PZRadiW.2Wert 0
execute if score VarRadiW.2Variable1Negativ PZRadiW.2Wert matches 1 if score VarRadiW.2ModulusZwei PZRadiW.2Wert matches 0 run scoreboard players set VarRadiW.2Var1NegativUndVar2ModulusZwei PZRadiW.2Wert 1

execute if score VarRadiW.2Var1NegativUndVar2ModulusZwei PZRadiW.2Wert matches 0 run data merge storage radizierwerk:v2daten {EigRadi.2NegativeWurzel:'""'}
execute if score VarRadiW.2Var1NegativUndVar2ModulusZwei PZRadiW.2Wert matches 1 run data merge storage radizierwerk:v2daten {EigRadi.2NegativeWurzel:'{"text":"i","color":"blue","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Imaginäre Einheit i = √-1"} } }'}
execute if score VarRadiW.2Var1NegativUndVar2ModulusZwei PZRadiW.2Wert matches 1 run scoreboard players operation VarRadiW.2Variable1 PZRadiW.2Wert *= KonstRadiW.2MINUSEINS PZRadiW.2Wert

scoreboard players set VarRadiW.2Vielfaches PZRadiW.2Wert 1
scoreboard players set VarRadiW.2ZahlSchleife1 PZRadiW.2Wert 1
scoreboard players set VarRadiW.2Ergebnis PZRadiW.2Wert 0

execute unless score VarRadiW.2Variable2 PZRadiW.2Wert matches 0..1 run say hi
execute unless score VarRadiW.2Variable2 PZRadiW.2Wert matches 0..1 run function radizierwerk:v2schleife1
execute if score VarRadiW.2Variable2 PZRadiW.2Wert matches 1 run scoreboard players operation VarRadiW.2Ergebnis PZRadiW.2Wert = VarRadiW.2Variable1 PZRadiW.2Wert

execute store result storage radizierwerk:v2daten "EigRadi.2Wert" int 1 run scoreboard players get VarRadiW.2Ergebnis PZRadiW.2Wert
execute if score VarRadiW.2Var1NegativUndVar2ModulusZwei PZRadiW.2Wert matches 1 if score VarRadiW.2Ergebnis PZRadiW.2Wert matches 1 run data merge storage radizierwerk:v2daten {EigRadi.2Wert:'""'}
execute if score VarRadiW.2Variable2 PZRadiW.2Wert matches 0 run data merge storage radizierwerk:v2daten {EigRadi.2Wert:'{"text":"nicht definiert","color":"yellow","bold":true}',EigRadi.2NegativeWurzel:'""'}

execute if score VarRadiW.2Variable2Negativ PZRadiW.2Wert matches 0 run data merge storage radizierwerk:v2daten {EigRadi.2Bruch:'""'}
execute if score VarRadiW.2Variable2Negativ PZRadiW.2Wert matches 1 run data merge storage radizierwerk:v2daten {EigRadi.2Bruch:'{"text":"1 / ","color":"dark_purple","bold":true}'}

execute if score VarRadiW.2Var1NegativUndVar2ModulusZwei PZRadiW.2Wert matches 1 run scoreboard players operation VarRadiW.2Variable1 PZRadiW.2Wert *= KonstRadiW.2MINUSEINS PZRadiW.2Wert
execute if score VarRadiW.2Variable2Negativ PZRadiW.2Wert matches 1 run scoreboard players operation VarRadiW.2Variable2 PZRadiW.2Wert *= KonstRadiW.2MINUSEINS PZRadiW.2Wert
