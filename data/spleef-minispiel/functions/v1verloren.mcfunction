
clear @s

execute if entity @s[gamemode=!creative] run tellraw @a[tag=EtiSpleeMS.1Spielen] ["Spleef-Minispiel.1:\n",{"storage":"spleef-minispiel:v1daten","nbt":"\"EigSpleeMS.1Name\"","interpret":true},{"selector":"@s","color":"green","bold":true},{"text":" ist aus dem Spiel ausgeschieden!","color":"red","bold":true}]

execute if entity @s[gamemode=creative] run tellraw @a[tag=EtiSpleeMS.1Spielen] ["Spleef-Minispiel.1:\n",{"storage":"spleef-minispiel:v1daten","nbt":"\"EigSpleeMS.1Name\"","interpret":true},{"selector":"@s","color":"green","bold":true},{"text":" ist ausgeschieden aufgrund von Betrügen!","color":"red","bold":true}]

gamemode spectator @s

tag @s add EtiSpleeMS.1Verloren
