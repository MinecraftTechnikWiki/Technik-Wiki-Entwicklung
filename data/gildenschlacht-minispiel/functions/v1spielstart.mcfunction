
scoreboard players operation VarGildSMS.1IstNull PZGildSMS.1Wert = VarGildSMS.1Beginnen PZGildSMS.1Wert
scoreboard players operation VarGildSMS.1IstNull PZGildSMS.1Wert %= KonstGildSMS.1FUENF PZGildSMS.1Wert

execute store success score VarGildSMS.1Ausgabe PZGildSMS.1Wert if score VarGildSMS.1Beginnen PZGildSMS.1Wert matches 1..5
execute if score VarGildSMS.1Beginnen PZGildSMS.1Wert matches 1.. if score VarGildSMS.1IstNull PZGildSMS.1Wert matches 0 run scoreboard players set VarGildSMS.1Ausgabe PZGildSMS.1Wert 1

execute if score VarGildSMS.1Ausgabe PZGildSMS.1Wert matches 1 run tellraw @a[team=TMGildSMS.1Lobby] ["Gildenschlacht-Minispiel.1:\n",{"storage":"gildenschlacht-minispiel:v1daten","nbt":"\"EigGildSMS.1Name\"","interpret":true},{"text":"Die Runde beginnt in ","color":"green","bold":true},{"score":{"name":"VarGildSMS.1Beginnen","objective":"PZGildSMS.1Wert"},"color":"dark_purple","bold":true},{"text":" Sekunden.","color":"green","bold":true}]

execute if score VarGildSMS.1Beginnen PZGildSMS.1Wert matches 11..15 run title @a[team=TMGildSMS.1Lobby] title ["",{"score":{"name":"VarGildSMS.1Beginnen","objective":"PZGildSMS.1Wert"},"color":"green","bold":true}]
execute if score VarGildSMS.1Beginnen PZGildSMS.1Wert matches 6..10 run title @a[team=TMGildSMS.1Lobby] title ["",{"score":{"name":"VarGildSMS.1Beginnen","objective":"PZGildSMS.1Wert"},"color":"yellow","bold":true}]
execute if score VarGildSMS.1Beginnen PZGildSMS.1Wert matches 1..5 run title @a[team=TMGildSMS.1Lobby] title ["",{"score":{"name":"VarGildSMS.1Beginnen","objective":"PZGildSMS.1Wert"},"color":"red","bold":true}]

execute if score VarGildSMS.1Beginnen PZGildSMS.1Wert matches 1..5 run playsound minecraft:block.note_block.chime master @a[team=TMGildSMS.1Lobby] ~ ~ ~ 1 0.6 1
execute if score VarGildSMS.1Beginnen PZGildSMS.1Wert matches 0 run playsound minecraft:block.note_block.chime master @a[team=TMGildSMS.1Lobby] ~ ~ ~ 1 0.7 1

execute if score VarGildSMS.1Beginnen PZGildSMS.1Wert matches 1.. run return run scoreboard players remove VarGildSMS.1Beginnen PZGildSMS.1Wert 1

scoreboard players set VarGildSMS.1Spielende PZGildSMS.1Wert 0
scoreboard players set VarGildSMS.1Befristet PZGildSMS.1Wert 0
scoreboard players set VarGildSMS.1Zaehlen PZGildSMS.1Wert 0
scoreboard players set VarGildSMS.1Spielen PZGildSMS.1Wert 1
scoreboard players set VarGildSMS.1Beenden PZGildSMS.1Wert 16

execute at @s run tag @a[distance=..50,team=TMGildSMS.1Lobby] add EtiGildSMS.1Spielen

function gildenschlacht-minispiel:v1mannschaft

clear @a[tag=EtiGildSMS.1Spielen]
execute as @a[tag=EtiGildSMS.1Spielen] run function gildenschlacht-minispiel:v1ausruestung

bossbar set gildenschlacht-minispiel:v1lobby players @a[team=TMGildSMS.1Lobby]
bossbar set gildenschlacht-minispiel:v1lobby name ["",{"text":"Lobby - Spieler anwesend ","bold":true},{"score":{"name":"VarGildSMS.1Wartende","objective":"PZGildSMS.1Wert"},"color":"green","bold":true}]

effect clear @a[tag=EtiGildSMS.1Spielen]
effect give @a[tag=EtiGildSMS.1Spielen] minecraft:instant_health 5 10 true
effect give @a[tag=EtiGildSMS.1Spielen] minecraft:regeneration 5 10 true
effect give @a[tag=EtiGildSMS.1Spielen] minecraft:saturation 5 10 true

gamemode adventure @a[tag=EtiGildSMS.1Spielen]

$execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Team1,sort=nearest,limit=1] positioned ~ ~ ~ run spreadplayers ~ ~ 1 2 under $(Y) false @a[distance=..50,team=TMGildSMS.1Team1]
$execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Team2,sort=nearest,limit=1] positioned ~ ~ ~ run spreadplayers ~ ~ 1 2 under $(Y) false @a[distance=..50,team=TMGildSMS.1Team2]

execute as @a[tag=EtiGildSMS.1Spielen] store result score @s PZGildSMS.1Wert run data get entity @s Health

scoreboard players set VarGildSMS.1Leben PZGildSMS.1Wert 0
execute store result bossbar gildenschlacht-minispiel:v1team1 max store result bossbar gildenschlacht-minispiel:v1team1 value run scoreboard players operation VarGildSMS.1Leben PZGildSMS.1Wert += @a[team=TMGildSMS.1Team1] PZGildSMS.1Wert

execute store result bossbar gildenschlacht-minispiel:v1team1anzahl max store result bossbar gildenschlacht-minispiel:v1team1anzahl value store result score VarGildSMS.1Team1Max PZGildSMS.1Wert if entity @a[team=TMGildSMS.1Team1]

scoreboard players set VarGildSMS.1Leben PZGildSMS.1Wert 0
execute store result bossbar gildenschlacht-minispiel:v1team2 max store result bossbar gildenschlacht-minispiel:v1team2 value run scoreboard players operation VarGildSMS.1Leben PZGildSMS.1Wert += @a[team=TMGildSMS.1Team2] PZGildSMS.1Wert

execute store result bossbar gildenschlacht-minispiel:v1team2anzahl max store result bossbar gildenschlacht-minispiel:v1team2anzahl value store result score VarGildSMS.1Team2Max PZGildSMS.1Wert if entity @a[team=TMGildSMS.1Team2]

bossbar set gildenschlacht-minispiel:v1team1 players @a[team=TMGildSMS.1Team1]
bossbar set gildenschlacht-minispiel:v1team2 players @a[team=TMGildSMS.1Team2]

bossbar set gildenschlacht-minispiel:v1team1anzahl players @a[team=TMGildSMS.1Team2]
bossbar set gildenschlacht-minispiel:v1team2anzahl players @a[team=TMGildSMS.1Team1]
