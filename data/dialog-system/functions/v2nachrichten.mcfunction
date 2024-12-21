
$tellraw @p[tag=EtiDiaLS.2Spieler] ["",{"text":"[","color":"gray"},{"storage":"dialog-system:v2daten","nbt":"\"EigDiaLS.2Antworten\"[0].Text","color":"yellow","interpret":true,"bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für die Antwort ID:$(Antwort)"} },"clickEvent":{"action":"run_command","value":"/trigger PZDiaLS.2Antwort set $(Antwort)"} },{"text":"]","color":"gray"}]

scoreboard players add VarDiaLS.2Antwort PZDiaLS.2Reden 1

data remove storage dialog-system:v2daten "EigDiaLS.2Antworten"[0]

$execute if score VarDiaLS.2Nachricht PZDiaLS.2Reden > VarDiaLS.2Nachrichten PZDiaLS.2Reden store result entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}].Antwort int 1 run data get storage dialog-system:v2daten "EigDiaLS.2Antworten"[0].ZurID

$execute if score VarDiaLS.2Antwort PZDiaLS.2Reden < VarDiaLS.2Antworten PZDiaLS.2Reden run function dialog-system:v2nachrichten with entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}]
