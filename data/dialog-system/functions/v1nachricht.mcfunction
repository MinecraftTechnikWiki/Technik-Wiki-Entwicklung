
scoreboard players add VarDiaLS.1Nachricht PZDiaLS.1Reden 1

$execute on vehicle on vehicle run tellraw @p[tag=EtiDiaLS.1Spieler] ["Dialog-System.1:\n",{"text":"[X=","color":"gray"},{"score":{"name":"VarDiaLS.1Nachricht","objective":"PZDiaLS.1Reden"},"color":"gray"},{"text":"]","color":"gray"},{"text":" «","color":"gold","bold":true},{"entity":"@s","nbt":"CustomName","color":"white","interpret":true},{"text":"» ","color":"gold","bold":true},{"storage":"dialog-system:v1daten","nbt":"\"EigDiaLS.1Nachrichten\"[$(Nachricht)]","color":"yellow","interpret":true}]

execute if score VarDiaLS.1Nachricht PZDiaLS.1Reden <= VarDiaLS.1Nachrichten PZDiaLS.1Reden run tellraw @p[tag=EtiDiaLS.1Spieler] ["",{"text":"[Ja]","color":"green","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Ja"} },"clickEvent":{"action":"run_command","value":"/trigger PZDiaLS.1Antwort set 1"} }," ",{"text":"[Nein]","color":"red","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Nein"} },"clickEvent":{"action":"run_command","value":"/trigger PZDiaLS.1Antwort set 2"} }]

execute if score VarDiaLS.1Nachricht PZDiaLS.1Reden <= VarDiaLS.1Nachrichten PZDiaLS.1Reden run scoreboard players remove VarDiaLS.1Nachricht PZDiaLS.1Reden 1

$execute if score VarDiaLS.1Nachricht PZDiaLS.1Reden > VarDiaLS.1Nachrichten PZDiaLS.1Reden store result entity @s data."EigDiaLS.1Spieler"[{UUID:$(UUID)}].Nachricht int 1 run scoreboard players set VarDiaLS.1Nachricht PZDiaLS.1Reden 0
