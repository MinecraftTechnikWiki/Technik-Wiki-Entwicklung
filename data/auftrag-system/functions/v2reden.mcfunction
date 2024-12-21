
$execute on passengers store result score VarAufTraS.2Nachricht PZAufTraS.2Reden run data get entity @s data."EigAufTraS.2Spieler"[{UUID:$(player)}].Nachricht

$execute if score VarAufTraS.2Nachricht PZAufTraS.2Reden matches 0 on passengers unless data entity @s data."EigAufTraS.2Spieler"[{UUID:$(player)}] run data modify entity @s data."EigAufTraS.2Spieler" append value {ID:0,Nachricht:0,UUID:$(player),ZurID:1}

execute on target run tag @s add EtiAufTraS.2Spieler

playsound minecraft:entity.villager.ambient master @p[tag=EtiAufTraS.2Spieler] ~ ~ ~ 1 0.5 1

effect give @p[tag=EtiAufTraS.2Spieler] minecraft:slowness 15 1 true

execute on passengers run data modify storage auftrag-system:v2daten "EigAufTraS.2Nachrichten" set from entity @s data."EigAufTraS.2Nachrichten"

$execute on passengers run function auftrag-system:v2nachricht with entity @s data."EigAufTraS.2Spieler"[{UUID:$(player)}]

execute if score VarAufTraS.2Nachricht PZAufTraS.2Reden > VarAufTraS.2Nachrichten PZAufTraS.2Reden run scoreboard players set VarAufTraS.2Nachricht PZAufTraS.2Reden 0

$execute on passengers store result entity @s data."EigAufTraS.2Spieler"[{UUID:$(player)}].Nachricht int 1 run scoreboard players get VarAufTraS.2Nachricht PZAufTraS.2Reden

scoreboard players enable @p[tag=EtiAufTraS.2Spieler] PZAufTraS.2Antwort
scoreboard players set @p[tag=EtiAufTraS.2Spieler] PZAufTraS.2Antwort -1

execute on target run tag @s remove EtiAufTraS.2Spieler

data remove entity @s interaction