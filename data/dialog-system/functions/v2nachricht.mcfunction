
$execute store result score VarDiaLS.2Nachrichten PZDiaLS.2Reden run data get entity @s data."EigDiaLS.2Nachrichten"[{ID:$(ID)}].Frage

$execute if score VarDiaLS.2Nachricht PZDiaLS.2Reden > VarDiaLS.2Nachrichten PZDiaLS.2Reden store result entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}].Nachricht int 1 run scoreboard players operation VarDiaLS.2Nachricht PZDiaLS.2Reden = VarDiaLS.2Nachrichten PZDiaLS.2Reden

scoreboard players add VarDiaLS.2Nachricht PZDiaLS.2Reden 1

$execute on vehicle on vehicle run tellraw @p[tag=EtiDiaLS.2Spieler] ["Dialog-System.2:\n",{"text":"[","color":"gray"},{"score":{"name":"VarDiaLS.2Nachricht","objective":"PZDiaLS.2Reden"},"color":"gray"},{"text":"/","color":"gray"},{"score":{"name":"VarDiaLS.2Nachrichten","objective":"PZDiaLS.2Reden"},"color":"gray"},{"text":"]","color":"gray"},{"text":" «","color":"gold","bold":true},{"entity":"@s","nbt":"CustomName","color":"white","interpret":true},{"text":"» ","color":"gold","bold":true},{"storage":"dialog-system:v2daten","nbt":"\"EigDiaLS.2Nachrichten\"[{ID:$(ID)}].Frage[$(Nachricht)]","color":"yellow","interpret":true}]

scoreboard players remove VarDiaLS.2Nachrichten PZDiaLS.2Reden 1

$execute if score VarDiaLS.2Nachricht PZDiaLS.2Reden > VarDiaLS.2Nachrichten PZDiaLS.2Reden run data modify storage dialog-system:v2daten "EigDiaLS.2Antworten" set from entity @s data."EigDiaLS.2Nachrichten"[{ID:$(ID)}].Antworten

$data modify entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}].Antworten set from storage dialog-system:v2daten "EigDiaLS.2Antworten"


#tellraw @p ["TEST:",{"entity":"@s","nbt":"data.\"EigDiaLS.2Spieler\"","color":"yellow","interpret":false}]
#say hallo
#tellraw @p ["TEST:",{"entity":"@s","nbt":"data","color":"yellow","interpret":false}]
#tellraw @p ["TEST:",{"entity":"@s","nbt":"data.\"EigDiaLS.2Nachrichten\"","color":"yellow","interpret":false}]
##$tellraw @p ["TEST:",{"entity":"@s","nbt":"data.\"EigDiaLS.2Nachrichten\"[{ID:$(ID)}]","color":"yellow","interpret":false}]
#$tellraw @p ["TEST:",{"entity":"@s","nbt":"data.\"EigDiaLS.2Nachrichten\"[{ID:$(ID)}].Antworten","color":"yellow","interpret":false}]
#tellraw @p ["TEST:",{"storage":"dialog-system:v2daten","nbt":"\"EigDiaLS.2Antworten\"","color":"yellow","interpret":false}]


scoreboard players set VarDiaLS.2Antwort PZDiaLS.2Reden 0
execute store result score VarDiaLS.2Antworten PZDiaLS.2Reden run data get storage dialog-system:v2daten "EigDiaLS.2Antworten"

$execute if score VarDiaLS.2Nachricht PZDiaLS.2Reden > VarDiaLS.2Nachrichten PZDiaLS.2Reden store result entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}].Antwort int 1 run data get storage dialog-system:v2daten "EigDiaLS.2Antworten"[0].ZurID

$execute if score VarDiaLS.2Nachricht PZDiaLS.2Reden > VarDiaLS.2Nachrichten PZDiaLS.2Reden run function dialog-system:v2nachrichten with entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}]

$execute if score VarDiaLS.2Nachricht PZDiaLS.2Reden > VarDiaLS.2Nachrichten PZDiaLS.2Reden store result entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}].Nachricht int 1 run scoreboard players set VarDiaLS.2Nachricht PZDiaLS.2Reden 0
