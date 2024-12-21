
$execute on passengers store result score VarDiaLS.1Nachricht PZDiaLS.1Reden run data get entity @s data."EigDiaLS.1Spieler"[{UUID:$(player)}].Nachricht

$execute if score VarDiaLS.1Nachricht PZDiaLS.1Reden matches 0 on passengers unless data entity @s data."EigDiaLS.1Spieler"[{UUID:$(player)}] run data modify entity @s data."EigDiaLS.1Spieler" append value {Nachricht:0,UUID:$(player)}

execute on target run tag @s add EtiDiaLS.1Spieler

playsound minecraft:entity.villager.ambient master @p[tag=EtiDiaLS.1Spieler] ~ ~ ~ 1 0.5 1

effect give @p[tag=EtiDiaLS.1Spieler] minecraft:slowness 15 1 true

execute on passengers store result score VarDiaLS.1Nachrichten PZDiaLS.1Reden run data get entity @s data."EigDiaLS.1Nachrichten"
scoreboard players remove VarDiaLS.1Nachrichten PZDiaLS.1Reden 1

$execute if score VarDiaLS.1Nachricht PZDiaLS.1Reden > VarDiaLS.1Nachrichten PZDiaLS.1Reden on passengers store result entity @s data."EigDiaLS.1Spieler"[{UUID:$(player)}].Nachricht int 1 run scoreboard players operation VarDiaLS.1Nachricht PZDiaLS.1Reden = VarDiaLS.1Nachrichten PZDiaLS.1Reden

execute on passengers run data modify storage dialog-system:v1daten "EigDiaLS.1Nachrichten" set from entity @s data."EigDiaLS.1Nachrichten"

$execute on passengers run function dialog-system:v1nachricht with entity @s data."EigDiaLS.1Spieler"[{UUID:$(player)}]

scoreboard players enable @p[tag=EtiDiaLS.1Spieler] PZDiaLS.1Antwort
scoreboard players set @p[tag=EtiDiaLS.1Spieler] PZDiaLS.1Antwort 0

execute on target run tag @s remove EtiDiaLS.1Spieler

data remove entity @s interaction