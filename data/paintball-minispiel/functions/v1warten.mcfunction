
scoreboard players add VarPaintBMS.1Warten PZPaintBMS.1Wert 1
execute if score VarPaintBMS.1Warten PZPaintBMS.1Wert matches 1..9 run return 0
scoreboard players set VarPaintBMS.1Warten PZPaintBMS.1Wert 0

scoreboard players add VarPaintBMS.1Meldung PZPaintBMS.1Wert 1

execute if score VarPaintBMS.1Spielen PZPaintBMS.1Wert matches 0 if score VarPaintBMS.1Meldung PZPaintBMS.1Wert matches ..9 unless score VarPaintBMS.1Meldung PZPaintBMS.1Wert matches 5 if score VarPaintBMS.1Zaehlen PZPaintBMS.1Wert matches 0 if score VarPaintBMS.1Wartende PZPaintBMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMPaintBMS.1Lobby] ["Paintball-Minispiel.1:\n",{"storage":"paintball-minispiel:v1daten","nbt":"\"EigPaintBMS.1Name\"","interpret":true},{"text":"Es wird noch auf ","color":"yellow","bold":true},{"text":"1","color":"dark_purple","bold":true},{"text":" weitere(n) Spieler gewartet.","color":"yellow","bold":true}]

execute if score VarPaintBMS.1Meldung PZPaintBMS.1Wert matches 10.. if score VarPaintBMS.1Zaehlen PZPaintBMS.1Wert matches 0 if score VarPaintBMS.1Wartende PZPaintBMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMPaintBMS.1Lobby] ["Paintball-Minispiel.1:\n",{"storage":"paintball-minispiel:v1daten","nbt":"\"EigPaintBMS.1Name\"","interpret":true},{"text":"Es ist/sind derzeit ","color":"yellow","bold":true},{"score":{"name":"VarPaintBMS.1Wartende","objective":"PZPaintBMS.1Wert"},"color":"green","bold":true},{"text":" Spieler anwesend.","color":"yellow","bold":true}]

execute if score VarPaintBMS.1Meldung PZPaintBMS.1Wert matches 5 if score VarPaintBMS.1Zaehlen PZPaintBMS.1Wert matches 0 if score VarPaintBMS.1Wartende PZPaintBMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMPaintBMS.1Lobby] ["Paintball-Minispiel.1:\n",{"storage":"paintball-minispiel:v1daten","nbt":"\"EigPaintBMS.1Name\"","interpret":true},{"text":"Chatte durch /teammsg","hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Chat-Nachricht","color":"green","bold":true} },"clickEvent":{"action":"suggest_command","value":"/teammsg "},"color":"green","bold":true},{"text":" mit den anderen Spielern in der Lobby.","color":"yellow","bold":true}]

execute if score VarPaintBMS.1Zaehlen PZPaintBMS.1Wert matches 1 if score VarPaintBMS.1Wartende PZPaintBMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMPaintBMS.1Lobby] ["Paintball-Minispiel.1:\n",{"storage":"paintball-minispiel:v1daten","nbt":"\"EigPaintBMS.1Name\"","interpret":true},{"text":"Der Zähler wurde abgebrochen.","color":"red","bold":true}]

execute if score VarPaintBMS.1Spielen PZPaintBMS.1Wert matches 1 if score VarPaintBMS.1Meldung PZPaintBMS.1Wert matches ..9 if score VarPaintBMS.1Zaehlen PZPaintBMS.1Wert matches 0 if score VarPaintBMS.1Wartende PZPaintBMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMPaintBMS.1Lobby] ["Paintball-Minispiel.1:\n",{"storage":"paintball-minispiel:v1daten","nbt":"\"EigPaintBMS.1Name\"","interpret":true},{"text":"Warte bis das laufende Spiel endet.","color":"yellow","bold":true}]

execute if score VarPaintBMS.1Meldung PZPaintBMS.1Wert matches 10.. run scoreboard players set VarPaintBMS.1Meldung PZPaintBMS.1Wert 0

execute if score VarPaintBMS.1Wartende PZPaintBMS.1Wert matches ..1 run return run scoreboard players set VarPaintBMS.1Zaehlen PZPaintBMS.1Wert 0

execute store result score VarPaintBMS.1Team1 PZPaintBMS.1Wert if entity @a[team=TMPaintBMS.1Lobby,scores={PZPaintBMS.1Wert=1}]
execute store result score VarPaintBMS.1Team2 PZPaintBMS.1Wert if entity @a[team=TMPaintBMS.1Lobby,scores={PZPaintBMS.1Wert=2}]

scoreboard players operation VarPaintBMS.1Teams PZPaintBMS.1Wert = VarPaintBMS.1Team1 PZPaintBMS.1Wert
scoreboard players operation VarPaintBMS.1Teams PZPaintBMS.1Wert += VarPaintBMS.1Team2 PZPaintBMS.1Wert

scoreboard players operation VarPaintBMS.1Ausgewogen PZPaintBMS.1Wert = VarPaintBMS.1Team1 PZPaintBMS.1Wert
scoreboard players operation VarPaintBMS.1Ausgewogen PZPaintBMS.1Wert -= VarPaintBMS.1Team2 PZPaintBMS.1Wert

scoreboard players set VarPaintBMS.1Zaehlen PZPaintBMS.1Wert 0
execute if score VarPaintBMS.1Ausgewogen PZPaintBMS.1Wert matches -1..1 if score VarPaintBMS.1Wartende PZPaintBMS.1Wert = VarPaintBMS.1Teams PZPaintBMS.1Wert run scoreboard players set VarPaintBMS.1Zaehlen PZPaintBMS.1Wert 1

execute if score VarPaintBMS.1Zaehlen PZPaintBMS.1Wert matches 0 run scoreboard players set VarPaintBMS.1Beginnen PZPaintBMS.1Wert 16
execute if score VarPaintBMS.1Zaehlen PZPaintBMS.1Wert matches 1 run scoreboard players remove VarPaintBMS.1Beginnen PZPaintBMS.1Wert 1

execute if score VarPaintBMS.1Zaehlen PZPaintBMS.1Wert matches 0 if score VarPaintBMS.1Ausgewogen PZPaintBMS.1Wert matches -1..1 run title @a[team=TMPaintBMS.1Lobby] actionbar ["",{"text":"Nicht alle Spieler sind in Mannschaften!","color":"red","bold":true}]
execute if score VarPaintBMS.1Zaehlen PZPaintBMS.1Wert matches 0 if score VarPaintBMS.1Ausgewogen PZPaintBMS.1Wert matches 2.. run title @a[team=TMPaintBMS.1Lobby] actionbar ["",{"text":"Die ROTE Mannschaft hat zu viele Mitglieder!","color":"red","bold":true}]
execute if score VarPaintBMS.1Zaehlen PZPaintBMS.1Wert matches 0 if score VarPaintBMS.1Ausgewogen PZPaintBMS.1Wert matches ..-2 run title @a[team=TMPaintBMS.1Lobby] actionbar ["",{"text":"Die BLAUE Mannschaft hat zu viele Mitglieder!","color":"red","bold":true}]
