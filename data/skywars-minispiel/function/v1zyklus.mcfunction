
execute at @n[type=minecraft:text_display,tag=EtiSkyWaMS.1Teleporter] run particle minecraft:portal ~ ~-3 ~ 0 1 0 0.7 35 force @a[distance=..15]

execute if score VarSkyWaMS.1Teilnehmer PZSkyWaMS.1Wert matches 10 at @n[type=minecraft:text_display,tag=EtiSkyWaMS.1Teleporter] positioned ~ ~-3 ~ run title @a[distance=..3] actionbar ["",{text:"Lobby ist voll",color:"red",bold:true}]
execute if score VarSkyWaMS.1Teilnehmer PZSkyWaMS.1Wert matches ..9 at @n[type=minecraft:text_display,tag=EtiSkyWaMS.1Teleporter] positioned ~ ~-3 ~ as @p[distance=..3,gamemode=!spectator] run function skywars-minispiel:v1beitreten

execute if score VarSkyWaMS.1Wartende PZSkyWaMS.1Wert matches 1.. as @n[type=minecraft:interaction,tag=EtiSkyWaMS.1Wartesaal] store success score @s PZSkyWaMS.1Wert if data entity @s interaction
execute if score VarSkyWaMS.1Wartende PZSkyWaMS.1Wert matches 1.. as @n[type=minecraft:interaction,tag=EtiSkyWaMS.1Wartesaal,scores={PZSkyWaMS.1Wert=1}] on target run tag @s[team=TMSkyWaMS.1Lobby,nbt={SelectedItem:{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigSkyWaMS.1Verlassen:true} } } }] add EtiSkyWaMS.1Verlassen
execute if score VarSkyWaMS.1Wartende PZSkyWaMS.1Wert matches 1.. run data remove entity @n[type=minecraft:interaction,tag=EtiSkyWaMS.1Wartesaal,scores={PZSkyWaMS.1Wert=1}] interaction
tag @a[team=TMSkyWaMS.1Lobby,tag=!EtiSkyWaMS.1Verlassen,scores={PZSkyWaMS.1Verlassen=1..}] add EtiSkyWaMS.1Verlassen
tag @a[team=TMSkyWaMS.1Lobby,tag=!EtiSkyWaMS.1Verlassen,nbt=!{Inventory:[{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigSkyWaMS.1Verlassen:true} } } ] }] add EtiSkyWaMS.1Verlassen
execute as @a[tag=EtiSkyWaMS.1Verlassen] at @s run function skywars-minispiel:v1verlassen

execute at @n[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld] positioned ~-150 ~-1 ~-150 as @a[dx=300,dy=3,dz=300] at @s run effect give @s levitation 4 0 true

execute if score VarSkyWaMS.1Spielende PZSkyWaMS.1Wert matches 0 at @n[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld] run function skywars-minispiel:v1spielfeld

execute if score VarSkyWaMS.1Spielende PZSkyWaMS.1Wert matches 0 if score VarSkyWaMS.1Verzoegern PZSkyWaMS.1Wert matches -5.. at @n[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld] as @a[distance=..100,tag=EtiSkyWaMS.1Spielen,tag=!EtiSkyWaMS.1Verloren] at @s run function skywars-minispiel:v1spielen

scoreboard players add #VarSkyWaMS.1Tick PZSkyWaMS.1Wert 1
execute if score #VarSkyWaMS.1Tick PZSkyWaMS.1Wert matches 1..19 run return 0
scoreboard players set #VarSkyWaMS.1Tick PZSkyWaMS.1Wert 0

execute if score VarSkyWaMS.1Befristet PZSkyWaMS.1Wert matches ..599 run scoreboard players add VarSkyWaMS.1Befristet PZSkyWaMS.1Wert 1
execute if score VarSkyWaMS.1Befristet PZSkyWaMS.1Wert matches 600.. run scoreboard players set VarSkyWaMS.1Spielende PZSkyWaMS.1Wert 1
execute if score VarSkyWaMS.1Spieler PZSkyWaMS.1Wert matches ..1 run scoreboard players set VarSkyWaMS.1Spielende PZSkyWaMS.1Wert 1

execute at @n[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld] as @a[distance=..100,team=!] unless entity @s[team=!TMSkyWaMS.1Lobby,tag=!EtiSkyWaMS.1Spielen] positioned ~-150 ~-1 ~-150 unless entity @s[dx=300,dy=60,dz=300] run function skywars-minispiel:v1verlassen

execute at @n[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld] as @a[distance=..100,team=!TMSkyWaMS.1Lobby,tag=!EtiSkyWaMS.1Spielen] positioned ~-150 ~-1 ~-150 if entity @s[dx=300,dy=60,dz=300] run function skywars-minispiel:v1verlassen

execute store result bossbar skywars-minispiel:v1lobby value store result score VarSkyWaMS.1Wartende PZSkyWaMS.1Wert if entity @a[team=TMSkyWaMS.1Lobby]

execute store result score VarSkyWaMS.1Spieler PZSkyWaMS.1Wert if entity @a[tag=EtiSkyWaMS.1Spielen,tag=!EtiSkyWaMS.1Verloren]

execute store result score VarSkyWaMS.1Teilnehmer PZSkyWaMS.1Wert if entity @a[tag=EtiSkyWaMS.1Teilnehmer]

data modify entity @n[distance=..15,type=minecraft:text_display,tag=EtiSkyWaMS.1Teleporter] text set value ["",{text:"Lobby",color:"yellow",bold:true},"\n",{score:{name:"VarSkyWaMS.1Teilnehmer",objective:"PZSkyWaMS.1Wert"},color:"dark_purple",bold:true},{text:"/",bold:true},{text:"10",color:"dark_purple",bold:true}]

execute if score VarSkyWaMS.1Wartende PZSkyWaMS.1Wert matches 1.. as @n[type=minecraft:interaction,tag=EtiSkyWaMS.1Wartesaal] at @s run function skywars-minispiel:v1warten

execute if score VarSkyWaMS.1Zaehlen PZSkyWaMS.1Wert matches 1 at @n[type=minecraft:interaction,tag=EtiSkyWaMS.1Wartesaal] as @n[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld] run function skywars-minispiel:v1spielstart with entity @s data."EigSkyWaMS.1Argumente"

execute if score VarSkyWaMS.1Spielen PZSkyWaMS.1Wert matches 1 if score VarSkyWaMS.1Spielende PZSkyWaMS.1Wert matches 1 at @n[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld] run function skywars-minispiel:v1spielende

