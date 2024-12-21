
scoreboard players operation VarWartS.1IstNull PZWartS.1Wert = VarWartS.1Beginnen PZWartS.1Wert
scoreboard players operation VarWartS.1IstNull PZWartS.1Wert %= KonstWartS.1FUENF PZWartS.1Wert

execute store success score VarWartS.1Ausgabe PZWartS.1Wert if score VarWartS.1Beginnen PZWartS.1Wert matches 1..5
execute if score VarWartS.1Beginnen PZWartS.1Wert matches 1.. if score VarWartS.1IstNull PZWartS.1Wert matches 0 run scoreboard players set VarWartS.1Ausgabe PZWartS.1Wert 1

execute if score VarWartS.1Ausgabe PZWartS.1Wert matches 1 run tellraw @a[team=TMWartS.1Lobby] ["Wartesaal.1:\n",{"storage":"wartesaal:v1daten","nbt":"\"EigWartS.1Name\"","interpret":true},{"text":" Die Runde beginnt in ","color":"green","bold":true},{"score":{"name":"VarWartS.1Beginnen","objective":"PZWartS.1Wert"},"color":"dark_purple","bold":true},{"text":" Sekunden.","color":"green","bold":true}]

execute if score VarWartS.1Beginnen PZWartS.1Wert matches 11..15 run title @a[team=TMWartS.1Lobby] title ["",{"score":{"name":"VarWartS.1Beginnen","objective":"PZWartS.1Wert"},"color":"green","bold":true}]
execute if score VarWartS.1Beginnen PZWartS.1Wert matches 6..10 run title @a[team=TMWartS.1Lobby] title ["",{"score":{"name":"VarWartS.1Beginnen","objective":"PZWartS.1Wert"},"color":"yellow","bold":true}]
execute if score VarWartS.1Beginnen PZWartS.1Wert matches 1..5 run title @a[team=TMWartS.1Lobby] title ["",{"score":{"name":"VarWartS.1Beginnen","objective":"PZWartS.1Wert"},"color":"red","bold":true}]

execute if score VarWartS.1Beginnen PZWartS.1Wert matches 1..5 run playsound minecraft:block.note_block.chime master @a[team=TMWartS.1Lobby] ~ ~ ~ 1 0.6 1
execute if score VarWartS.1Beginnen PZWartS.1Wert matches 0 run playsound minecraft:block.note_block.chime master @a[team=TMWartS.1Lobby] ~ ~ ~ 1 0.7 1

execute if score VarWartS.1Beginnen PZWartS.1Wert matches 1.. run return run scoreboard players remove VarWartS.1Beginnen PZWartS.1Wert 1

scoreboard players set VarWartS.1Zaehlen PZWartS.1Wert 0
scoreboard players set VarWartS.1Spielen PZWartS.1Wert 1
scoreboard players set VarWartS.1Beenden PZWartS.1Wert 31

execute at @s run tag @a[distance=..50,team=TMWartS.1Lobby] add EtiWartS.1Spielen

team join TMWartS.1Spielen @a[tag=EtiWartS.1Spielen]

bossbar set wartesaal:v1lobby players @a[team=TMWartS.1Lobby]
bossbar set wartesaal:v1lobby name ["",{"text":"Lobby - Spieler anwesend ","bold":true},{"score":{"name":"VarWartS.1Wartende","objective":"PZWartS.1Wert"},"color":"green","bold":true}]

clear @a[tag=EtiWartS.1Spielen]

effect clear @a[tag=EtiWartS.1Spielen]

gamemode adventure @a[tag=EtiWartS.1Spielen]

title @a[tag=EtiWartS.1Spielen] title ["",{"text":"Spiel startet!","color":"blue","bold":true}]

item replace entity @a[tag=EtiWartS.1Spielen] armor.head with minecraft:leather_helmet[minecraft:enchantments={levels:{"minecraft:binding_curse":1} },minecraft:custom_data={EigWartS.1Alle:true},minecraft:dyed_color={rgb:255}]

$execute at @s positioned ~5 ~ ~ run spreadplayers ~ ~ 3 4 under $(Y) false @a[tag=EtiWartS.1Spielen]
