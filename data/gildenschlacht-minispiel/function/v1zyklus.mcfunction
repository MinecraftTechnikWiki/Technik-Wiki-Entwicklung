
execute at @n[type=minecraft:text_display,tag=EtiGildSMS.1Teleporter] run particle minecraft:portal ~ ~-3 ~ 0 1 0 0.7 35 force @a[distance=..15]

execute if score VarGildSMS.1Teilnehmer PZGildSMS.1Wert matches 10 at @n[type=minecraft:text_display,tag=EtiGildSMS.1Teleporter] positioned ~ ~-3 ~ run title @a[distance=..3] actionbar ["",{text:"Lobby ist voll",color:"red",bold:true}]
execute if score VarGildSMS.1Teilnehmer PZGildSMS.1Wert matches ..9 at @n[type=minecraft:text_display,tag=EtiGildSMS.1Teleporter] positioned ~ ~-3 ~ as @p[distance=..3,gamemode=!spectator] run function gildenschlacht-minispiel:v1beitreten

execute if score VarGildSMS.1Wartende PZGildSMS.1Wert matches 1.. as @n[type=minecraft:interaction,tag=EtiGildSMS.1Wartesaal] store success score @s PZGildSMS.1Wert if data entity @s interaction
execute if score VarGildSMS.1Wartende PZGildSMS.1Wert matches 1.. as @n[type=minecraft:interaction,tag=EtiGildSMS.1Wartesaal,scores={PZGildSMS.1Wert=1}] on target run tag @s[team=TMGildSMS.1Lobby,nbt={SelectedItem:{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigGildSMS.1Verlassen:true} } } }] add EtiGildSMS.1Verlassen
execute if score VarGildSMS.1Wartende PZGildSMS.1Wert matches 1.. run data remove entity @n[type=minecraft:interaction,tag=EtiGildSMS.1Wartesaal,scores={PZGildSMS.1Wert=1}] interaction
tag @a[team=TMGildSMS.1Lobby,tag=!EtiGildSMS.1Verlassen,scores={PZGildSMS.1Verlassen=1..}] add EtiGildSMS.1Verlassen
tag @a[team=TMGildSMS.1Lobby,tag=!EtiGildSMS.1Verlassen,nbt=!{Inventory:[{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigGildSMS.1Verlassen:true} } } ] }] add EtiGildSMS.1Verlassen
execute as @a[tag=EtiGildSMS.1Verlassen] at @s run function gildenschlacht-minispiel:v1verlassen

execute if score VarGildSMS.1Spielende PZGildSMS.1Wert matches 0 at @n[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] as @a[distance=..100,tag=EtiGildSMS.1Spielen,tag=!EtiGildSMS.1Verloren] at @s run function gildenschlacht-minispiel:v1spielen

scoreboard players add #VarGildSMS.1Tick PZGildSMS.1Wert 1
execute if score #VarGildSMS.1Tick PZGildSMS.1Wert matches 1..19 run return 0
scoreboard players set #VarGildSMS.1Tick PZGildSMS.1Wert 0

execute if score VarGildSMS.1Befristet PZGildSMS.1Wert matches ..599 run scoreboard players add VarGildSMS.1Befristet PZGildSMS.1Wert 1
execute if score VarGildSMS.1Befristet PZGildSMS.1Wert matches 600.. run scoreboard players set VarGildSMS.1Spielende PZGildSMS.1Wert 1

execute at @n[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] as @a[distance=100..,tag=EtiGildSMS.1Spielen,scores={PZGildSMS.1Sterben=1..}] run function gildenschlacht-minispiel:v1verloren

execute at @n[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] as @a[distance=..100,team=!] unless entity @s[team=!TMGildSMS.1Lobby,tag=!EtiGildSMS.1Spielen] positioned ~-25 ~-1 ~-25 unless entity @s[dx=50,dy=40,dz=50] run function gildenschlacht-minispiel:v1verlassen

execute at @n[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] as @a[distance=..100,team=!TMGildSMS.1Lobby,tag=!EtiGildSMS.1Spielen] positioned ~-25 ~-1 ~-25 if entity @s[dx=50,dy=40,dz=50] run function gildenschlacht-minispiel:v1verlassen

execute store result bossbar gildenschlacht-minispiel:v1lobby value store result score VarGildSMS.1Wartende PZGildSMS.1Wert if entity @a[team=TMGildSMS.1Lobby]

execute as @a[tag=EtiGildSMS.1Spielen,tag=!EtiGildSMS.1Verloren] store result score @s PZGildSMS.1Wert run data get entity @s Health

