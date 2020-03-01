# Das Auslöser-Punktestand-Ziel wird erstellt.
scoreboard objectives add PZLuftS.1Wert trigger ["Luftschiff.1: ",{"text":"Auslöser für Nachrichten","bold":true}]

# Das Team für Piloten wird erstellt und der nächstgelegene Spieler wird in dieses gesteckt.
team add TMLuftS.1Pilot ["Luftschiff.1: ",{"text":"Piloten","bold":true}]
team join TMLuftS.1Pilot @p[distance=..5,team=!TMLuftS.1Pilot]

# Der Luftschiff-Rüstungsständer mit einem zweiten huckepack, wird 25 Meter über der Befehlsquelle erzeugt.
summon minecraft:armor_stand ~ ~25 ~ {Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"Westen","color":"gold","bold":true}',Tags:["EtiLuftS.1Alle","EtiLuftS.1Luftschiff","EtiLuftS.1Richtung"],Rotation:[90.0f,0.0f],Passengers:[{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"Geradeaus","color":"aqua","bold":true}',Tags:["EtiLuftS.1Alle","EtiLuftS.1Neigung"]}]}

# Einen Block unter dem Luftschiff-Rüstungsständer wird ein Eichenholzbrett platziert, damit der Spieler bei der Teleportation auf festen Untegrund steht.
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] run setblock ~ ~-1 ~ minecraft:oak_planks replace
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] run teleport @p[team=TMLuftS.1Pilot] ~ ~ ~

# Der Spieler bekommt den Wert acht gesetzt. Das sorgt dafür, dass das Luftschiff einen Tick später erstellt wird.
scoreboard players set @p[team=TMLuftS.1Pilot] PZLuftS.1Wert 8
