
execute at @n[type=minecraft:text_display,tag=EtiTowDefMS.1Teleporter] run particle minecraft:portal ~ ~-3 ~ 0 1 0 0.7 35 force @a[distance=..15]

execute if score VarTowDefMS.1Teilnehmer PZTowDefMS.1Wert matches 10 at @n[type=minecraft:text_display,tag=EtiTowDefMS.1Teleporter] positioned ~ ~-3 ~ run title @a[distance=..3] actionbar ["",{text:"Lobby ist voll",color:"red",bold:true}]
execute if score VarTowDefMS.1Teilnehmer PZTowDefMS.1Wert matches ..9 at @n[type=minecraft:text_display,tag=EtiTowDefMS.1Teleporter] positioned ~ ~-3 ~ as @p[distance=..3,gamemode=!spectator] run function tower-defense-minispiel:v1beitreten

execute if score VarTowDefMS.1Wartende PZTowDefMS.1Wert matches 1.. as @n[type=minecraft:interaction,tag=EtiTowDefMS.1Wartesaal] store success score @s PZTowDefMS.1Wert if data entity @s interaction
execute if score VarTowDefMS.1Wartende PZTowDefMS.1Wert matches 1.. as @n[type=minecraft:interaction,tag=EtiTowDefMS.1Wartesaal,scores={PZTowDefMS.1Wert=1}] on target run tag @s[team=TMTowDefMS.1Lobby,nbt={SelectedItem:{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigTowDefMS.1Verlassen:true} } } }] add EtiTowDefMS.1Verlassen
execute if score VarTowDefMS.1Wartende PZTowDefMS.1Wert matches 1.. run data remove entity @n[type=minecraft:interaction,tag=EtiTowDefMS.1Wartesaal,scores={PZTowDefMS.1Wert=1}] interaction
tag @a[team=TMTowDefMS.1Lobby,tag=!EtiTowDefMS.1Verlassen,scores={PZTowDefMS.1Verlassen=1..}] add EtiTowDefMS.1Verlassen
tag @a[team=TMTowDefMS.1Lobby,tag=!EtiTowDefMS.1Verlassen,nbt=!{Inventory:[{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigTowDefMS.1Verlassen:true} } } ] }] add EtiTowDefMS.1Verlassen
execute as @a[tag=EtiTowDefMS.1Verlassen] at @s run function tower-defense-minispiel:v1verlassen

execute if score VarTowDefMS.1Spielende PZTowDefMS.1Wert matches 0 at @n[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld] run function tower-defense-minispiel:v1spielfeld
execute if score VarTowDefMS.1Spielende PZTowDefMS.1Wert matches 0 at @n[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld] as @a[distance=..100,tag=EtiTowDefMS.1Spielen,tag=!EtiTowDefMS.1Verloren] at @s run function tower-defense-minispiel:v1spielen

scoreboard players add #VarTowDefMS.1Tick PZTowDefMS.1Wert 1
execute if score #VarTowDefMS.1Tick PZTowDefMS.1Wert matches 1..19 run return 0
scoreboard players set #VarTowDefMS.1Tick PZTowDefMS.1Wert 0

scoreboard players set VarTowDefMS.1Spielende PZTowDefMS.1Wert 0
execute if score VarTowDefMS.1Befristet PZTowDefMS.1Wert matches ..599 run scoreboard players add VarTowDefMS.1Befristet PZTowDefMS.1Wert 1
execute if score VarTowDefMS.1Befristet PZTowDefMS.1Wert matches 600.. run scoreboard players set VarTowDefMS.1Spielende PZTowDefMS.1Wert 1

execute at @n[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld] as @a[distance=..100,team=!] unless entity @s[team=!TMTowDefMS.1Lobby,tag=!EtiTowDefMS.1Spielen] positioned ~-35 ~-1 ~-35 unless entity @s[dx=70,dy=50,dz=70] run function tower-defense-minispiel:v1verlassen