scoreboard players set VarGildSMS.1Leben PZGildSMS.1Wert 0
execute store result bossbar gildenschlacht-minispiel:v1team1 value run scoreboard players operation VarGildSMS.1Leben PZGildSMS.1Wert += @a[team=TMGildSMS.1Team1,tag=!EtiGildSMS.1Verloren] PZGildSMS.1Wert

execute store result bossbar gildenschlacht-minispiel:v1team1anzahl value store result score VarGildSMS.1Team1 PZGildSMS.1Wert if entity @a[team=TMGildSMS.1Team1,tag=!EtiGildSMS.1Verloren]

scoreboard players set VarGildSMS.1Leben PZGildSMS.1Wert 0
execute store result bossbar gildenschlacht-minispiel:v1team2 value run scoreboard players operation VarGildSMS.1Leben PZGildSMS.1Wert += @a[team=TMGildSMS.1Team2,tag=!EtiGildSMS.1Verloren] PZGildSMS.1Wert

execute store result bossbar gildenschlacht-minispiel:v1team2anzahl value store result score VarGildSMS.1Team2 PZGildSMS.1Wert if entity @a[team=TMGildSMS.1Team2,tag=!EtiGildSMS.1Verloren]

bossbar set gildenschlacht-minispiel:v1team1 name ["",{text:"Leben deiner roten Gilde ",bold:true},{score:{name:"VarGildSMS.1Team1",objective:"PZGildSMS.1Wert"},color:"green",bold:true},{text:"/",bold:true},{score:{name:"VarGildSMS.1Team1Max",objective:"PZGildSMS.1Wert"},color:"green",bold:true}]

bossbar set gildenschlacht-minispiel:v1team1anzahl name ["",{text:"Anzahl Gegner (rote Gilde) ",bold:true},{score:{name:"VarGildSMS.1Team1",objective:"PZGildSMS.1Wert"},color:"green",bold:true},{text:"/",bold:true},{score:{name:"VarGildSMS.1Team1Max",objective:"PZGildSMS.1Wert"},color:"green",bold:true}]

bossbar set gildenschlacht-minispiel:v1team2 name ["",{text:"Leben deiner blauen Gilde ",bold:true},{score:{name:"VarGildSMS.1Team2",objective:"PZGildSMS.1Wert"},color:"green",bold:true},{text:"/",bold:true},{score:{name:"VarGildSMS.1Team2Max",objective:"PZGildSMS.1Wert"},color:"green",bold:true}]

bossbar set gildenschlacht-minispiel:v1team2anzahl name ["",{text:"Anzahl Gegner (blaue Gilde) ",bold:true},{score:{name:"VarGildSMS.1Team2",objective:"PZGildSMS.1Wert"},color:"green",bold:true},{text:"/",bold:true},{score:{name:"VarGildSMS.1Team2Max",objective:"PZGildSMS.1Wert"},color:"green",bold:true}]

execute store result score VarGildSMS.1Spielende PZGildSMS.1Wert if score VarGildSMS.1Team1 PZGildSMS.1Wert matches 0
execute if score VarGildSMS.1Team2 PZGildSMS.1Wert matches 0 run scoreboard players set VarGildSMS.1Spielende PZGildSMS.1Wert 1

execute store result score VarGildSMS.1Teilnehmer PZGildSMS.1Wert if entity @a[tag=EtiGildSMS.1Teilnehmer]

data modify entity @n[distance=..15,type=minecraft:text_display,tag=EtiGildSMS.1Teleporter] text set value ["",{text:"Lobby",color:"yellow",bold:true},"\n",{score:{name:"VarGildSMS.1Teilnehmer",objective:"PZGildSMS.1Wert"},color:"dark_purple",bold:true},{text:"/",bold:true},{text:"10",color:"dark_purple",bold:true}]

execute if score VarGildSMS.1Wartende PZGildSMS.1Wert matches 1.. as @n[type=minecraft:interaction,tag=EtiGildSMS.1Wartesaal] at @s run function gildenschlacht-minispiel:v1warten

execute if score VarGildSMS.1Zaehlen PZGildSMS.1Wert matches 1 at @n[type=minecraft:interaction,tag=EtiGildSMS.1Wartesaal] as @n[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] run function gildenschlacht-minispiel:v1spielstart with entity @s data."EigGildSMS.1Argumente"

execute if score VarGildSMS.1Spielen PZGildSMS.1Wert matches 1 if score VarGildSMS.1Spielende PZGildSMS.1Wert matches 1 at @n[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] run function gildenschlacht-minispiel:v1spielende
