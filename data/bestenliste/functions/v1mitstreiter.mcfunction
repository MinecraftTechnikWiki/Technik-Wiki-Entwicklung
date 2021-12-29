
scoreboard players add VarBestLi.1Nummer PZBestLi.1Wert 1

tag @s add EtiBestLi.1Selbst
execute at @e[type=minecraft:marker,tag=EtiBestLi.1Schild,sort=nearest,limit=1] run data merge block ~ ~ ~ {Text1:'["",{"entity":"@e[tag=EtiBestLi.1Selbst,sort=nearest,limit=1]","nbt":"CustomName","interpret":true},{"score":{"name":"VarBestLi.1Nummer","objective":"PZBestLi.1Wert"},"color":"gold","bold":true}]'}
execute at @e[type=minecraft:marker,tag=EtiBestLi.1Schild,sort=nearest,limit=1] run data modify entity @s CustomName set from block ~ ~ ~ Text1
tag @s remove EtiBestLi.1Selbst

execute store result score @s PZBestLi.1Wert run data get entity @s UUID[0] 1
scoreboard players operation @s PZBestLi.1Wert %= KonstBestLi.1HUNDERT PZBestLi.1Wert
tag @s remove EtiBestLi.1Mitstreiter