execute at @n[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld] as @a[distance=..100,team=!TMTowDefMS.1Lobby,tag=!EtiTowDefMS.1Spielen] positioned ~-35 ~-1 ~-35 if entity @s[dx=70,dy=50,dz=70] run function tower-defense-minispiel:v1verlassen

execute store result bossbar tower-defense-minispiel:v1lobby value store result score VarTowDefMS.1Wartende PZTowDefMS.1Wert if entity @a[team=TMTowDefMS.1Lobby]

item replace entity @a[tag=EtiTowDefMS.1Spielen,tag=!EtiTowDefMS.1Verloren] hotbar.3 with minecraft:piglin_spawn_egg[minecraft:entity_data={Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Erstellen","EtiTowDefMS.1Entfernen","EtiTowDefMS.1Turm","EtiTowDefMS.1Schiessturm"],id:"minecraft:marker"},minecraft:lore=["Dieser Turm verschießt","automatisch Pfeile","auf die Gegner!"],minecraft:can_place_on={blocks:"minecraft:deepslate_tiles"},minecraft:custom_name={text:"Schießturm",color:"yellow",bold:true},minecraft:custom_data={EigTowDefMS.1Alle:true}]

item replace entity @a[tag=EtiTowDefMS.1Spielen,tag=!EtiTowDefMS.1Verloren] hotbar.4 with minecraft:vex_spawn_egg[minecraft:entity_data={Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Erstellen","EtiTowDefMS.1Entfernen","EtiTowDefMS.1Turm","EtiTowDefMS.1Eisturm"],id:"minecraft:marker"},minecraft:lore=["Dieser Turm friert","die Gegner ein,","wenn man mit dem Bogen","auf den Eisblock schießt!"],minecraft:can_place_on={blocks:"minecraft:deepslate_tiles"},minecraft:custom_name={text:"Eisturm",color:"blue",bold:true},minecraft:custom_data={EigTowDefMS.1Alle:true}]

item replace entity @a[tag=EtiTowDefMS.1Spielen,tag=!EtiTowDefMS.1Verloren] hotbar.5 with minecraft:chicken_spawn_egg[minecraft:entity_data={Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Erstellen","EtiTowDefMS.1Entfernen","EtiTowDefMS.1Turm","EtiTowDefMS.1TNTTurm"],id:"minecraft:marker"},minecraft:lore=["Dieser Turm sprengt","die Gegner in die Luft,","wenn man mit dem Bogen","auf den Zielblock schießt!"],minecraft:can_place_on={blocks:"minecraft:deepslate_tiles"},minecraft:custom_name={text:"TNT-Turm",color:"red",bold:true},minecraft:custom_data={EigTowDefMS.1Alle:true}]

item replace entity @a[tag=EtiTowDefMS.1Spielen,tag=!EtiTowDefMS.1Verloren,team=TMTowDefMS.1Team1] hotbar.8 with minecraft:snowball[minecraft:lore=["Wirf mit dem Schneeball","die Spitze eines Turms ab,","um diesen aufzuwerten!","Ebenso kannst du mit dem","Werfen auf die Lebensanzeige","die Leben regenerieren!"],minecraft:custom_name={text:"Aufwerten",color:"gold",bold:true},minecraft:custom_data={EigTowDefMS.1Alle:true,EigTowDefMS.1Mannschaft:1}]

item replace entity @a[tag=EtiTowDefMS.1Spielen,tag=!EtiTowDefMS.1Verloren,team=TMTowDefMS.1Team2] hotbar.8 with minecraft:snowball[minecraft:lore=["Wirf mit dem Schneeball","die Spitze eines Turms ab,","um diesen aufzuwerten!","Ebenso kannst du mit dem","Werfen auf die Lebensanzeige","die Leben regenerieren!"],minecraft:custom_name={text:"Aufwerten",color:"gold",bold:true},minecraft:custom_data={EigTowDefMS.1Alle:true,EigTowDefMS.1Mannschaft:2}]

execute store result bossbar tower-defense-minispiel:v1team1 value run scoreboard players operation VarTowDefMS.1Team1 PZTowDefMS.1Wert = @n[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,scores={PZTowDefMS.1Wert=1}] PZTowDefMS.1Versuch

execute store result bossbar tower-defense-minispiel:v1team1gegner value store result score VarTowDefMS.1Team1Gegner PZTowDefMS.1Wert if entity @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Wert=1}]

execute store result bossbar tower-defense-minispiel:v1team2 value run scoreboard players operation VarTowDefMS.1Team2 PZTowDefMS.1Wert = @n[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,scores={PZTowDefMS.1Wert=2}] PZTowDefMS.1Versuch

execute store result bossbar tower-defense-minispiel:v1team2gegner value store result score VarTowDefMS.1Team2Gegner PZTowDefMS.1Wert if entity @e[tag=EtiTowDefMS.1Gegner,scores={PZTowDefMS.1Wert=2}]

bossbar set tower-defense-minispiel:v1team1 name ["",{text:"Leben deiner Gilde ",bold:true},{score:{name:"VarTowDefMS.1Team1",objective:"PZTowDefMS.1Wert"},color:"green",bold:true},{text:"/",bold:true},{text:"100",color:"green",bold:true}]

execute if score VarTowDefMS.1Welle PZTowDefMS.1Wert matches 1.. run bossbar set tower-defense-minispiel:v1team1gegner name ["",{text:"Anzahl Gegner ",color:"dark_purple",bold:true},{text:"(Welle ",color:"gray",bold:true},{score:{name:"VarTowDefMS.1Welle",objective:"PZTowDefMS.1Wert"},color:"gray",bold:true},{text:") ",color:"gray",bold:true},{score:{name:"VarTowDefMS.1Team1Gegner",objective:"PZTowDefMS.1Wert"},color:"red",bold:true},{text:"/",color:"gray",bold:true},{score:{name:"VarTowDefMS.1Team1Max",objective:"PZTowDefMS.1Wert"},color:"dark_purple",bold:true}]

bossbar set tower-defense-minispiel:v1team2 name ["",{text:"Leben deiner Gilde ",bold:true},{score:{name:"VarTowDefMS.1Team2",objective:"PZTowDefMS.1Wert"},color:"green",bold:true},{text:"/",bold:true},{text:"100",color:"green",bold:true}]

execute if score VarTowDefMS.1Welle PZTowDefMS.1Wert matches 1.. run bossbar set tower-defense-minispiel:v1team2gegner name ["",{text:"Anzahl Gegner ",color:"dark_purple",bold:true},{text:"(Welle ",color:"gray",bold:true},{score:{name:"VarTowDefMS.1Welle",objective:"PZTowDefMS.1Wert"},color:"gray",bold:true},{text:") ",color:"gray",bold:true},{score:{name:"VarTowDefMS.1Team2Gegner",objective:"PZTowDefMS.1Wert"},color:"red",bold:true},{text:"/",color:"gray",bold:true},{score:{name:"VarTowDefMS.1Team2Max",objective:"PZTowDefMS.1Wert"},color:"dark_purple",bold:true}]

scoreboard players set VarTowDefMS.1NaechsteWelle PZTowDefMS.1Wert 0
execute if score VarTowDefMS.1Team1Gegner PZTowDefMS.1Wert matches 0 if score VarTowDefMS.1Team2Gegner PZTowDefMS.1Wert matches 0 run scoreboard players set VarTowDefMS.1NaechsteWelle PZTowDefMS.1Wert 1

execute if score VarTowDefMS.1Spielen PZTowDefMS.1Wert matches 1 if score VarTowDefMS.1NaechsteWelle PZTowDefMS.1Wert matches 1 run function tower-defense-minispiel:v1welle

execute if score VarTowDefMS.1Team1 PZTowDefMS.1Wert matches 0 run scoreboard players set VarTowDefMS.1Spielende PZTowDefMS.1Wert 1
execute if score VarTowDefMS.1Team2 PZTowDefMS.1Wert matches 0 run scoreboard players set VarTowDefMS.1Spielende PZTowDefMS.1Wert 1

execute at @n[type=minecraft:interaction,tag=EtiTowDefMS.1Wartesaal] as @a[distance=..100,team=TMTowDefMS.1Lobby] run function tower-defense-minispiel:v1auswahl

title @a[team=TMTowDefMS.1Team1,tag=!EtiTowDefMS.1Verloren] actionbar ["",{text:"Punkte: ",color:"gold",bold:true},{score:{name:"VarTowDefMS.1Punkte1",objective:"PZTowDefMS.1Wert"},color:"green",bold:true}]
title @a[team=TMTowDefMS.1Team2,tag=!EtiTowDefMS.1Verloren] actionbar ["",{text:"Punkte: ",color:"gold",bold:true},{score:{name:"VarTowDefMS.1Punkte2",objective:"PZTowDefMS.1Wert"},color:"green",bold:true}]

execute store result score VarTowDefMS.1Teilnehmer PZTowDefMS.1Wert if entity @a[tag=EtiTowDefMS.1Teilnehmer]

data modify entity @n[distance=..15,type=minecraft:text_display,tag=EtiTowDefMS.1Teleporter] text set value ["",{text:"Lobby",color:"yellow",bold:true},"\n",{score:{name:"VarTowDefMS.1Teilnehmer",objective:"PZTowDefMS.1Wert"},color:"dark_purple",bold:true},{text:"/",bold:true},{text:"10",color:"dark_purple",bold:true}]

execute at @n[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld] as @e[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,sort=nearest,limit=2] run data modify entity @s text set value ["",{text:"Leben",color:"yellow",bold:true},"\n",{score:{name:"@s",objective:"PZTowDefMS.1Versuch"},color:"dark_purple",bold:true},{text:"/",bold:true},{text:"100",color:"dark_purple",bold:true}]

execute if score VarTowDefMS.1Wartende PZTowDefMS.1Wert matches 1.. as @n[type=minecraft:interaction,tag=EtiTowDefMS.1Wartesaal] at @s run function tower-defense-minispiel:v1warten

execute if score VarTowDefMS.1Zaehlen PZTowDefMS.1Wert matches 1 at @n[type=minecraft:interaction,tag=EtiTowDefMS.1Wartesaal] as @n[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld] run function tower-defense-minispiel:v1spielstart with entity @s data."EigTowDefMS.1Argumente"

execute if score VarTowDefMS.1Spielen PZTowDefMS.1Wert matches 1 if score VarTowDefMS.1Spielende PZTowDefMS.1Wert matches 1 at @n[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld] run function tower-defense-minispiel:v1spielende

execute as @e[tag=EtiTowDefMS.1Gegner] run scoreboard players operation @s PZTowDefMS.1Versuch = @s PZTowDefMS.1Leben
execute as @e[tag=EtiTowDefMS.1Gegner] store result score @s PZTowDefMS.1Leben run data get entity @s Health

execute as @e[tag=EtiTowDefMS.1Gegner] unless score @s PZTowDefMS.1Versuch = @s PZTowDefMS.1Leben at @s run function tower-defense-minispiel:v1leben

execute at @n[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld] as @e[distance=..100,type=minecraft:text_display,tag=EtiTowDefMS.1Leiste] on vehicle on passengers run tag @s[type=minecraft:text_display,tag=EtiTowDefMS.1Leiste] add EtiTowDefMS.1NichtAlleine
execute at @n[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld] run kill @e[distance=..100,type=minecraft:text_display,tag=EtiTowDefMS.1Leiste,tag=!EtiTowDefMS.1NichtAlleine]
execute at @n[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld] run tag @e[distance=..100,type=minecraft:text_display,tag=EtiTowDefMS.1Leiste,tag=EtiTowDefMS.1NichtAlleine] remove EtiTowDefMS.1NichtAlleine
