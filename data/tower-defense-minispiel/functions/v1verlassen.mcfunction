
tag @s remove EtiTowDefMS.1Verlassen
tag @s remove EtiTowDefMS.1Teilnehmer

scoreboard players set @s PZTowDefMS.1Verlassen 0
scoreboard players set VarTowDefMS.1Warten PZTowDefMS.1Wert 10

clear @s

effect clear @s minecraft:night_vision

gamemode creative @s

clear @s minecraft:snowball[minecraft:custom_data~{EigTowDefMS.1Alle:true}]
clear @s minecraft:red_bed[minecraft:custom_data~{EigTowDefMS.1Alle:true}]

kill @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigTowDefMS.1Alle:true} } } },sort=nearest,limit=1]

tellraw @s[team=!TMTowDefMS.1Lobby,tag=!EtiTowDefMS.1Spielen] ["Tower-Defense-Minispiel.1:\n",{"storage":"tower-defense-minispiel:v1daten","nbt":"\"EigTowDefMS.1Name\"","interpret":true},{"text":"Du bist dem Minispiel zu nahe gekommen!","color":"red","bold":true}]

team leave @s

execute store result score VarTowDefMS.1Wartende PZTowDefMS.1Wert if entity @a[team=TMTowDefMS.1Lobby]

execute store result score VarTowDefMS.1Teilnehmer PZTowDefMS.1Wert if entity @a[tag=EtiTowDefMS.1Teilnehmer]

bossbar set tower-defense-minispiel:v1lobby name ["",{"text":"Lobby - Spieler anwesend ","bold":true},{"score":{"name":"VarTowDefMS.1Wartende","objective":"PZTowDefMS.1Wert"},"color":"green","bold":true}]

execute if entity @s[tag=EtiTowDefMS.1Spielen,tag=!EtiTowDefMS.1Verloren] run tellraw @a[team=TMTowDefMS.1Lobby] ["Tower-Defense-Minispiel.1:\n",{"storage":"tower-defense-minispiel:v1daten","nbt":"\"EigTowDefMS.1Name\"","interpret":true},{"selector":"@s","color":"green","bold":true},{"text":" hat die Lobby verlassen ","color":"yellow","bold":true},{"score":{"name":"VarTowDefMS.1Wartende","objective":"PZTowDefMS.1Wert"},"color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"10","color":"dark_purple","bold":true}]

bossbar set tower-defense-minispiel:v1lobby players @a[team=TMTowDefMS.1Lobby]

execute at @e[type=minecraft:text_display,tag=EtiTowDefMS.1Teleporter] run teleport @s ~ ~-3.5 ~15 180 0

tag @s[tag=EtiTowDefMS.1Spielen] remove EtiTowDefMS.1Spielen
tag @s[tag=EtiTowDefMS.1Verloren] remove EtiTowDefMS.1Verloren
