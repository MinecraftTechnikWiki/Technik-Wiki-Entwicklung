
#execute store result storage dialog-system:v2daten "EigDiaLS.2Antwort".ZurID int 1 run scoreboard players get @s PZDiaLS.2Antwort

$execute as @e[distance=..5,type=minecraft:interaction,tag=EtiDiaLS.2Reden,sort=nearest,limit=1] on passengers store result entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}].ID int 1 store result storage dialog-system:v2daten "EigDiaLS.2Antwort".ZurID int 1 run scoreboard players get @p PZDiaLS.2Antwort

$execute as @e[distance=..5,type=minecraft:interaction,tag=EtiDiaLS.2Reden,sort=nearest,limit=1] on passengers run data modify storage dialog-system:v2daten "EigDiaLS.2Antworten" set from entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}].Antworten

function dialog-system:v2antworten with storage dialog-system:v2daten "EigDiaLS.2Antwort"

$data modify entity @e[distance=..5,type=minecraft:interaction,tag=EtiDiaLS.2Reden,sort=nearest,limit=1] interaction set value {player:$(UUID),timestamp:0L}

$execute as @e[distance=..5,type=minecraft:interaction,tag=EtiDiaLS.2Reden,sort=nearest,limit=1] on passengers store result entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}].ID int 1 run scoreboard players get @p PZDiaLS.2Antwort

scoreboard players enable @s PZDiaLS.2Antwort
scoreboard players set @s PZDiaLS.2Antwort -1
