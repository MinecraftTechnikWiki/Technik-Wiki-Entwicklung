
scoreboard players operation VarPaintBMS.1IstNull PZPaintBMS.1Wert = VarPaintBMS.1Beginnen PZPaintBMS.1Wert
scoreboard players operation VarPaintBMS.1IstNull PZPaintBMS.1Wert %= KonstPaintBMS.1FUENF PZPaintBMS.1Wert

execute store success score VarPaintBMS.1Ausgabe PZPaintBMS.1Wert if score VarPaintBMS.1Beginnen PZPaintBMS.1Wert matches 1..5
execute if score VarPaintBMS.1Beginnen PZPaintBMS.1Wert matches 1.. if score VarPaintBMS.1IstNull PZPaintBMS.1Wert matches 0 run scoreboard players set VarPaintBMS.1Ausgabe PZPaintBMS.1Wert 1

execute if score VarPaintBMS.1Ausgabe PZPaintBMS.1Wert matches 1 run tellraw @a[team=TMPaintBMS.1Lobby] ["Paintball-Minispiel.1:\n",{storage:"paintball-minispiel:v1daten",nbt:'"EigPaintBMS.1Name"',interpret:true},{text:"Die Runde beginnt in ",color:"green",bold:true},{score:{name:"VarPaintBMS.1Beginnen",objective:"PZPaintBMS.1Wert"},color:"dark_purple",bold:true},{text:" Sekunden.",color:"green",bold:true}]

execute if score VarPaintBMS.1Beginnen PZPaintBMS.1Wert matches 11..15 run title @a[team=TMPaintBMS.1Lobby] title ["",{score:{name:"VarPaintBMS.1Beginnen",objective:"PZPaintBMS.1Wert"},color:"green",bold:true}]
execute if score VarPaintBMS.1Beginnen PZPaintBMS.1Wert matches 6..10 run title @a[team=TMPaintBMS.1Lobby] title ["",{score:{name:"VarPaintBMS.1Beginnen",objective:"PZPaintBMS.1Wert"},color:"yellow",bold:true}]
execute if score VarPaintBMS.1Beginnen PZPaintBMS.1Wert matches 1..5 run title @a[team=TMPaintBMS.1Lobby] title ["",{score:{name:"VarPaintBMS.1Beginnen",objective:"PZPaintBMS.1Wert"},color:"red",bold:true}]

execute if score VarPaintBMS.1Beginnen PZPaintBMS.1Wert matches 1..5 run playsound minecraft:block.note_block.chime master @a[team=TMPaintBMS.1Lobby] ~ ~ ~ 1 0.6 1
execute if score VarPaintBMS.1Beginnen PZPaintBMS.1Wert matches 0 run playsound minecraft:block.note_block.chime master @a[team=TMPaintBMS.1Lobby] ~ ~ ~ 1 0.7 1

execute if score VarPaintBMS.1Beginnen PZPaintBMS.1Wert matches 1.. run return run scoreboard players remove VarPaintBMS.1Beginnen PZPaintBMS.1Wert 1

scoreboard players set VarPaintBMS.1Spielende PZPaintBMS.1Wert 0
scoreboard players set VarPaintBMS.1Befristet PZPaintBMS.1Wert 0
scoreboard players set VarPaintBMS.1Zaehlen PZPaintBMS.1Wert 0
scoreboard players set VarPaintBMS.1Spielen PZPaintBMS.1Wert 1
scoreboard players set VarPaintBMS.1Beenden PZPaintBMS.1Wert 16

execute at @s run tag @a[distance=..50,team=TMPaintBMS.1Lobby] add EtiPaintBMS.1Spielen

title @a[tag=EtiPaintBMS.1Spielen] title ["",{text:"Spiel startet!",color:"blue",bold:true}]

clear @a[tag=EtiPaintBMS.1Spielen]

scoreboard players set @a[tag=EtiPaintBMS.1Spielen] PZPaintBMS.1Versuch 10
execute as @a[tag=EtiPaintBMS.1Spielen] at @s run function paintball-minispiel:v1treffer with entity @n[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld] data."EigPaintBMS.1Argumente"

team join TMPaintBMS.1Team1 @a[scores={PZPaintBMS.1Wert=1}]
team join TMPaintBMS.1Team2 @a[scores={PZPaintBMS.1Wert=2}]

# Die Spieler erhalten in ihrer Farbe eine Titelnachricht.
title @a[team=TMPaintBMS.1Team1] title ["",{text:"Mannschaft 1!",color:"red",bold:true}]
title @a[team=TMPaintBMS.1Team2] title ["",{text:"Mannschaft 2!",color:"blue",bold:true}]

bossbar set paintball-minispiel:v1lobby players @a[team=TMPaintBMS.1Lobby]
bossbar set paintball-minispiel:v1lobby name ["",{text:"Lobby - Spieler anwesend ",bold:true},{score:{name:"VarPaintBMS.1Wartende",objective:"PZPaintBMS.1Wert"},color:"green",bold:true}]

effect clear @a[tag=EtiPaintBMS.1Spielen]
effect give @a[tag=EtiPaintBMS.1Spielen] minecraft:night_vision infinite 1 true
effect give @a[tag=EtiPaintBMS.1Spielen] minecraft:saturation infinite 10 true
effect give @a[tag=EtiPaintBMS.1Spielen] minecraft:resistance infinite 10 true

gamemode adventure @a[tag=EtiPaintBMS.1Spielen]

scoreboard players set VarPaintBMS.1Versuche PZPaintBMS.1Wert 0
execute store result bossbar paintball-minispiel:v1team1 max store result bossbar paintball-minispiel:v1team1 value run scoreboard players operation VarPaintBMS.1Versuche PZPaintBMS.1Wert += @a[team=TMPaintBMS.1Team1] PZPaintBMS.1Versuch

execute store result bossbar paintball-minispiel:v1team1anzahl max store result bossbar paintball-minispiel:v1team1anzahl value store result score VarPaintBMS.1Team1Max PZPaintBMS.1Wert if entity @a[team=TMPaintBMS.1Team1]

scoreboard players set VarPaintBMS.1Versuche PZPaintBMS.1Wert 0
execute store result bossbar paintball-minispiel:v1team2 max store result bossbar paintball-minispiel:v1team2 value run scoreboard players operation VarPaintBMS.1Versuche PZPaintBMS.1Wert += @a[team=TMPaintBMS.1Team2] PZPaintBMS.1Versuch

execute store result bossbar paintball-minispiel:v1team2anzahl max store result bossbar paintball-minispiel:v1team2anzahl value store result score VarPaintBMS.1Team2Max PZPaintBMS.1Wert if entity @a[team=TMPaintBMS.1Team2]

bossbar set paintball-minispiel:v1team1 players @a[team=TMPaintBMS.1Team1]
bossbar set paintball-minispiel:v1team2 players @a[team=TMPaintBMS.1Team2]

bossbar set paintball-minispiel:v1team1anzahl players @a[team=TMPaintBMS.1Team2]
bossbar set paintball-minispiel:v1team2anzahl players @a[team=TMPaintBMS.1Team1]
