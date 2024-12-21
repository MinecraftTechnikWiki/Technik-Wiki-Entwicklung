
scoreboard players add VarWartS.1Warten PZWartS.1Wert 1
execute if score VarWartS.1Warten PZWartS.1Wert matches 1..9 run return 0
scoreboard players set VarWartS.1Warten PZWartS.1Wert 0

scoreboard players add VarWartS.1Meldung PZWartS.1Wert 1

execute if score VarWartS.1Spielen PZWartS.1Wert matches 0 if score VarWartS.1Meldung PZWartS.1Wert matches ..9 unless score VarWartS.1Meldung PZWartS.1Wert matches 5 if score VarWartS.1Zaehlen PZWartS.1Wert matches 0 if score VarWartS.1Wartende PZWartS.1Wert matches ..1 run tellraw @a[distance=..25,team=TMWartS.1Lobby] ["Wartesaal.1:\n",{"storage":"wartesaal:v1daten","nbt":"\"EigWartS.1Name\"","interpret":true},{"text":"Es wird noch auf ","color":"yellow","bold":true},{"text":"1","color":"dark_purple","bold":true},{"text":" weitere(n) Spieler gewartet.","color":"yellow","bold":true}]

execute if score VarWartS.1Meldung PZWartS.1Wert matches 10.. if score VarWartS.1Zaehlen PZWartS.1Wert matches 0 if score VarWartS.1Wartende PZWartS.1Wert matches ..1 run tellraw @a[distance=..25,team=TMWartS.1Lobby] ["Wartesaal.1:\n",{"storage":"wartesaal:v1daten","nbt":"\"EigWartS.1Name\"","interpret":true},{"text":"Es ist/sind derzeit ","color":"yellow","bold":true},{"score":{"name":"VarWartS.1Wartende","objective":"PZWartS.1Wert"},"color":"green","bold":true},{"text":" Spieler anwesend.","color":"yellow","bold":true}]

execute if score VarWartS.1Meldung PZWartS.1Wert matches 5 if score VarWartS.1Zaehlen PZWartS.1Wert matches 0 if score VarWartS.1Wartende PZWartS.1Wert matches ..1 run tellraw @a[distance=..25,team=TMWartS.1Lobby] ["Wartesaal.1:\n",{"storage":"wartesaal:v1daten","nbt":"\"EigWartS.1Name\"","interpret":true},{"text":"Chatte","hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Chat-Nachricht","color":"green","bold":true} },"clickEvent":{"action":"suggest_command","value":"/teammsg "},"color":"green","bold":true},{"text":" mit den anderen Spielern in der Lobby.","color":"yellow","bold":true}]

execute if score VarWartS.1Zaehlen PZWartS.1Wert matches 1 if score VarWartS.1Wartende PZWartS.1Wert matches ..1 run tellraw @a[distance=..25,team=TMWartS.1Lobby] ["Wartesaal.1:\n",{"storage":"wartesaal:v1daten","nbt":"\"EigWartS.1Name\"","interpret":true},{"text":"Der Zähler wurde abgebrochen.","color":"red","bold":true}]

execute if score VarWartS.1Spielen PZWartS.1Wert matches 1 if score VarWartS.1Meldung PZWartS.1Wert matches ..9 if score VarWartS.1Zaehlen PZWartS.1Wert matches 0 if score VarWartS.1Wartende PZWartS.1Wert matches ..1 run tellraw @a[distance=..25,team=TMWartS.1Lobby] ["Wartesaal.1:\n",{"storage":"wartesaal:v1daten","nbt":"\"EigWartS.1Name\"","interpret":true},{"text":"Warte bis das laufende Spiel endet.","color":"yellow","bold":true}]

execute if score VarWartS.1Meldung PZWartS.1Wert matches 10.. run scoreboard players set VarWartS.1Meldung PZWartS.1Wert 0

execute if score VarWartS.1Zaehlen PZWartS.1Wert matches 0 if score VarWartS.1Wartende PZWartS.1Wert matches 2.. run scoreboard players set VarWartS.1Beginnen PZWartS.1Wert 31

execute store success score VarWartS.1Zaehlen PZWartS.1Wert if score VarWartS.1Wartende PZWartS.1Wert matches 2..
