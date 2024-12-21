
scoreboard players add VarTNTRMS.1Warten PZTNTRMS.1Wert 1
execute if score VarTNTRMS.1Warten PZTNTRMS.1Wert matches 1..9 run return 0
scoreboard players set VarTNTRMS.1Warten PZTNTRMS.1Wert 0

scoreboard players add VarTNTRMS.1Meldung PZTNTRMS.1Wert 1

execute if score VarTNTRMS.1Spielen PZTNTRMS.1Wert matches 0 if score VarTNTRMS.1Meldung PZTNTRMS.1Wert matches ..9 unless score VarTNTRMS.1Meldung PZTNTRMS.1Wert matches 5 if score VarTNTRMS.1Zaehlen PZTNTRMS.1Wert matches 0 if score VarTNTRMS.1Wartende PZTNTRMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMTNTRMS.1Lobby] ["TNT-Run-Minispiel.1:\n",{"storage":"tnt-run-minispiel:v1daten","nbt":"\"EigTNTRMS.1Name\"","interpret":true},{"text":"Es wird noch auf ","color":"yellow","bold":true},{"text":"1","color":"dark_purple","bold":true},{"text":" weitere(n) Spieler gewartet.","color":"yellow","bold":true}]

execute if score VarTNTRMS.1Meldung PZTNTRMS.1Wert matches 10.. if score VarTNTRMS.1Zaehlen PZTNTRMS.1Wert matches 0 if score VarTNTRMS.1Wartende PZTNTRMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMTNTRMS.1Lobby] ["TNT-Run-Minispiel.1:\n",{"storage":"tnt-run-minispiel:v1daten","nbt":"\"EigTNTRMS.1Name\"","interpret":true},{"text":"Es ist/sind derzeit ","color":"yellow","bold":true},{"score":{"name":"VarTNTRMS.1Wartende","objective":"PZTNTRMS.1Wert"},"color":"green","bold":true},{"text":" Spieler anwesend.","color":"yellow","bold":true}]

execute if score VarTNTRMS.1Meldung PZTNTRMS.1Wert matches 5 if score VarTNTRMS.1Zaehlen PZTNTRMS.1Wert matches 0 if score VarTNTRMS.1Wartende PZTNTRMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMTNTRMS.1Lobby] ["TNT-Run-Minispiel.1:\n",{"storage":"tnt-run-minispiel:v1daten","nbt":"\"EigTNTRMS.1Name\"","interpret":true},{"text":"Chatte durch /teammsg","hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Chat-Nachricht","color":"green","bold":true} },"clickEvent":{"action":"suggest_command","value":"/teammsg "},"color":"green","bold":true},{"text":" mit den anderen Spielern in der Lobby.","color":"yellow","bold":true}]

execute if score VarTNTRMS.1Zaehlen PZTNTRMS.1Wert matches 1 if score VarTNTRMS.1Wartende PZTNTRMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMTNTRMS.1Lobby] ["TNT-Run-Minispiel.1:\n",{"storage":"tnt-run-minispiel:v1daten","nbt":"\"EigTNTRMS.1Name\"","interpret":true},{"text":"Der Zähler wurde abgebrochen.","color":"red","bold":true}]

execute if score VarTNTRMS.1Spielen PZTNTRMS.1Wert matches 1 if score VarTNTRMS.1Meldung PZTNTRMS.1Wert matches ..9 if score VarTNTRMS.1Zaehlen PZTNTRMS.1Wert matches 0 if score VarTNTRMS.1Wartende PZTNTRMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMTNTRMS.1Lobby] ["TNT-Run-Minispiel.1:\n",{"storage":"tnt-run-minispiel:v1daten","nbt":"\"EigTNTRMS.1Name\"","interpret":true},{"text":"Warte bis das laufende Spiel endet.","color":"yellow","bold":true}]

execute if score VarTNTRMS.1Meldung PZTNTRMS.1Wert matches 10.. run scoreboard players set VarTNTRMS.1Meldung PZTNTRMS.1Wert 0

execute if score VarTNTRMS.1Zaehlen PZTNTRMS.1Wert matches 0 if score VarTNTRMS.1Wartende PZTNTRMS.1Wert matches 2.. run scoreboard players set VarTNTRMS.1Beginnen PZTNTRMS.1Wert 16

execute store success score VarTNTRMS.1Zaehlen PZTNTRMS.1Wert if score VarTNTRMS.1Wartende PZTNTRMS.1Wert matches 2..
