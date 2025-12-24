
execute at @n[type=minecraft:text_display,tag=EtiPaintBMS.1Teleporter] run particle minecraft:portal ~ ~-3 ~ 0 1 0 0.7 35 force @a[distance=..15]

execute if score VarPaintBMS.1Teilnehmer PZPaintBMS.1Wert matches 10 at @n[type=minecraft:text_display,tag=EtiPaintBMS.1Teleporter] positioned ~ ~-3 ~ run title @a[distance=..3] actionbar ["",{text:"Lobby ist voll",color:"red",bold:true}]
execute if score VarPaintBMS.1Teilnehmer PZPaintBMS.1Wert matches ..9 at @n[type=minecraft:text_display,tag=EtiPaintBMS.1Teleporter] positioned ~ ~-3 ~ as @p[distance=..3,gamemode=!spectator] run function paintball-minispiel:v1beitreten

execute if score VarPaintBMS.1Wartende PZPaintBMS.1Wert matches 1.. as @n[type=minecraft:interaction,tag=EtiPaintBMS.1Wartesaal] store success score @s PZPaintBMS.1Wert if data entity @s interaction
execute if score VarPaintBMS.1Wartende PZPaintBMS.1Wert matches 1.. as @n[type=minecraft:interaction,tag=EtiPaintBMS.1Wartesaal,scores={PZPaintBMS.1Wert=1}] on target run tag @s[team=TMPaintBMS.1Lobby,nbt={SelectedItem:{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigPaintBMS.1Verlassen:true} } } }] add EtiPaintBMS.1Verlassen
execute if score VarPaintBMS.1Wartende PZPaintBMS.1Wert matches 1.. run data remove entity @n[type=minecraft:interaction,tag=EtiPaintBMS.1Wartesaal,scores={PZPaintBMS.1Wert=1}] interaction
tag @a[team=TMPaintBMS.1Lobby,tag=!EtiPaintBMS.1Verlassen,scores={PZPaintBMS.1Verlassen=1..}] add EtiPaintBMS.1Verlassen
tag @a[team=TMPaintBMS.1Lobby,tag=!EtiPaintBMS.1Verlassen,nbt=!{Inventory:[{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigPaintBMS.1Verlassen:true} } } ] }] add EtiPaintBMS.1Verlassen
execute as @a[tag=EtiPaintBMS.1Verlassen] at @s run function paintball-minispiel:v1verlassen

execute if score VarPaintBMS.1Spielende PZPaintBMS.1Wert matches 0 at @n[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld] run function paintball-minispiel:v1spielfeld
execute if score VarPaintBMS.1Spielende PZPaintBMS.1Wert matches 0 at @n[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld] as @a[distance=..100,tag=EtiPaintBMS.1Spielen,tag=!EtiPaintBMS.1Verloren] at @s run function paintball-minispiel:v1spielen

scoreboard players add #VarPaintBMS.1Tick PZPaintBMS.1Wert 1
execute if score #VarPaintBMS.1Tick PZPaintBMS.1Wert matches 1..19 run return 0
scoreboard players set #VarPaintBMS.1Tick PZPaintBMS.1Wert 0

execute if score VarPaintBMS.1Befristet PZPaintBMS.1Wert matches ..599 run scoreboard players add VarPaintBMS.1Befristet PZPaintBMS.1Wert 1
execute if score VarPaintBMS.1Befristet PZPaintBMS.1Wert matches 600.. run scoreboard players set VarPaintBMS.1Spielende PZPaintBMS.1Wert 1

execute at @e[type=minecraft:interaction,tag=EtiPaintBMS.1Startpunkt,sort=nearest,limit=2] at @e[type=minecraft:marker,tag=EtiPaintBMS.1Ecke] run particle minecraft:totem_of_undying ~ ~ ~ 0 5 0 0.1 10 force @a[distance=..15,tag=EtiPaintBMS.1Spielen]

execute at @n[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld] as @a[distance=..100,team=!] unless entity @s[team=!TMPaintBMS.1Lobby,tag=!EtiPaintBMS.1Spielen] positioned ~-30 ~-1 ~-30 unless entity @s[dx=60,dy=40,dz=60] run function paintball-minispiel:v1verlassen

execute at @n[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld] as @a[distance=..100,team=!TMPaintBMS.1Lobby,tag=!EtiPaintBMS.1Spielen] positioned ~-30 ~-1 ~-30 if entity @s[dx=60,dy=40,dz=60] run function paintball-minispiel:v1verlassen

execute store result bossbar paintball-minispiel:v1lobby value store result score VarPaintBMS.1Wartende PZPaintBMS.1Wert if entity @a[team=TMPaintBMS.1Lobby]

