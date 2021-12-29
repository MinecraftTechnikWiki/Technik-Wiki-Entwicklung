
scoreboard players add VarBestLi.1Rangfolge PZBestLi.1Wert 1
scoreboard players set VarBestLi.1HoechsterWert PZBestLi.1Wert 0
scoreboard players operation VarBestLi.1HoechsterWert PZBestLi.1Wert > @e[tag=EtiBestLi.1Rangliste,tag=!EtiBestLi.1Erledigt] PZBestLi.1Wert

execute as @e[tag=EtiBestLi.1Rangliste,tag=!EtiBestLi.1Erledigt] if score @s PZBestLi.1Wert = VarBestLi.1HoechsterWert PZBestLi.1Wert run tag @s add EtiBestLi.1Ranghoechste

tag @e[tag=EtiBestLi.1Ranghoechste,sort=arbitrary,limit=1] add EtiBestLi.1Erledigt

execute at @e[type=minecraft:marker,tag=EtiBestLi.1Schild,sort=nearest,limit=1] run data merge block ~ ~ ~ {Text1:'["",{"score":{"name":"VarBestLi.1Rangfolge","objective":"PZBestLi.1Wert"},"color":"aqua","bold":true},{"text":". ","color":"aqua","bold":true},{"selector":"@e[tag=EtiBestLi.1Ranghoechste,tag=EtiBestLi.1Erledigt,sort=nearest,limit=1]"},{"text":" - ","color":"gray","bold":true},{"score":{"name":"@e[tag=EtiBestLi.1Ranghoechste,tag=EtiBestLi.1Erledigt,sort=nearest,limit=1]","objective":"PZBestLi.1Wert"},"color":"dark_purple","bold":true}]'}

summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiBestLi.1Alle","EtiBestLi.1TafelRang","EtiBestLi.1TextRang"]}
execute as @e[type=minecraft:armor_stand,tag=EtiBestLi.1TafelRang,sort=nearest,limit=1] at @e[type=minecraft:marker,tag=EtiBestLi.1Schild,sort=nearest,limit=1] run data modify entity @s CustomName set from block ~ ~ ~ Text1

execute as @e[type=minecraft:armor_stand,tag=EtiBestLi.1TafelRang,tag=EtiBestLi.1TextRang,sort=nearest,limit=1] store success entity @s CustomNameVisible byte 1 run tag @s remove EtiBestLi.1TextRang

tag @e[tag=EtiBestLi.1Ranghoechste] remove EtiBestLi.1Ranghoechste

scoreboard players remove VarBestLi.1Rangliste PZBestLi.1Wert 1
execute if score VarBestLi.1Rangliste PZBestLi.1Wert matches 1.. if score VarBestLi.1Rangfolge PZBestLi.1Wert < VarBestLi.1Max PZBestLi.1Wert positioned ~ ~-0.4 ~ run function bestenliste:v1rangliste
