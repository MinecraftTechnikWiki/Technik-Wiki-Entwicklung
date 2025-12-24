
scoreboard players operation VarSkyWaMS.1IstNull PZSkyWaMS.1Wert = VarSkyWaMS.1Beginnen PZSkyWaMS.1Wert
scoreboard players operation VarSkyWaMS.1IstNull PZSkyWaMS.1Wert %= KonstSkyWaMS.1FUENF PZSkyWaMS.1Wert

execute store success score VarSkyWaMS.1Ausgabe PZSkyWaMS.1Wert if score VarSkyWaMS.1Beginnen PZSkyWaMS.1Wert matches 1..5
execute if score VarSkyWaMS.1Beginnen PZSkyWaMS.1Wert matches 1.. if score VarSkyWaMS.1IstNull PZSkyWaMS.1Wert matches 0 run scoreboard players set VarSkyWaMS.1Ausgabe PZSkyWaMS.1Wert 1

execute if score VarSkyWaMS.1Ausgabe PZSkyWaMS.1Wert matches 1 run tellraw @a[team=TMSkyWaMS.1Lobby] ["Skywars-Minispiel.1:\n",{storage:"skywars-minispiel:v1daten",nbt:'"EigSkyWaMS.1Name"',interpret:true},{text:"Die Runde beginnt in ",color:"green",bold:true},{score:{name:"VarSkyWaMS.1Beginnen",objective:"PZSkyWaMS.1Wert"},color:"dark_purple",bold:true},{text:" Sekunden.",color:"green",bold:true}]

execute if score VarSkyWaMS.1Beginnen PZSkyWaMS.1Wert matches 11..15 run title @a[team=TMSkyWaMS.1Lobby] title ["",{score:{name:"VarSkyWaMS.1Beginnen",objective:"PZSkyWaMS.1Wert"},color:"green",bold:true}]
execute if score VarSkyWaMS.1Beginnen PZSkyWaMS.1Wert matches 6..10 run title @a[team=TMSkyWaMS.1Lobby] title ["",{score:{name:"VarSkyWaMS.1Beginnen",objective:"PZSkyWaMS.1Wert"},color:"yellow",bold:true}]
execute if score VarSkyWaMS.1Beginnen PZSkyWaMS.1Wert matches 1..5 run title @a[team=TMSkyWaMS.1Lobby] title ["",{score:{name:"VarSkyWaMS.1Beginnen",objective:"PZSkyWaMS.1Wert"},color:"red",bold:true}]

execute if score VarSkyWaMS.1Beginnen PZSkyWaMS.1Wert matches 1..5 run playsound minecraft:block.note_block.chime master @a[team=TMSkyWaMS.1Lobby] ~ ~ ~ 1 0.6 1
execute if score VarSkyWaMS.1Beginnen PZSkyWaMS.1Wert matches 0 run playsound minecraft:block.note_block.chime master @a[team=TMSkyWaMS.1Lobby] ~ ~ ~ 1 0.7 1

execute if score VarSkyWaMS.1Beginnen PZSkyWaMS.1Wert matches 1.. run return run scoreboard players remove VarSkyWaMS.1Beginnen PZSkyWaMS.1Wert 1

scoreboard players set VarSkyWaMS.1Spielende PZSkyWaMS.1Wert 0
scoreboard players set VarSkyWaMS.1Befristet PZSkyWaMS.1Wert 0
scoreboard players set VarSkyWaMS.1Zaehlen PZSkyWaMS.1Wert 0
scoreboard players set VarSkyWaMS.1Spielen PZSkyWaMS.1Wert 1
scoreboard players set VarSkyWaMS.1Beenden PZSkyWaMS.1Wert 16
scoreboard players set VarSkyWaMS.1Verzoegern PZSkyWaMS.1Wert -31

execute at @s run tag @a[distance=..50,team=TMSkyWaMS.1Lobby] add EtiSkyWaMS.1Spielen

title @a[tag=EtiSkyWaMS.1Spielen] title ["",{text:"Spiel startet!",color:"blue",bold:true}]

team join TMSkyWaMS.1Spielen @a[tag=EtiSkyWaMS.1Spielen]

bossbar set skywars-minispiel:v1lobby players @a[team=TMSkyWaMS.1Lobby]
bossbar set skywars-minispiel:v1lobby name ["",{text:"Lobby - Spieler anwesend ",bold:true},{score:{name:"VarSkyWaMS.1Wartende",objective:"PZSkyWaMS.1Wert"},color:"green",bold:true}]

clear @a[tag=EtiSkyWaMS.1Spielen]

effect clear @a[tag=EtiSkyWaMS.1Spielen]
effect give @a[tag=EtiSkyWaMS.1Spielen] minecraft:night_vision 60 1 true
effect give @a[tag=EtiSkyWaMS.1Spielen] minecraft:saturation 60 3 true
effect give @a[tag=EtiSkyWaMS.1Spielen] minecraft:resistance 60 3 true
effect give @a[tag=EtiSkyWaMS.1Spielen] minecraft:fire_resistance 60 3 true

gamemode adventure @a[tag=EtiSkyWaMS.1Spielen]

execute store result score VarSkyWaMS.1Spieler PZSkyWaMS.1Wert if entity @a[tag=EtiSkyWaMS.1Spielen]

$execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Startinsel,sort=random,limit=4] positioned ~ ~ ~ run spreadplayers ~ ~ 3 4 under $(Y) false @a[distance=..150,tag=EtiSkyWaMS.1Spielen]
