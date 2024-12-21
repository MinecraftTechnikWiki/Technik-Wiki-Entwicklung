
tag @s remove EtiWartS.1Verlassen
tag @s remove EtiWartS.1Teilnehmer

scoreboard players set @s PZWartS.1Verlassen 0
scoreboard players set VarWartS.1Warten PZWartS.1Wert 10

gamemode creative @s

clear @s minecraft:red_bed[minecraft:custom_data~{EigWartS.1Alle:true}]

kill @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigWartS.1Alle:true} } } },sort=nearest,limit=1]

team leave @s

execute store result score VarWartS.1Wartende PZWartS.1Wert if entity @a[team=TMWartS.1Lobby]
execute store result score VarWartS.1Teilnehmer PZWartS.1Wert if entity @a[tag=EtiWartS.1Teilnehmer]

bossbar set wartesaal:v1lobby name ["",{"text":"Lobby - Spieler anwesend ","bold":true},{"score":{"name":"VarWartS.1Wartende","objective":"PZWartS.1Wert"},"color":"green","bold":true}]

tellraw @a[team=TMWartS.1Lobby] ["Wartesaal.1:\n",{"storage":"wartesaal:v1daten","nbt":"\"EigWartS.1Name\"","interpret":true},{"selector":"@s","color":"green","bold":true},{"text":" hat die Lobby verlassen ","color":"yellow","bold":true},{"score":{"name":"VarWartS.1Wartende","objective":"PZWartS.1Wert"},"color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"10","color":"dark_purple","bold":true}]

bossbar set wartesaal:v1lobby players @a[team=TMWartS.1Lobby]

execute at @e[type=minecraft:text_display,tag=EtiWartS.1Teleporter] run teleport @s ~5 ~-3.5 ~ 90 0

tag @s[tag=EtiWartS.1Spielen] remove EtiWartS.1Spielen
