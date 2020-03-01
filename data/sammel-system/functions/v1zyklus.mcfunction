# An der Position der Sammel-Eier wird geschaut, ob ein Spieler in einem Umkreis von zwei Metern vorhanden ist, wenn er sich dort aufhält, wird sein Wert gefundenen Eier in einen Vergleichswert kopiert.
execute at @e[type=minecraft:item,tag=EtiSamS.1Alle] as @a[distance=..2,tag=!EtiSamS.1MaxEierGefunden] run scoreboard players operation @s PZSamS.1Vergl = @s PZSamS.1Eier

# Wenn der Spieler in die Nähe eines Sammel-Eis gekommen ist und noch nicht für dieses Ei das entsprechende Etikett besitzt, wird ihm seine Anzahl der gefundenen Eier um eins erhöht und er erhält das Etikett für dieses bestimmte Ei.
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei1] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei1] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei1] run tag @p[distance=..2,tag=!EtiSamS.1Ei1] add EtiSamS.1Ei1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei2] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei2] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei2] run tag @p[distance=..2,tag=!EtiSamS.1Ei2] add EtiSamS.1Ei2
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei3] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei3] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei3] run tag @p[distance=..2,tag=!EtiSamS.1Ei3] add EtiSamS.1Ei3
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei4] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei4] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei4] run tag @p[distance=..2,tag=!EtiSamS.1Ei4] add EtiSamS.1Ei4
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei5] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei5] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei5] run tag @p[distance=..2,tag=!EtiSamS.1Ei5] add EtiSamS.1Ei5
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei6] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei6] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei6] run tag @p[distance=..2,tag=!EtiSamS.1Ei6] add EtiSamS.1Ei6
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei7] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei7] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei7] run tag @p[distance=..2,tag=!EtiSamS.1Ei7] add EtiSamS.1Ei7
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei8] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei8] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei8] run tag @p[distance=..2,tag=!EtiSamS.1Ei8] add EtiSamS.1Ei8
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei9] run scoreboard players add @p[distance=..2,tag=!EtiSamS.1Ei9] PZSamS.1Eier 1
execute at @e[type=minecraft:item,tag=EtiSamS.1Ei9] run tag @p[distance=..2,tag=!EtiSamS.1Ei9] add EtiSamS.1Ei9

# Falls der Vergleichswert kleiner ist als die aktuelle Anzahl von Eiern die er gefunden hat, so muss der Spieler das Ei in diesem Tick gefunden haben. So erhält er dann die Nachricht für das gefundene Ei.
execute as @a[distance=..150,tag=!EtiSamS.1MaxEierGefunden] if score @s PZSamS.1Eier > @s PZSamS.1Vergl if score @s PZSamS.1Eier < #VarSamS.1Anzahl PZSamS.1Eier run tellraw @s ["Sammel-System.1:\n",{"text":"Du hast dein ","bold":true},{"score":{"name":"@s","objective":"PZSamS.1Eier"},"color":"dark_purple","bold":true},{"text":"."},{"text":" Sammel-Ei gefunden","bold":true} ]

# Wenn der Spieler alle Eier gefunden hat, ist sein Wert gleich dem der Anzahl der Eier (zur Sicherheit wird größer gleich verwendet) und dann bekommen alle Spieler die auch die Sammel-Eier sammeln die Nachricht, dass der Spieler alle Eier gefunden hat. Damit die Nachricht nur einmal ausgegeben wird, erhält er danach ein Etikett.
execute as @a[tag=!EtiSamS.1MaxEierGefunden] if score @s PZSamS.1Eier >= #VarSamS.1Anzahl PZSamS.1Eier at @s run tellraw @a[scores={PZSamS.1Eier=0..}] ["Sammel-System.1:\n",{"text":"Der Spieler ","bold":true,"color":"green"},{"selector":"@s"},{"text":" hat alle ","bold":true,"color":"green"},{"score":{"name":"#VarSamS.1Anzahl","objective":"PZSamS.1Eier"},"color":"dark_purple","bold":true},{"text":" Sammel-Eier gefunden!","bold":true,"color":"green"} ]
execute as @a[tag=!EtiSamS.1MaxEierGefunden] if score @s PZSamS.1Eier >= #VarSamS.1Anzahl PZSamS.1Eier run tag @s add EtiSamS.1MaxEierGefunden
