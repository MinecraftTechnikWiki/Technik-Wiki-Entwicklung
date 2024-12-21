
$execute as @e[distance=..5,type=minecraft:interaction,tag=EtiAufTraS.2Reden,sort=nearest,limit=1] on passengers store result entity @s data."EigAufTraS.2Spieler"[{UUID:$(UUID)}].ID int 1 store result storage auftrag-system:v2daten "EigAufTraS.2Antwort".ZurID int 1 run scoreboard players get @p PZAufTraS.2Antwort

$execute as @e[distance=..5,type=minecraft:interaction,tag=EtiAufTraS.2Reden,sort=nearest,limit=1] on passengers run data modify storage auftrag-system:v2daten "EigAufTraS.2Antworten" set from entity @s data."EigAufTraS.2Spieler"[{UUID:$(UUID)}].Antworten

function auftrag-system:v2antworten with storage auftrag-system:v2daten "EigAufTraS.2Antwort"

$data modify entity @e[distance=..5,type=minecraft:interaction,tag=EtiAufTraS.2Reden,sort=nearest,limit=1] interaction set value {player:$(UUID),timestamp:0L}

$execute as @e[distance=..5,type=minecraft:interaction,tag=EtiAufTraS.2Reden,sort=nearest,limit=1] on passengers store result entity @s data."EigAufTraS.2Spieler"[{UUID:$(UUID)}].ID int 1 run scoreboard players get @p PZAufTraS.2Antwort

scoreboard players enable @s PZAufTraS.2Antwort
scoreboard players set @s PZAufTraS.2Antwort -1
