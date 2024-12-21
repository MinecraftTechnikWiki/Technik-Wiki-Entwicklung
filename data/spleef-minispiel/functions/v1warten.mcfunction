
scoreboard players add VarSpleeMS.1Warten PZSpleeMS.1Wert 1
execute if score VarSpleeMS.1Warten PZSpleeMS.1Wert matches 1..9 run return 0
scoreboard players set VarSpleeMS.1Warten PZSpleeMS.1Wert 0

scoreboard players add VarSpleeMS.1Meldung PZSpleeMS.1Wert 1

execute if score VarSpleeMS.1Spielen PZSpleeMS.1Wert matches 0 if score VarSpleeMS.1Meldung PZSpleeMS.1Wert matches ..9 unless score VarSpleeMS.1Meldung PZSpleeMS.1Wert matches 5 if score VarSpleeMS.1Zaehlen PZSpleeMS.1Wert matches 0 if score VarSpleeMS.1Wartende PZSpleeMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMSpleeMS.1Lobby] ["Spleef-Minispiel.1:\n",{"storage":"spleef-minispiel:v1daten","nbt":"\"EigSpleeMS.1Name\"","interpret":true},{"text":"Es wird noch auf ","color":"yellow","bold":true},{"text":"1","color":"dark_purple","bold":true},{"text":" weitere(n) Spieler gewartet.","color":"yellow","bold":true}]

execute if score VarSpleeMS.1Meldung PZSpleeMS.1Wert matches 10.. if score VarSpleeMS.1Zaehlen PZSpleeMS.1Wert matches 0 if score VarSpleeMS.1Wartende PZSpleeMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMSpleeMS.1Lobby] ["Spleef-Minispiel.1:\n",{"storage":"spleef-minispiel:v1daten","nbt":"\"EigSpleeMS.1Name\"","interpret":true},{"text":"Es ist/sind derzeit ","color":"yellow","bold":true},{"score":{"name":"VarSpleeMS.1Wartende","objective":"PZSpleeMS.1Wert"},"color":"green","bold":true},{"text":" Spieler anwesend.","color":"yellow","bold":true}]

execute if score VarSpleeMS.1Meldung PZSpleeMS.1Wert matches 5 if score VarSpleeMS.1Zaehlen PZSpleeMS.1Wert matches 0 if score VarSpleeMS.1Wartende PZSpleeMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMSpleeMS.1Lobby] ["Spleef-Minispiel.1:\n",{"storage":"spleef-minispiel:v1daten","nbt":"\"EigSpleeMS.1Name\"","interpret":true},{"text":"Chatte durch /teammsg","hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Chat-Nachricht","color":"green","bold":true} },"clickEvent":{"action":"suggest_command","value":"/teammsg "},"color":"green","bold":true},{"text":" mit den anderen Spielern in der Lobby.","color":"yellow","bold":true}]

execute if score VarSpleeMS.1Zaehlen PZSpleeMS.1Wert matches 1 if score VarSpleeMS.1Wartende PZSpleeMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMSpleeMS.1Lobby] ["Spleef-Minispiel.1:\n",{"storage":"spleef-minispiel:v1daten","nbt":"\"EigSpleeMS.1Name\"","interpret":true},{"text":"Der Zähler wurde abgebrochen.","color":"red","bold":true}]

execute if score VarSpleeMS.1Spielen PZSpleeMS.1Wert matches 1 if score VarSpleeMS.1Meldung PZSpleeMS.1Wert matches ..9 if score VarSpleeMS.1Zaehlen PZSpleeMS.1Wert matches 0 if score VarSpleeMS.1Wartende PZSpleeMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMSpleeMS.1Lobby] ["Spleef-Minispiel.1:\n",{"storage":"spleef-minispiel:v1daten","nbt":"\"EigSpleeMS.1Name\"","interpret":true},{"text":"Warte bis das laufende Spiel endet.","color":"yellow","bold":true}]

execute if score VarSpleeMS.1Meldung PZSpleeMS.1Wert matches 10.. run scoreboard players set VarSpleeMS.1Meldung PZSpleeMS.1Wert 0

execute if score VarSpleeMS.1Zaehlen PZSpleeMS.1Wert matches 0 if score VarSpleeMS.1Wartende PZSpleeMS.1Wert matches 2.. run scoreboard players set VarSpleeMS.1Beginnen PZSpleeMS.1Wert 16

execute store success score VarSpleeMS.1Zaehlen PZSpleeMS.1Wert if score VarSpleeMS.1Wartende PZSpleeMS.1Wert matches 2..
