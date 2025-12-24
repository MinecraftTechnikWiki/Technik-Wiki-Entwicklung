
execute if entity @e[type=minecraft:area_effect_cloud,tag=EtiBoSplMS.1Start] run return run tellraw @a[distance=..25] ["Bow-Spleef-Minispiel.1:\n",{text:"Das Minispiel wurde nicht erstellt! Warte einen Moment um es zu erstellen!",color:"red",bold:true}]
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:400,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Radius:0.0f,Tags:["EtiBoSplMS.1Start"]}

# Zwei Punkte-Ziele werden erstellt.
scoreboard objectives add PZBoSplMS.1Wert dummy ["Bow-Spleef-Minispiel.1: ",{text:"Wert der Variablen",bold:true}]
scoreboard objectives add PZBoSplMS.1Verlassen minecraft.custom:minecraft.leave_game ["Bow-Spleef-Minispiel.1: ",{text:"Spiel verlassen",bold:true}]

scoreboard players set KonstBoSplMS.1FUENF PZBoSplMS.1Wert 5

scoreboard players set VarBoSplMS.1Spielen PZBoSplMS.1Wert 0
scoreboard players set VarBoSplMS.1Spieler PZBoSplMS.1Wert 0
scoreboard players set VarBoSplMS.1Wartende PZBoSplMS.1Wert 0
scoreboard players set VarBoSplMS.1Teilnehmer PZGildSMS.1Wert 0

team add TMBoSplMS.1Lobby ["Bow-Spleef-Minispiel.1: ",{text:"Lobby",color:"yellow",bold:true}]
team modify TMBoSplMS.1Lobby color white
team modify TMBoSplMS.1Lobby friendlyFire false

bossbar add bow-spleef-minispiel:v1lobby ["",{text:"Lobby - Spieler anwesend ",bold:true},{text:"0",color:"green",bold:true}]
bossbar set bow-spleef-minispiel:v1lobby color white
bossbar set bow-spleef-minispiel:v1lobby visible true
bossbar set bow-spleef-minispiel:v1lobby max 10

team add TMBoSplMS.1Spielen ["Bow-Spleef-Minispiel.1: ",{text:"Spiel",color:"blue",bold:true}]
team modify TMBoSplMS.1Spielen color blue
team modify TMBoSplMS.1Spielen friendlyFire false

data modify storage bow-spleef-minispiel:v1daten "EigBoSplMS.1Name" set value ["",{text:"[",color:"dark_gray"},{text:"Bow-Spleef-Minispiel",color:"gray",bold:true},{text:"]",color:"dark_gray"}," "]

summon minecraft:text_display ~ ~3 ~-10 {text:["",{text:"Lobby",color:"yellow",bold:true},"\n",{text:"0",color:"dark_purple",bold:true},{text:"/",bold:true},{text:"10",color:"dark_purple",bold:true}],billboard:"center",Tags:["EtiBoSplMS.1Alle","EtiBoSplMS.1Teleporter"]}
execute at @n[type=minecraft:text_display,tag=EtiBoSplMS.1Teleporter] run place template bow-spleef-minispiel:v1teleporter ~-8 ~-3 ~-9 none

summon minecraft:marker ~ ~ ~-50 {Tags:["EtiBoSplMS.1Alle","EtiBoSplMS.1Spielfeld"]}
execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] run place template bow-spleef-minispiel:v1gebiet ~ ~ ~ none
execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] run place template bow-spleef-minispiel:v1gebiet ~ ~ ~ clockwise_90
execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] run place template bow-spleef-minispiel:v1gebiet ~ ~ ~ 180
execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] run place template bow-spleef-minispiel:v1gebiet ~ ~ ~ counterclockwise_90

execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] run summon minecraft:marker ~ ~4 ~ {Tags:["EtiBoSplMS.1Alle","EtiBoSplMS.1Ebene"]}

execute as @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] store result score @s PZBoSplMS.1Wert run data get entity @s Pos[1]
execute as @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] store result entity @s data."EigBoSplMS.1Argumente".Y int 1 run scoreboard players add @s PZBoSplMS.1Wert 10

execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] run summon minecraft:interaction ~ ~15.5 ~ {width:52,height:3,Tags:["EtiBoSplMS.1Alle","EtiBoSplMS.1Wartesaal"]}

execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] positioned ~-35 ~-1 ~-35 as @a[dx=70,dy=40,dz=70] at @s run function bow-spleef-minispiel:v1verlassen

forceload add ~ ~

tellraw @a[distance=..25] ["Bow-Spleef-Minispiel.1:\n",{text:"Das Minispiel wurde erstellt und ist bereit!",bold:true}]
