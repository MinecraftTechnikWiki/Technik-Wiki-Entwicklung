
execute as @e[type=minecraft:chest_minecart,tag=EtiWartH.1GUI,sort=nearest,limit=1] store result score @s PZWartH.1Wert run data get entity @s Items
execute as @e[type=minecraft:chest_minecart,tag=EtiWartH.1GUI,sort=nearest,limit=1] unless entity @s[scores={PZWartH.1Wert=6}] at @s run function wartehalle:v1menu

execute at @e[type=minecraft:armor_stand,tag=EtiWartH.1Teleporter,sort=nearest,limit=1] run particle minecraft:portal ~ ~ ~ 0 1 0 0.7 35 force @a[distance=..15]

execute if score VarWartH.1Anzahl PZWartH.1Wert >= VarWartH.1Max PZWartH.1Wert at @e[type=minecraft:armor_stand,tag=EtiWartH.1Teleporter,sort=nearest,limit=1] run title @a[distance=..1] actionbar ["",{"text":"Lobby ist voll","color":"red","bold":true}]
execute if score VarWartH.1Anzahl PZWartH.1Wert < VarWartH.1Max PZWartH.1Wert at @e[type=minecraft:armor_stand,tag=EtiWartH.1Teleporter,sort=nearest,limit=1] positioned ~ ~1 ~ as @p[distance=..1] run function wartehalle:v1betreten

tag @a[team=TMWartH.1Lobby,scores={PZWartH.1Nr=1..}] add EtiWartH.1Verlassen
tag @a[team=TMWartH.1Lobby,tag=!EtiWartH.1Verlassen,nbt=!{Inventory:[{id:"minecraft:red_bed",tag:{EigWartH.1Verlassen:true} } ] }] add EtiWartH.1Verlassen
execute as @a[tag=EtiWartH.1Verlassen] at @s run function wartehalle:v1verlassen

execute store result score VarWartH.1Anzahl PZWartH.1Wert if entity @a[team=TMWartH.1Lobby]

execute if score VarWartH.1Anzahl PZWartH.1Wert < VarWartH.1Min PZWartH.1Wert as @e[type=minecraft:armor_stand,tag=EtiWartH.1Wartehalle] at @s run function wartehalle:v1warten

execute if score VarWartH.1Anzahl PZWartH.1Wert >= VarWartH.1Min PZWartH.1Wert run tag @e[type=minecraft:armor_stand,tag=EtiWartH.1Wartehalle,tag=!EtiWartH.1Zaehler] add EtiWartH.1Zaehler
execute if score VarWartH.1Anzahl PZWartH.1Wert < VarWartH.1Min PZWartH.1Wert run tag @e[type=minecraft:armor_stand,tag=EtiWartH.1Wartehalle,tag=EtiWartH.1Zaehler] remove EtiWartH.1Zaehler

execute if entity @e[type=minecraft:armor_stand,tag=EtiWartH.1Wartehalle,tag=!EtiWartH.1Zaehler,sort=nearest,limit=1] unless score VarWartH.1Zaehler PZWartH.1Wert matches 301 run scoreboard players set VarWartH.1Zaehler PZWartH.1Wert 301

execute if entity @e[type=minecraft:armor_stand,tag=EtiWartH.1Wartehalle,tag=EtiWartH.1Zaehler,sort=nearest,limit=1] if score VarWartH.1Zaehler PZWartH.1Wert matches 1.. store result score VarWartH.1Div PZWartH.1Wert store result score VarWartH.1Rest PZWartH.1Wert run scoreboard players remove VarWartH.1Zaehler PZWartH.1Wert 1
execute if entity @e[type=minecraft:armor_stand,tag=EtiWartH.1Wartehalle,tag=EtiWartH.1Zaehler,sort=nearest,limit=1] run scoreboard players operation VarWartH.1Rest PZWartH.1Wert %= KonstWartH.1ZWANZIG PZWartH.1Wert
execute if entity @e[type=minecraft:armor_stand,tag=EtiWartH.1Wartehalle,tag=EtiWartH.1Zaehler,sort=nearest,limit=1] run scoreboard players operation VarWartH.1Div PZWartH.1Wert /= KonstWartH.1ZWANZIG PZWartH.1Wert

execute if score VarWartH.1Rest PZWartH.1Wert matches 0 at @e[type=minecraft:armor_stand,tag=EtiWartH.1Wartehalle,tag=EtiWartH.1Zaehler,sort=nearest,limit=1] run function wartehalle:v1zaehler
execute if score VarWartH.1Zaehler PZWartH.1Wert matches ..0 at @e[type=minecraft:armor_stand,tag=EtiWartH.1Wartehalle,tag=EtiWartH.1Zaehler,sort=nearest,limit=1] run function wartehalle:v1mannschaft
execute if score VarWartH.1Zaehler PZWartH.1Wert matches ..0 run tag @e[type=minecraft:armor_stand,tag=EtiWartH.1Wartehalle,tag=EtiWartH.1Zaehler,sort=nearest,limit=1] remove EtiWartH.1Zaehler

execute as @e[type=minecraft:armor_stand,tag=EtiWartH.1Belegungen,sort=nearest,limit=1] store result score @s PZWartH.1Wert run scoreboard players add @s[scores={PZWartH.1Wert=..20}] PZWartH.1Wert 1

execute if entity @e[type=minecraft:armor_stand,tag=EtiWartH.1Belegungen,scores={PZWartH.1Wert=1},sort=nearest,limit=1] at @e[type=minecraft:armor_stand,tag=EtiWartH.1Schild,sort=nearest,limit=1] run data merge block ~ ~ ~ {Text1:'["",{"score":{"name":"VarWartH.1Anzahl","objective":"PZWartH.1Wert"},"color":"aqua","bold":true}," ",{"text":"/","bold":true}," ",{"score":{"name":"VarWartH.1Max","objective":"PZWartH.1Wert"},"color":"dark_purple","bold":true}]'}

execute as @e[type=minecraft:armor_stand,tag=EtiWartH.1Belegungen,scores={PZWartH.1Wert=1},sort=nearest,limit=1] at @e[type=minecraft:armor_stand,tag=EtiWartH.1Schild,sort=nearest,limit=1] run data modify entity @s CustomName set from block ~ ~ ~ Text1
