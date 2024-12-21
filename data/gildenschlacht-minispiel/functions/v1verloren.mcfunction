
clear @s

execute if entity @s[gamemode=!creative,tag=!EtiGildSMS.1Verloren] run tellraw @a[tag=EtiGildSMS.1Spielen] ["Gildenschlacht-Minispiel.1:\n",{"storage":"gildenschlacht-minispiel:v1daten","nbt":"\"EigGildSMS.1Name\"","interpret":true},{"selector":"@s","color":"green","bold":true},{"text":" ist aus dem Spiel ausgeschieden!","color":"red","bold":true}]

execute if entity @s[gamemode=creative,tag=!EtiGildSMS.1Verloren] run tellraw @a[tag=EtiGildSMS.1Spielen] ["Gildenschlacht-Minispiel.1:\n",{"storage":"gildenschlacht-minispiel:v1daten","nbt":"\"EigGildSMS.1Name\"","interpret":true},{"selector":"@s","color":"green","bold":true},{"text":" ist ausgeschieden aufgrund von Betrügen!","color":"red","bold":true}]

gamemode spectator @s

tag @s add EtiGildSMS.1Verloren

attribute @s minecraft:generic.max_health base set 20

teleport @s[distance=100..] ~ ~11 ~
