
execute as @e[type=minecraft:chest_minecart,tag=EtiVorH.1GUI,sort=nearest,limit=1] store result score @s PZVorH.1Wert run data get entity @s Items
execute as @e[type=minecraft:chest_minecart,tag=EtiVorH.1GUI,sort=nearest,limit=1] unless entity @s[scores={PZVorH.1Wert=6}] at @s run function vorhalle:v1menu

execute at @e[type=minecraft:armor_stand,tag=EtiVorH.1Teleporter,sort=nearest,limit=1] run particle minecraft:portal ~ ~ ~ 0 1 0 0.7 35 force @a[distance=..15]

execute if score VarVorH.1Anzahl PZVorH.1Wert >= VarVorH.1Max PZVorH.1Wert at @e[type=minecraft:armor_stand,tag=EtiVorH.1Teleporter,sort=nearest,limit=1] run title @a[distance=..1] actionbar ["",{"text":"Lobby ist voll","color":"red","bold":true}]
execute if score VarVorH.1Anzahl PZVorH.1Wert < VarVorH.1Max PZVorH.1Wert at @e[type=minecraft:armor_stand,tag=EtiVorH.1Teleporter,sort=nearest,limit=1] positioned ~ ~1 ~ as @p[distance=..1] run function vorhalle:v1betreten

tag @a[team=TMVorH.1Lobby,scores={PZVorH.1Nr=1..}] add EtiVorH.1Verlassen
tag @a[team=TMVorH.1Lobby,tag=!EtiVorH.1Verlassen,nbt=!{Inventory:[{Slot:0b,id:"minecraft:red_bed",tag:{EigVorH.1Verlassen:true} } ] }] add EtiVorH.1Verlassen
execute as @a[tag=EtiVorH.1Verlassen] at @s run function vorhalle:v1verlassen

execute store result score VarVorH.1Anzahl PZVorH.1Wert if entity @a[team=TMVorH.1Lobby]

execute if score VarVorH.1Anzahl PZVorH.1Wert < VarVorH.1Min PZVorH.1Wert as @e[type=minecraft:armor_stand,tag=EtiVorH.1Vorhalle] at @s run function vorhalle:v1warten

execute if score VarVorH.1Anzahl PZVorH.1Wert >= VarVorH.1Min PZVorH.1Wert run tag @e[type=minecraft:armor_stand,tag=EtiVorH.1Vorhalle,tag=!EtiVorH.1Zaehler] add EtiVorH.1Zaehler
execute if score VarVorH.1Anzahl PZVorH.1Wert < VarVorH.1Min PZVorH.1Wert run tag @e[type=minecraft:armor_stand,tag=EtiVorH.1Vorhalle,tag=EtiVorH.1Zaehler] remove EtiVorH.1Zaehler

execute if entity @e[type=minecraft:armor_stand,tag=EtiVorH.1Vorhalle,tag=!EtiVorH.1Zaehler,sort=nearest,limit=1] unless score VarVorH.1Zaehler PZVorH.1Wert matches 301 run scoreboard players set VarVorH.1Zaehler PZVorH.1Wert 301

execute if entity @e[type=minecraft:armor_stand,tag=EtiVorH.1Vorhalle,tag=EtiVorH.1Zaehler,sort=nearest,limit=1] if score VarVorH.1Zaehler PZVorH.1Wert matches 1.. store result score VarVorH.1Div PZVorH.1Wert store result score VarVorH.1Rest PZVorH.1Wert run scoreboard players remove VarVorH.1Zaehler PZVorH.1Wert 1
execute if entity @e[type=minecraft:armor_stand,tag=EtiVorH.1Vorhalle,tag=EtiVorH.1Zaehler,sort=nearest,limit=1] run scoreboard players operation VarVorH.1Rest PZVorH.1Wert %= KonstVorH.1ZWANZIG PZVorH.1Wert
execute if entity @e[type=minecraft:armor_stand,tag=EtiVorH.1Vorhalle,tag=EtiVorH.1Zaehler,sort=nearest,limit=1] run scoreboard players operation VarVorH.1Div PZVorH.1Wert /= KonstVorH.1ZWANZIG PZVorH.1Wert

execute if score VarVorH.1Rest PZVorH.1Wert matches 0 at @e[type=minecraft:armor_stand,tag=EtiVorH.1Vorhalle,tag=EtiVorH.1Zaehler,sort=nearest,limit=1] run function vorhalle:v1zaehler
execute if score VarVorH.1Zaehler PZVorH.1Wert matches ..0 at @e[type=minecraft:armor_stand,tag=EtiVorH.1Vorhalle,tag=EtiVorH.1Zaehler,sort=nearest,limit=1] run function vorhalle:v1mannschaft
execute if score VarVorH.1Zaehler PZVorH.1Wert matches ..0 run tag @e[type=minecraft:armor_stand,tag=EtiVorH.1Vorhalle,tag=EtiVorH.1Zaehler,sort=nearest,limit=1] remove EtiVorH.1Zaehler

execute as @e[type=minecraft:armor_stand,tag=EtiVorH.1Belegungen,sort=nearest,limit=1] store result score @s PZVorH.1Wert run scoreboard players add @s[scores={PZVorH.1Wert=..20}] PZVorH.1Wert 1

execute if entity @e[type=minecraft:armor_stand,tag=EtiVorH.1Belegungen,scores={PZVorH.1Wert=1},sort=nearest,limit=1] at @e[type=minecraft:armor_stand,tag=EtiVorH.1Schild,sort=nearest,limit=1] run data merge block ~ ~ ~ {Text1:'["",{"score":{"name":"VarVorH.1Anzahl","objective":"PZVorH.1Wert"},"color":"aqua","bold":true}," ",{"text":"/","bold":true}," ",{"score":{"name":"VarVorH.1Max","objective":"PZVorH.1Wert"},"color":"dark_purple","bold":true}]'}

execute as @e[type=minecraft:armor_stand,tag=EtiVorH.1Belegungen,scores={PZVorH.1Wert=1},sort=nearest,limit=1] at @e[type=minecraft:armor_stand,tag=EtiVorH.1Schild,sort=nearest,limit=1] run data modify entity @s CustomName set from block ~ ~ ~ Text1
