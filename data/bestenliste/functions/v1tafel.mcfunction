
teleport @s[tag=EtiBestLi.1Position] ~ ~3 ~
tag @s[tag=EtiBestLi.1Position] remove EtiBestLi.1Position

execute at @s positioned ~-0.5 ~ ~-0.5 run kill @e[dx=1,dy=-10,dz=1,type=minecraft:armor_stand,tag=EtiBestLi.1TafelRang]

scoreboard players set VarBestLi.1Rangfolge PZBestLi.1Wert 0
execute store result score VarBestLi.1Rangliste PZBestLi.1Wert if entity @e[tag=EtiBestLi.1Rangliste]
execute if score VarBestLi.1Rangliste PZBestLi.1Wert matches 1.. at @s positioned ~ ~-0.4 ~ run function bestenliste:v1rangliste

tag @e[tag=EtiBestLi.1Erledigt] remove EtiBestLi.1Erledigt
