
$execute store result score VarAufTraS.2Nachrichten PZAufTraS.2Reden run data get entity @s data."EigAufTraS.2Nachrichten"[{ID:$(ID)}].Frage

$execute if score VarAufTraS.2Nachricht PZAufTraS.2Reden > VarAufTraS.2Nachrichten PZAufTraS.2Reden store result entity @s data."EigAufTraS.2Spieler"[{UUID:$(UUID)}].Nachricht int 1 run scoreboard players operation VarAufTraS.2Nachricht PZAufTraS.2Reden = VarAufTraS.2Nachrichten PZAufTraS.2Reden

scoreboard players add VarAufTraS.2Nachricht PZAufTraS.2Reden 1

$execute on vehicle on vehicle run tellraw @p[tag=EtiAufTraS.2Spieler] ["Auftrag-System.2:\n",{text:"[",color:"gray"},{score:{name:"VarAufTraS.2Nachricht",objective:"PZAufTraS.2Reden"},color:"gray"},{text:"/",color:"gray"},{score:{name:"VarAufTraS.2Nachrichten",objective:"PZAufTraS.2Reden"},color:"gray"},{text:"]",color:"gray"},{text:" «",color:"gold",bold:true},{entity:"@s",nbt:"CustomName",color:"white",interpret:true},{text:"» ",color:"gold",bold:true},{storage:"auftrag-system:v2daten",nbt:'"EigAufTraS.2Nachrichten"[{ID:$(ID)}].Frage[$(Nachricht)]',color:"yellow",interpret:true}]

scoreboard players remove VarAufTraS.2Nachrichten PZAufTraS.2Reden 1

$execute if score VarAufTraS.2Nachricht PZAufTraS.2Reden > VarAufTraS.2Nachrichten PZAufTraS.2Reden run data modify storage auftrag-system:v2daten "EigAufTraS.2Antworten" set from entity @s data."EigAufTraS.2Nachrichten"[{ID:$(ID)}].Antworten

$data modify entity @s data."EigAufTraS.2Spieler"[{UUID:$(UUID)}].Antworten set from storage auftrag-system:v2daten "EigAufTraS.2Antworten"

scoreboard players set VarAufTraS.2Antwort PZAufTraS.2Reden 0
execute store result score VarAufTraS.2Antworten PZAufTraS.2Reden run data get storage auftrag-system:v2daten "EigAufTraS.2Antworten"

$execute if score VarAufTraS.2Nachricht PZAufTraS.2Reden > VarAufTraS.2Nachrichten PZAufTraS.2Reden store result entity @s data."EigAufTraS.2Spieler"[{UUID:$(UUID)}].Antwort int 1 run data get storage auftrag-system:v2daten "EigAufTraS.2Antworten"[0].ZurID

$execute if score VarAufTraS.2Nachricht PZAufTraS.2Reden > VarAufTraS.2Nachrichten PZAufTraS.2Reden run function auftrag-system:v2nachrichten with entity @s data."EigAufTraS.2Spieler"[{UUID:$(UUID)}]

$execute if score VarAufTraS.2Nachricht PZAufTraS.2Reden > VarAufTraS.2Nachrichten PZAufTraS.2Reden store result entity @s data."EigAufTraS.2Spieler"[{UUID:$(UUID)}].Nachricht int 1 run scoreboard players set VarAufTraS.2Nachricht PZAufTraS.2Reden 0
