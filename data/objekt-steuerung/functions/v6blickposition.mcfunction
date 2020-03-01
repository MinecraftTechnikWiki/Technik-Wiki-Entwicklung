# Maximal 25 Meter weit vom Spieler wird diese Funktion selbstaufgerufen und dabei wird der Rüstungsständer in Blickrichtung maximal 25 Meter weit teleporitert, schaut man jedoch Richtung Boden oder auf andere Hindernisse, so wird der Rüstungsständer maximal bis kurz vor dem Hindernis teleportiert
execute unless entity @p[distance=..25] run teleport @e[type=minecraft:armor_stand,tag=EtiObjSt.6Alle,sort=nearest,limit=1] ~ ~ ~
execute unless block ^ ^ ^1 minecraft:air run teleport @e[type=minecraft:armor_stand,tag=EtiObjSt.6Alle,sort=nearest,limit=1] ~ ~ ~
execute if entity @p[distance=..25] positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air run function objekt-steuerung:v6blickposition
