
tag @s remove EtiPaintBMS.1Verlassen
tag @s remove EtiPaintBMS.1Teilnehmer

scoreboard players set @s PZPaintBMS.1Verlassen 0
scoreboard players set VarPaintBMS.1Warten PZPaintBMS.1Wert 10

clear @s

effect clear @s minecraft:night_vision

gamemode creative @s

clear @s minecraft:snowball[minecraft:custom_data~{EigPaintBMS.1Alle:true}]
clear @s minecraft:red_bed[minecraft:custom_data~{EigPaintBMS.1Alle:true}]

kill @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigPaintBMS.1Alle:true} } } },sort=nearest,limit=1]

tellraw @s[team=!TMPaintBMS.1Lobby,tag=!EtiPaintBMS.1Spielen] ["Paintball-Minispiel.1:\n",{"storage":"paintball-minispiel:v1daten","nbt":"\"EigPaintBMS.1Name\"","interpret":true},{"text":"Du bist dem Minispiel zu nahe gekommen!","color":"red","bold":true}]

team leave @s

execute store result score VarPaintBMS.1Wartende PZPaintBMS.1Wert if entity @a[team=TMPaintBMS.1Lobby]
execute store result score VarPaintBMS.1Teilnehmer PZPaintBMS.1Wert if entity @a[tag=EtiPaintBMS.1Teilnehmer]

bossbar set paintball-minispiel:v1lobby name ["",{"text":"Lobby - Spieler anwesend ","bold":true},{"score":{"name":"VarPaintBMS.1Wartende","objective":"PZPaintBMS.1Wert"},"color":"green","bold":true}]

execute if entity @s[tag=EtiPaintBMS.1Spielen,tag=!EtiPaintBMS.1Verloren] run tellraw @a[team=TMPaintBMS.1Lobby] ["Paintball-Minispiel.1:\n",{"storage":"paintball-minispiel:v1daten","nbt":"\"EigPaintBMS.1Name\"","interpret":true},{"selector":"@s","color":"green","bold":true},{"text":" hat die Lobby verlassen ","color":"yellow","bold":true},{"score":{"name":"VarPaintBMS.1Wartende","objective":"PZPaintBMS.1Wert"},"color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"10","color":"dark_purple","bold":true}]

bossbar set paintball-minispiel:v1lobby players @a[team=TMPaintBMS.1Lobby]

execute at @e[type=minecraft:text_display,tag=EtiPaintBMS.1Teleporter] run teleport @s ~ ~-3.5 ~15 180 0

tag @s[tag=EtiPaintBMS.1Spielen] remove EtiPaintBMS.1Spielen
tag @s[tag=EtiPaintBMS.1Verloren] remove EtiPaintBMS.1Verloren
