
tag @s remove EtiGildSMS.1Verlassen
tag @s remove EtiGildSMS.1Teilnehmer

scoreboard players set @s PZGildSMS.1Verlassen 0
scoreboard players set VarGildSMS.1Warten PZGildSMS.1Wert 10

effect clear @s minecraft:night_vision

gamemode creative @s

clear @s minecraft:red_bed[minecraft:custom_data~{EigGildSMS.1Alle:true}]

kill @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigGildSMS.1Alle:true} } } },sort=nearest,limit=1]

tellraw @s[team=!TMGildSMS.1Lobby,tag=!EtiGildSMS.1Spielen] ["Gildenschlacht-Minispiel.1:\n",{"storage":"gildenschlacht-minispiel:v1daten","nbt":"\"EigGildSMS.1Name\"","interpret":true},{"text":"Du bist dem Minispiel zu nahe gekommen!","color":"red","bold":true}]

team leave @s

execute store result score VarGildSMS.1Wartende PZGildSMS.1Wert if entity @a[team=TMGildSMS.1Lobby]
execute store result score VarGildSMS.1Teilnehmer PZGildSMS.1Wert if entity @a[tag=EtiGildSMS.1Teilnehmer]

bossbar set gildenschlacht-minispiel:v1lobby name ["",{"text":"Lobby - Spieler anwesend ","bold":true},{"score":{"name":"VarGildSMS.1Wartende","objective":"PZGildSMS.1Wert"},"color":"green","bold":true}]

execute if entity @s[tag=EtiGildSMS.1Spielen,tag=!EtiGildSMS.1Verloren] run tellraw @a[team=TMGildSMS.1Lobby] ["Gildenschlacht-Minispiel.1:\n",{"storage":"gildenschlacht-minispiel:v1daten","nbt":"\"EigGildSMS.1Name\"","interpret":true},{"selector":"@s","color":"green","bold":true},{"text":" hat die Lobby verlassen ","color":"yellow","bold":true},{"score":{"name":"VarGildSMS.1Wartende","objective":"PZGildSMS.1Wert"},"color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"10","color":"dark_purple","bold":true}]

bossbar set gildenschlacht-minispiel:v1lobby players @a[team=TMGildSMS.1Lobby]

execute at @e[type=minecraft:text_display,tag=EtiGildSMS.1Teleporter] run teleport @s ~ ~-3.5 ~15 180 0

attribute @s minecraft:generic.max_health base set 20

tag @s[tag=EtiGildSMS.1Spielen] remove EtiGildSMS.1Spielen
tag @s[tag=EtiGildSMS.1Verloren] remove EtiGildSMS.1Verloren
