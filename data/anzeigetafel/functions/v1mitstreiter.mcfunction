
scoreboard players add VarAnzTaf.1Nummer PZAnzTaf.1Wert 1

tag @s add EtiAnzTaf.1Selbst
execute at @e[type=minecraft:armor_stand,tag=EtiAnzTaf.1Schild,sort=nearest,limit=1] run data merge block ~ ~ ~ {Text1:'["",{"entity":"@e[tag=EtiAnzTaf.1Selbst,sort=nearest,limit=1]","nbt":"CustomName","interpret":true},{"score":{"name":"VarAnzTaf.1Nummer","objective":"PZAnzTaf.1Wert"},"color":"gold","bold":true}]'}
execute at @e[type=minecraft:armor_stand,tag=EtiAnzTaf.1Schild,sort=nearest,limit=1] run data modify entity @s CustomName set from block ~ ~ ~ Text1
tag @s remove EtiAnzTaf.1Selbst

execute store result score @s PZAnzTaf.1Wert run data get entity @s UUID[0] 1
scoreboard players operation @s PZAnzTaf.1Wert %= KonstAnzTaf.1HUNDERT PZAnzTaf.1Wert
tag @s remove EtiAnzTaf.1Mitstreiter
