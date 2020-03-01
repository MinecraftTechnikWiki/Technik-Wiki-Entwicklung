# Die Zeit wird um eins erhöht und anschließend die Beschleunigungs-Variable um eins verringert. Diese Funktion wird nochmal aufgerufen, wenn die Beschleunigungs-Variable größer gleich eins ist
time add 1
scoreboard players remove VarTagZWS.2Beschleunigung PZTagZWS.3Wert 1
execute if score VarTagZWS.2Beschleunigung PZTagZWS.3Wert matches 1.. run function tageszeitwandler_und_-sensor:v3beschleunigen
