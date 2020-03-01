# Das Auslöser-Punktestand-Ziel wird erstellt.
scoreboard objectives add PZFlugz.1Wert trigger ["Flugzeug.1: ",{"text":"Auslöser für Nachrichten","bold":true}]

# Das Team für Piloten wird erstellt und der nächstgelegene Spieler wird in dieses gesteckt.
team add TMFlugz.1Pilot ["Flugzeug.1: ",{"text":"Piloten","bold":true}]
team join TMFlugz.1Pilot @p[distance=..5,team=!TMFlugz.1Pilot]

# Der Flugzeug-Rüstungsständer mit einem zweiten huckepack, wird 25 Meter über der Befehlsquelle erzeugt.
summon minecraft:armor_stand ~ ~25.5 ~ {Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"Westen","color":"gold","bold":true}',Tags:["EtiFlugz.1Alle","EtiFlugz.1Flugzeug","EtiFlugz.1Richtung"],Rotation:[90.0f,0.0f],Passengers:[{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"Geradeaus","color":"aqua","bold":true}',Tags:["EtiFlugz.1Alle","EtiFlugz.1Neigung"]},{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"falsch","color":"red","bold":true}',Tags:["EtiFlugz.1Alle","EtiFlugz.1Aussenansicht"]},{id:"minecraft:armor_stand",Small:true,NoGravity:true,Invisible:true,CustomName:'{"text":"falsch","color":"red","bold":true}',Tags:["EtiFlugz.1Alle","EtiFlugz.1Tempomat"]}]}

# Einen Block unter dem Flugzeug-Rüstungsständer wird ein Eichenholzbrett platziert, damit der Spieler bei der Teleportation auf festen Untegrund steht.
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug] run setblock ~2 ~-1 ~ minecraft:oak_planks replace
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug] run teleport @p[team=TMFlugz.1Pilot] ~2 ~ ~

# Der Spieler bekommt den Wert zwölf gesetzt. Das sorgt dafür, dass das Flugzeug einen Tick später erstellt wird.
scoreboard players set @p[team=TMFlugz.1Pilot] PZFlugz.1Wert 12