scoreboard players set VarPaintBMS.1Versuche PZPaintBMS.1Wert 0
execute store result bossbar paintball-minispiel:v1team1 value run scoreboard players operation VarPaintBMS.1Versuche PZPaintBMS.1Wert += @a[team=TMPaintBMS.1Team1,tag=!EtiPaintBMS.1Verloren] PZPaintBMS.1Versuch

execute store result bossbar paintball-minispiel:v1team1anzahl value store result score VarPaintBMS.1Team1 PZPaintBMS.1Wert if entity @a[team=TMPaintBMS.1Team1,tag=!EtiPaintBMS.1Verloren]

scoreboard players set VarPaintBMS.1Versuche PZPaintBMS.1Wert 0
execute store result bossbar paintball-minispiel:v1team2 value run scoreboard players operation VarPaintBMS.1Versuche PZPaintBMS.1Wert += @a[team=TMPaintBMS.1Team2,tag=!EtiPaintBMS.1Verloren] PZPaintBMS.1Versuch

execute store result bossbar paintball-minispiel:v1team2anzahl value store result score VarPaintBMS.1Team2 PZPaintBMS.1Wert if entity @a[team=TMPaintBMS.1Team2,tag=!EtiPaintBMS.1Verloren]

bossbar set paintball-minispiel:v1team1 name ["",{text:"Versuche deiner roten Gilde ",bold:true},{score:{name:"VarPaintBMS.1Team1",objective:"PZPaintBMS.1Wert"},color:"green",bold:true},{text:"/",bold:true},{score:{name:"VarPaintBMS.1Team1Max",objective:"PZPaintBMS.1Wert"},color:"green",bold:true}]

bossbar set paintball-minispiel:v1team1anzahl name ["",{text:"Anzahl Gegner (rote Gilde) ",bold:true},{score:{name:"VarPaintBMS.1Team1",objective:"PZPaintBMS.1Wert"},color:"green",bold:true},{text:"/",bold:true},{score:{name:"VarPaintBMS.1Team1Max",objective:"PZPaintBMS.1Wert"},color:"green",bold:true}]

bossbar set paintball-minispiel:v1team2 name ["",{text:"Versuche deiner blauen Gilde ",bold:true},{score:{name:"VarPaintBMS.1Team2",objective:"PZPaintBMS.1Wert"},color:"green",bold:true},{text:"/",bold:true},{score:{name:"VarPaintBMS.1Team2Max",objective:"PZPaintBMS.1Wert"},color:"green",bold:true}]

bossbar set paintball-minispiel:v1team2anzahl name ["",{text:"Anzahl Gegner (blaue Gilde) ",bold:true},{score:{name:"VarPaintBMS.1Team2",objective:"PZPaintBMS.1Wert"},color:"green",bold:true},{text:"/",bold:true},{score:{name:"VarPaintBMS.1Team2Max",objective:"PZPaintBMS.1Wert"},color:"green",bold:true}]

execute store result score VarPaintBMS.1Spielende PZPaintBMS.1Wert if score VarPaintBMS.1Team1 PZPaintBMS.1Wert matches 0
execute if score VarPaintBMS.1Team2 PZPaintBMS.1Wert matches 0 run scoreboard players set VarPaintBMS.1Spielende PZPaintBMS.1Wert 1

execute at @n[type=minecraft:interaction,tag=EtiPaintBMS.1Wartesaal] as @a[distance=..100,team=TMPaintBMS.1Lobby] run function paintball-minispiel:v1auswahl

execute store result score VarPaintBMS.1Teilnehmer PZPaintBMS.1Wert if entity @a[tag=EtiPaintBMS.1Teilnehmer]

data modify entity @n[distance=..15,type=minecraft:text_display,tag=EtiPaintBMS.1Teleporter] text set value ["",{text:"Lobby",color:"yellow",bold:true},"\n",{score:{name:"VarPaintBMS.1Teilnehmer",objective:"PZPaintBMS.1Wert"},color:"dark_purple",bold:true},{text:"/",bold:true},{text:"10",color:"dark_purple",bold:true}]

execute if score VarPaintBMS.1Wartende PZPaintBMS.1Wert matches 1.. as @n[type=minecraft:interaction,tag=EtiPaintBMS.1Wartesaal] at @s run function paintball-minispiel:v1warten

execute if score VarPaintBMS.1Zaehlen PZPaintBMS.1Wert matches 1 at @n[type=minecraft:interaction,tag=EtiPaintBMS.1Wartesaal] as @n[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld] run function paintball-minispiel:v1spielstart

execute if score VarPaintBMS.1Spielen PZPaintBMS.1Wert matches 1 if score VarPaintBMS.1Spielende PZPaintBMS.1Wert matches 1 at @n[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld] run function paintball-minispiel:v1spielende

execute at @n[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld] run kill @e[distance=..100,type=minecraft:item,nbt={Item:{id:"minecraft:snowball",components:{"minecraft:custom_data":{EigPaintBMS.1Alle:true} } } }]
