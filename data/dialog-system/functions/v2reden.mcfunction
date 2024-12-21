
$execute on passengers store result score VarDiaLS.2Nachricht PZDiaLS.2Reden run data get entity @s data."EigDiaLS.2Spieler"[{UUID:$(player)}].Nachricht

$execute if score VarDiaLS.2Nachricht PZDiaLS.2Reden matches 0 on passengers unless data entity @s data."EigDiaLS.2Spieler"[{UUID:$(player)}] run data modify entity @s data."EigDiaLS.2Spieler" append value {ID:0,Nachricht:0,UUID:$(player),ZurID:1}

execute on target run tag @s add EtiDiaLS.2Spieler

playsound minecraft:entity.villager.ambient master @p[tag=EtiDiaLS.2Spieler] ~ ~ ~ 1 0.5 1

effect give @p[tag=EtiDiaLS.2Spieler] minecraft:slowness 15 1 true

execute on passengers run data modify storage dialog-system:v2daten "EigDiaLS.2Nachrichten" set from entity @s data."EigDiaLS.2Nachrichten"

$execute on passengers run function dialog-system:v2nachricht with entity @s data."EigDiaLS.2Spieler"[{UUID:$(player)}]

execute if score VarDiaLS.2Nachricht PZDiaLS.2Reden > VarDiaLS.2Nachrichten PZDiaLS.2Reden run scoreboard players set VarDiaLS.2Nachricht PZDiaLS.2Reden 0

$execute on passengers store result entity @s data."EigDiaLS.2Spieler"[{UUID:$(player)}].Nachricht int 1 run scoreboard players get VarDiaLS.2Nachricht PZDiaLS.2Reden

scoreboard players enable @p[tag=EtiDiaLS.2Spieler] PZDiaLS.2Antwort
scoreboard players set @p[tag=EtiDiaLS.2Spieler] PZDiaLS.2Antwort -1

execute on target run tag @s remove EtiDiaLS.2Spieler

data remove entity @s interaction