
$execute as @n[distance=..5,type=minecraft:interaction,tag=EtiAufTraS.2Reden] on passengers store result entity @s data."EigAufTraS.2Spieler"[{UUID:$(UUID)}].ID int 1 store result storage auftrag-system:v2daten "EigAufTraS.2Antwort".ZurID int 1 run scoreboard players get @p PZAufTraS.2Antwort

$execute as @n[distance=..5,type=minecraft:interaction,tag=EtiAufTraS.2Reden] on passengers run data modify storage auftrag-system:v2daten "EigAufTraS.2Antworten" set from entity @s data."EigAufTraS.2Spieler"[{UUID:$(UUID)}].Antworten

function auftrag-system:v2antworten with storage auftrag-system:v2daten "EigAufTraS.2Antwort"

$data modify entity @n[distance=..5,type=minecraft:interaction,tag=EtiAufTraS.2Reden] interaction set value {player:$(UUID),timestamp:0L}

$execute as @n[distance=..5,type=minecraft:interaction,tag=EtiAufTraS.2Reden] on passengers store result entity @s data."EigAufTraS.2Spieler"[{UUID:$(UUID)}].ID int 1 run scoreboard players get @p PZAufTraS.2Antwort

scoreboard players enable @s PZAufTraS.2Antwort
scoreboard players set @s PZAufTraS.2Antwort -1
