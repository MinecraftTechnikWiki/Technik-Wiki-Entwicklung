
execute as @e[distance=..5,type=minecraft:interaction,tag=EtiDiaLS.1Reden,sort=nearest,limit=1] on passengers store result score VarDiaLS.1Nachrichten PZDiaLS.1Reden run data get entity @s data."EigDiaLS.1Nachrichten"
scoreboard players remove VarDiaLS.1Nachrichten PZDiaLS.1Reden 1

tellraw @s[scores={PZDiaLS.1Antwort=1}] ["Dialog-System.1:\n",{"text":"Du hast mit ","color":"gray"},{"text":"[Ja]","color":"green","bold":true},{"text":" geantwortet.","color":"gray"}]
tellraw @s[scores={PZDiaLS.1Antwort=2}] ["Dialog-System.1:\n",{"text":"Du hast mit ","color":"gray"},{"text":"[Nein]","color":"red","bold":true},{"text":" geantwortet.","color":"gray"}]

$data modify entity @e[distance=..5,type=minecraft:interaction,tag=EtiDiaLS.1Reden,sort=nearest,limit=1] interaction set value {player:$(UUID),timestamp:0L}

$execute as @e[distance=..5,type=minecraft:interaction,tag=EtiDiaLS.1Reden,sort=nearest,limit=1] on passengers store result score VarDiaLS.1Nachricht PZDiaLS.1Reden run data get entity @s data."EigDiaLS.1Spieler"[{UUID:$(UUID)}].Nachricht

execute if score VarDiaLS.1Nachricht PZDiaLS.1Reden <= VarDiaLS.1Nachrichten PZDiaLS.1Reden if entity @s[scores={PZDiaLS.1Antwort=2}] run scoreboard players add VarDiaLS.1Nachricht PZDiaLS.1Reden 1
execute if score VarDiaLS.1Nachricht PZDiaLS.1Reden <= VarDiaLS.1Nachrichten PZDiaLS.1Reden run scoreboard players operation VarDiaLS.1Nachricht PZDiaLS.1Reden *= KonstDiaLS.1ZWEI PZDiaLS.1Reden
execute if score VarDiaLS.1Nachricht PZDiaLS.1Reden <= VarDiaLS.1Nachrichten PZDiaLS.1Reden if entity @s[scores={PZDiaLS.1Antwort=1}] run scoreboard players add VarDiaLS.1Nachricht PZDiaLS.1Reden 1

$execute as @e[distance=..5,type=minecraft:interaction,tag=EtiDiaLS.1Reden,sort=nearest,limit=1] on passengers store result entity @s data."EigDiaLS.1Spieler"[{UUID:$(UUID)}].Nachricht int 1 run scoreboard players get VarDiaLS.1Nachricht PZDiaLS.1Reden

scoreboard players enable @s PZDiaLS.1Antwort
scoreboard players set @s PZDiaLS.1Antwort 0
