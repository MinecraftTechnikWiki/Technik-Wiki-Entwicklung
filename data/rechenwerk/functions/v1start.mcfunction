
scoreboard objectives add PZRechW.1Wert trigger ["Rechenwerk.1: ",{"text":"Wert der Variablen","bold":true}]

scoreboard players set VarRechW.1Variable1 PZRechW.1Wert 0
scoreboard players set VarRechW.1Variable2 PZRechW.1Wert 0
scoreboard players set VarRechW.1Ergebnis PZRechW.1Wert 0

data merge storage rechenwerk:v1daten {EigRechW.1Variable1:[0],EigRechW.1Variable2:[0],EigRechW.1Operator:'{"text":"+","color":"blue","bold":true}'}
