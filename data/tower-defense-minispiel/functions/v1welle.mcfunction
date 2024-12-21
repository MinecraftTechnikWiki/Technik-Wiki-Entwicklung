
title @a[tag=EtiTowDefMS.1Spielen] title ["",{"text":"Nächste Welle","color":"red","bold":true}]

title @a[tag=EtiTowDefMS.1Spielen] subtitle ["",{"text":"in ","color":"red","bold":true},{"score":{"name":"VarTowDefMS.1NeueWelle","objective":"PZTowDefMS.1Wert"},"color":"red","bold":true}]

execute if score VarTowDefMS.1NeueWelle PZTowDefMS.1Wert matches 1.. run return run scoreboard players remove VarTowDefMS.1NeueWelle PZTowDefMS.1Wert 1

scoreboard players set VarTowDefMS.1NeueWelle PZTowDefMS.1Wert 15
scoreboard players add VarTowDefMS.1Welle PZTowDefMS.1Wert 1
execute store result score VarTowDefMS.1NeueGegner PZTowDefMS.1Wert run scoreboard players add VarTowDefMS.1Gegner PZTowDefMS.1Wert 10

scoreboard players set VarTowDefMS.1Punkte PZTowDefMS.1Wert 5
scoreboard players operation VarTowDefMS.1Punkte PZTowDefMS.1Wert *= VarTowDefMS.1Welle PZTowDefMS.1Wert
scoreboard players add VarTowDefMS.1Punkte PZTowDefMS.1Wert 25

scoreboard players operation VarTowDefMS.1Punkte1 PZTowDefMS.1Wert += VarTowDefMS.1Punkte PZTowDefMS.1Wert
scoreboard players operation VarTowDefMS.1Punkte2 PZTowDefMS.1Wert += VarTowDefMS.1Punkte PZTowDefMS.1Wert

scoreboard players add @e[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,sort=nearest,limit=2] PZTowDefMS.1Versuch 5
scoreboard players set @e[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,scores={PZTowDefMS.1Versuch=101..},sort=nearest,limit=2] PZTowDefMS.1Versuch 100

execute store result bossbar tower-defense-minispiel:v1team1 value run scoreboard players get @e[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,scores={PZTowDefMS.1Wert=1},sort=nearest,limit=1] PZTowDefMS.1Versuch

execute store result bossbar tower-defense-minispiel:v1team2 value run scoreboard players get @e[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,scores={PZTowDefMS.1Wert=2},sort=nearest,limit=1] PZTowDefMS.1Versuch

#scoreboard players operation @e[type=minecraft:marker,tag=EtiTowDefMS.1Wellen,sort=nearest,limit=2] PZTowDefMS.1Versuch = VarTowDefMS.1Gegner PZTowDefMS.1Wert

execute store result bossbar tower-defense-minispiel:v1team1gegner max store result bossbar tower-defense-minispiel:v1team1gegner value store result score VarTowDefMS.1Team1Max PZTowDefMS.1Wert store result bossbar tower-defense-minispiel:v1team2gegner max store result bossbar tower-defense-minispiel:v1team2gegner value store result score VarTowDefMS.1Team2Max PZTowDefMS.1Wert run scoreboard players get VarTowDefMS.1Gegner PZTowDefMS.1Wert

title @a[tag=EtiTowDefMS.1Spielen] title ["",{"text":"Welle ","color":"dark_purple","bold":true},{"score":{"name":"VarTowDefMS.1Welle","objective":"PZTowDefMS.1Wert"},"color":"dark_purple","bold":true}]

title @a[tag=EtiTowDefMS.1Spielen] subtitle ["",{"text":"beginnt! ","color":"dark_purple","bold":true}]
