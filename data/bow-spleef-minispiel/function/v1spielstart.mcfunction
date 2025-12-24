
scoreboard players operation VarBoSplMS.1IstNull PZBoSplMS.1Wert = VarBoSplMS.1Beginnen PZBoSplMS.1Wert
scoreboard players operation VarBoSplMS.1IstNull PZBoSplMS.1Wert %= KonstBoSplMS.1FUENF PZBoSplMS.1Wert

execute store success score VarBoSplMS.1Ausgabe PZBoSplMS.1Wert if score VarBoSplMS.1Beginnen PZBoSplMS.1Wert matches 1..5
execute if score VarBoSplMS.1Beginnen PZBoSplMS.1Wert matches 1.. if score VarBoSplMS.1IstNull PZBoSplMS.1Wert matches 0 run scoreboard players set VarBoSplMS.1Ausgabe PZBoSplMS.1Wert 1

execute if score VarBoSplMS.1Ausgabe PZBoSplMS.1Wert matches 1 run tellraw @a[team=TMBoSplMS.1Lobby] ["Bow-Spleef-Minispiel.1:\n",{storage:"bow-spleef-minispiel:v1daten",nbt:'"EigBoSplMS.1Name"',interpret:true},{text:"Die Runde beginnt in ",color:"green",bold:true},{score:{name:"VarBoSplMS.1Beginnen",objective:"PZBoSplMS.1Wert"},color:"dark_purple",bold:true},{text:" Sekunden.",color:"green",bold:true}]

execute if score VarBoSplMS.1Beginnen PZBoSplMS.1Wert matches 11..15 run title @a[team=TMBoSplMS.1Lobby] title ["",{score:{name:"VarBoSplMS.1Beginnen",objective:"PZBoSplMS.1Wert"},color:"green",bold:true}]
execute if score VarBoSplMS.1Beginnen PZBoSplMS.1Wert matches 6..10 run title @a[team=TMBoSplMS.1Lobby] title ["",{score:{name:"VarBoSplMS.1Beginnen",objective:"PZBoSplMS.1Wert"},color:"yellow",bold:true}]
execute if score VarBoSplMS.1Beginnen PZBoSplMS.1Wert matches 1..5 run title @a[team=TMBoSplMS.1Lobby] title ["",{score:{name:"VarBoSplMS.1Beginnen",objective:"PZBoSplMS.1Wert"},color:"red",bold:true}]

execute if score VarBoSplMS.1Beginnen PZBoSplMS.1Wert matches 1..5 run playsound minecraft:block.note_block.chime master @a[team=TMBoSplMS.1Lobby] ~ ~ ~ 1 0.6 1
execute if score VarBoSplMS.1Beginnen PZBoSplMS.1Wert matches 0 run playsound minecraft:block.note_block.chime master @a[team=TMBoSplMS.1Lobby] ~ ~ ~ 1 0.7 1

execute if score VarBoSplMS.1Beginnen PZBoSplMS.1Wert matches 1.. run return run scoreboard players remove VarBoSplMS.1Beginnen PZBoSplMS.1Wert 1

scoreboard players set VarBoSplMS.1Spielende PZBoSplMS.1Wert 0
scoreboard players set VarBoSplMS.1Befristet PZBoSplMS.1Wert 0
scoreboard players set VarBoSplMS.1Zaehlen PZBoSplMS.1Wert 0
scoreboard players set VarBoSplMS.1Spielen PZBoSplMS.1Wert 1
scoreboard players set VarBoSplMS.1Beenden PZBoSplMS.1Wert 16

execute at @s run tag @a[distance=..50,team=TMBoSplMS.1Lobby] add EtiBoSplMS.1Spielen

title @a[tag=EtiBoSplMS.1Spielen] title ["",{text:"Spiel startet!",color:"blue",bold:true}]

team join TMBoSplMS.1Spielen @a[tag=EtiBoSplMS.1Spielen]

bossbar set bow-spleef-minispiel:v1lobby players @a[team=TMBoSplMS.1Lobby]
bossbar set bow-spleef-minispiel:v1lobby name ["",{text:"Lobby - Spieler anwesend ",bold:true},{score:{name:"VarBoSplMS.1Wartende",objective:"PZBoSplMS.1Wert"},color:"green",bold:true}]

clear @a[tag=EtiBoSplMS.1Spielen]

effect clear @a[tag=EtiBoSplMS.1Spielen]
effect give @a[tag=EtiBoSplMS.1Spielen] minecraft:night_vision infinite 1 true

gamemode adventure @a[tag=EtiBoSplMS.1Spielen]

execute store result score VarBoSplMS.1Spieler PZBoSplMS.1Wert if entity @a[tag=EtiBoSplMS.1Spielen]

give @a[tag=EtiBoSplMS.1Spielen] minecraft:bow[minecraft:enchantments={"minecraft:infinity":5},minecraft:tooltip_display={hidden_components:["minecraft:enchantments"]},minecraft:custom_data={EigBoSplMS.1Alle:true}]
give @a[tag=EtiBoSplMS.1Spielen] minecraft:arrow[minecraft:custom_data={EigBoSplMS.1Alle:true}]

$execute at @s positioned ~ ~ ~-10 run spreadplayers ~ ~ 3 4 under $(Y) false @a[distance=..50,tag=EtiBoSplMS.1Spielen]
