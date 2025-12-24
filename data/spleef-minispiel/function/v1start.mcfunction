
execute if entity @e[type=minecraft:area_effect_cloud,tag=EtiSpleeMS.1Start] run return run tellraw @a[distance=..25] ["Spleef-Minispiel.1:\n",{text:"Das Minispiel wurde nicht erstellt! Warte einen Moment um es zu erstellen!",color:"red",bold:true}]
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:400,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Radius:0.0f,Tags:["EtiSpleeMS.1Start"]}

# Zwei Punkte-Ziele werden erstellt.
scoreboard objectives add PZSpleeMS.1Wert dummy ["Spleef-Minispiel.1: ",{text:"Wert der Variablen",bold:true}]
scoreboard objectives add PZSpleeMS.1Verlassen minecraft.custom:minecraft.leave_game ["Spleef-Minispiel.1: ",{text:"Spiel verlassen",bold:true}]
scoreboard objectives add PZSpleeMS.1Abbauen minecraft.mined:minecraft.snow_block ["Spleef-Minispiel.1: ",{text:"Schneeblöcke abbauen",bold:true}]

scoreboard players set KonstSpleeMS.1FUENF PZSpleeMS.1Wert 5

scoreboard players set VarSpleeMS.1Spielen PZSpleeMS.1Wert 0
scoreboard players set VarSpleeMS.1Spieler PZSpleeMS.1Wert 0
scoreboard players set VarSpleeMS.1Wartende PZSpleeMS.1Wert 0
scoreboard players set VarSpleeMS.1Teilnehmer PZSpleeMS.1Wert 0

team add TMSpleeMS.1Lobby ["Spleef-Minispiel.1: ",{text:"Lobby",color:"yellow",bold:true}]
team modify TMSpleeMS.1Lobby color white
team modify TMSpleeMS.1Lobby friendlyFire false

bossbar add spleef-minispiel:v1lobby ["",{text:"Lobby - Spieler anwesend ",bold:true},{text:"0",color:"green",bold:true}]
bossbar set spleef-minispiel:v1lobby color white
bossbar set spleef-minispiel:v1lobby visible true
bossbar set spleef-minispiel:v1lobby max 10

team add TMSpleeMS.1Spiel ["Spleef-Minispiel.1: ",{text:"Spiel",color:"blue",bold:true}]
team modify TMSpleeMS.1Spiel color blue
team modify TMSpleeMS.1Spiel friendlyFire false

data modify storage spleef-minispiel:v1daten "EigSpleeMS.1Name" set value ["",{text:"[",color:"dark_gray"},{text:"Spleef-Minispiel",color:"gray",bold:true},{text:"]",color:"dark_gray"}," "]

summon minecraft:text_display ~ ~3 ~-10 {text:["",{text:"Lobby",color:"yellow",bold:true},"\n",{text:"0",color:"dark_purple",bold:true},{text:"/",bold:true},{text:"10",color:"dark_purple",bold:true}],billboard:"center",Tags:["EtiSpleeMS.1Alle","EtiSpleeMS.1Teleporter"]}
execute at @n[type=minecraft:text_display,tag=EtiSpleeMS.1Teleporter] run place template spleef-minispiel:v1teleporter ~-8 ~-3 ~-9 none

summon minecraft:marker ~ ~ ~-50 {Tags:["EtiSpleeMS.1Alle","EtiSpleeMS.1Spielfeld"]}
execute at @n[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld] run place template spleef-minispiel:v1gebiet ~ ~ ~ none
execute at @n[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld] run place template spleef-minispiel:v1gebiet ~ ~ ~ clockwise_90
execute at @n[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld] run place template spleef-minispiel:v1gebiet ~ ~ ~ 180
execute at @n[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld] run place template spleef-minispiel:v1gebiet ~ ~ ~ counterclockwise_90

execute at @n[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld] run summon minecraft:marker ~ ~5 ~ {Tags:["EtiSpleeMS.1Alle","EtiSpleeMS.1Ebene"]}

execute as @n[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld] store result score @s PZSpleeMS.1Wert run data get entity @s Pos[1]
execute as @n[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld] store result entity @s data."EigSpleeMS.1Argumente".Y int 1 run scoreboard players add @s PZSpleeMS.1Wert 10

execute at @n[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld] run summon minecraft:interaction ~ ~18.5 ~ {width:52,height:3,Tags:["EtiSpleeMS.1Alle","EtiSpleeMS.1Wartesaal"]}

execute at @n[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld] positioned ~-40 ~-1 ~-40 as @a[dx=80,dy=40,dz=80] at @s run function spleef-minispiel:v1verlassen

forceload add ~ ~

tellraw @a[distance=..25] ["Spleef-Minispiel.1:\n",{text:"Das Minispiel wurde erstellt und ist bereit!",bold:true}]
