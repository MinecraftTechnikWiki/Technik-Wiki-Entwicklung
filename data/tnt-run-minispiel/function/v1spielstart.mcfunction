
scoreboard players operation VarTNTRMS.1IstNull PZTNTRMS.1Wert = VarTNTRMS.1Beginnen PZTNTRMS.1Wert
scoreboard players operation VarTNTRMS.1IstNull PZTNTRMS.1Wert %= KonstTNTRMS.1FUENF PZTNTRMS.1Wert

execute store success score VarTNTRMS.1Ausgabe PZTNTRMS.1Wert if score VarTNTRMS.1Beginnen PZTNTRMS.1Wert matches 1..5
execute if score VarTNTRMS.1Beginnen PZTNTRMS.1Wert matches 1.. if score VarTNTRMS.1IstNull PZTNTRMS.1Wert matches 0 run scoreboard players set VarTNTRMS.1Ausgabe PZTNTRMS.1Wert 1

execute if score VarTNTRMS.1Ausgabe PZTNTRMS.1Wert matches 1 run tellraw @a[team=TMTNTRMS.1Lobby] ["TNT-Run-Minispiel.1:\n",{storage:"tnt-run-minispiel:v1daten",nbt:'"EigTNTRMS.1Name"',interpret:true},{text:"Die Runde beginnt in ",color:"green",bold:true},{score:{name:"VarTNTRMS.1Beginnen",objective:"PZTNTRMS.1Wert"},color:"dark_purple",bold:true},{text:" Sekunden.",color:"green",bold:true}]

execute if score VarTNTRMS.1Beginnen PZTNTRMS.1Wert matches 11..15 run title @a[team=TMTNTRMS.1Lobby] title ["",{score:{name:"VarTNTRMS.1Beginnen",objective:"PZTNTRMS.1Wert"},color:"green",bold:true}]
execute if score VarTNTRMS.1Beginnen PZTNTRMS.1Wert matches 6..10 run title @a[team=TMTNTRMS.1Lobby] title ["",{score:{name:"VarTNTRMS.1Beginnen",objective:"PZTNTRMS.1Wert"},color:"yellow",bold:true}]
execute if score VarTNTRMS.1Beginnen PZTNTRMS.1Wert matches 1..5 run title @a[team=TMTNTRMS.1Lobby] title ["",{score:{name:"VarTNTRMS.1Beginnen",objective:"PZTNTRMS.1Wert"},color:"red",bold:true}]

execute if score VarTNTRMS.1Beginnen PZTNTRMS.1Wert matches 1..5 run playsound minecraft:block.note_block.chime master @a[team=TMTNTRMS.1Lobby] ~ ~ ~ 1 0.6 1
execute if score VarTNTRMS.1Beginnen PZTNTRMS.1Wert matches 0 run playsound minecraft:block.note_block.chime master @a[team=TMTNTRMS.1Lobby] ~ ~ ~ 1 0.7 1

execute if score VarTNTRMS.1Beginnen PZTNTRMS.1Wert matches 1.. run return run scoreboard players remove VarTNTRMS.1Beginnen PZTNTRMS.1Wert 1

scoreboard players set VarTNTRMS.1Spielende PZTNTRMS.1Wert 0
scoreboard players set VarTNTRMS.1Befristet PZTNTRMS.1Wert 0
scoreboard players set VarTNTRMS.1Zaehlen PZTNTRMS.1Wert 0
scoreboard players set VarTNTRMS.1Spielen PZTNTRMS.1Wert 1
scoreboard players set VarTNTRMS.1Beenden PZTNTRMS.1Wert 16
scoreboard players set VarTNTRMS.1Verzoegern PZTNTRMS.1Wert -31

execute at @s run tag @a[distance=..50,team=TMTNTRMS.1Lobby] add EtiTNTRMS.1Spielen

title @a[tag=EtiTNTRMS.1Spielen] title ["",{text:"Spiel startet!",color:"blue",bold:true}]

team join TMTNTRMS.1Spielen @a[tag=EtiTNTRMS.1Spielen]

bossbar set tnt-run-minispiel:v1lobby players @a[team=TMTNTRMS.1Lobby]
bossbar set tnt-run-minispiel:v1lobby name ["",{text:"Lobby - Spieler anwesend ",bold:true},{score:{name:"VarTNTRMS.1Wartende",objective:"PZTNTRMS.1Wert"},color:"green",bold:true}]

clear @a[tag=EtiTNTRMS.1Spielen]

effect clear @a[tag=EtiTNTRMS.1Spielen]
effect give @a[tag=EtiTNTRMS.1Spielen] minecraft:night_vision infinite 1 true
effect give @a[tag=EtiTNTRMS.1Spielen] minecraft:saturation infinite 3 true
effect give @a[tag=EtiTNTRMS.1Spielen] minecraft:resistance infinite 3 true
effect give @a[tag=EtiTNTRMS.1Spielen] minecraft:fire_resistance infinite 3 true

gamemode adventure @a[tag=EtiTNTRMS.1Spielen]

execute store result score VarTNTRMS.1Spieler PZTNTRMS.1Wert if entity @a[tag=EtiTNTRMS.1Spielen]

$execute at @s positioned ~ ~ ~-10 run spreadplayers ~ ~ 3 4 under $(Y) false @a[distance=..50,tag=EtiTNTRMS.1Spielen]
