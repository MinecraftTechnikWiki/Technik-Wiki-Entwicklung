
scoreboard players add VarAnzTaf.1Rangfolge PZAnzTaf.1Wert 1
scoreboard players set VarAnzTaf.1HoechsterWert PZAnzTaf.1Wert 0
scoreboard players operation VarAnzTaf.1HoechsterWert PZAnzTaf.1Wert > @e[tag=EtiAnzTaf.1Rangliste,tag=!EtiAnzTaf.1Erledigt] PZAnzTaf.1Wert

execute as @e[tag=EtiAnzTaf.1Rangliste,tag=!EtiAnzTaf.1Erledigt] if score @s PZAnzTaf.1Wert = VarAnzTaf.1HoechsterWert PZAnzTaf.1Wert run tag @s add EtiAnzTaf.1Rang

tag @e[tag=EtiAnzTaf.1Rang,sort=arbitrary,limit=1] add EtiAnzTaf.1Erledigt

execute at @e[type=minecraft:armor_stand,tag=EtiAnzTaf.1Schild,sort=nearest,limit=1] run data merge block ~ ~ ~ {Text1:'["",{"score":{"name":"VarAnzTaf.1Rangfolge","objective":"PZAnzTaf.1Wert"},"color":"aqua","bold":true},{"text":". ","color":"aqua","bold":true},{"selector":"@e[tag=EtiAnzTaf.1Rang,tag=EtiAnzTaf.1Erledigt,sort=nearest,limit=1]"},{"text":" - ","color":"gray","bold":true},{"score":{"name":"@e[tag=EtiAnzTaf.1Rang,tag=EtiAnzTaf.1Erledigt,sort=nearest,limit=1]","objective":"PZAnzTaf.1Wert"},"color":"dark_purple","bold":true}]'}

summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiAnzTaf.1Alle","EtiAnzTaf.1TafelRang","EtiAnzTaf.1TextRang"]}
execute as @e[type=minecraft:armor_stand,tag=EtiAnzTaf.1TafelRang,sort=nearest,limit=1] at @e[type=minecraft:armor_stand,tag=EtiAnzTaf.1Schild,sort=nearest,limit=1] run data modify entity @s CustomName set from block ~ ~ ~ Text1

execute as @e[type=minecraft:armor_stand,tag=EtiAnzTaf.1TafelRang,tag=EtiAnzTaf.1TextRang,sort=nearest,limit=1] store success entity @s CustomNameVisible byte 1 run tag @s remove EtiAnzTaf.1TextRang

tag @e[tag=EtiAnzTaf.1Rang] remove EtiAnzTaf.1Rang

scoreboard players remove VarAnzTaf.1Rangliste PZAnzTaf.1Wert 1
execute if score VarAnzTaf.1Rangliste PZAnzTaf.1Wert matches 1.. if score VarAnzTaf.1Rangfolge PZAnzTaf.1Wert < VarAnzTaf.1Max PZAnzTaf.1Wert positioned ~ ~-0.4 ~ run function anzeigetafel:v1rangliste
