
clear @s

effect clear @s

experience set @s 0 points
experience set @s 0 levels

gamemode adventure @s

team join TMGildSMS.1Lobby @s

spawnpoint @s ~ ~ ~10 180 ~

effect give @s minecraft:saturation 10 3 true
effect give @s minecraft:resistance 10 3 true
effect give @s minecraft:regeneration 10 3 true
effect give @s minecraft:instant_health 10 3 true
effect give @s minecraft:night_vision infinite 1 true

scoreboard players set @s PZGildSMS.1Sterben 0

attribute @s minecraft:max_health base reset

scoreboard players set VarGildSMS.1Beginnen PZGildSMS.1Wert 16

execute store result score VarGildSMS.1Wartende PZGildSMS.1Wert if entity @a[team=TMGildSMS.1Lobby]

tag @s add EtiGildSMS.1Teilnehmer
execute store result score VarGildSMS.1Teilnehmer PZGildSMS.1Wert if entity @a[tag=EtiGildSMS.1Teilnehmer]

bossbar set gildenschlacht-minispiel:v1lobby players @a[team=TMGildSMS.1Lobby]
bossbar set gildenschlacht-minispiel:v1lobby name ["",{text:"Lobby - Spieler anwesend ",bold:true},{score:{name:"VarGildSMS.1Wartende",objective:"PZGildSMS.1Wert"},color:"green",bold:true}]

execute if entity @s[tag=!EtiGildSMS.1Spielen] run tellraw @a[team=TMGildSMS.1Lobby] ["Gildenschlacht-Minispiel.1:\n",{storage:"gildenschlacht-minispiel:v1daten",nbt:'"EigGildSMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" hat die Lobby betreten ",color:"yellow",bold:true},{score:{name:"VarGildSMS.1Wartende",objective:"PZGildSMS.1Wert"},color:"dark_purple",bold:true},{text:"/",bold:true},{text:"10",color:"dark_purple",bold:true}]

give @s minecraft:red_bed[minecraft:lore=["Droppe das Bett mit Q","um die Lobby","zu verlassen"],minecraft:custom_name={text:"Lobby verlassen",color:"gray",bold:true},minecraft:custom_data={EigGildSMS.1Alle:true,EigGildSMS.1Verlassen:true}] 1

execute at @n[distance=..50,type=minecraft:interaction,tag=EtiGildSMS.1Wartesaal] run teleport @s ~ ~ ~
execute at @s run particle minecraft:portal ~ ~ ~ 0 1 0 0.7 35 force @a[distance=..15,team=TMGildSMS.1Lobby]
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..15,team=TMGildSMS.1Lobby] ~ ~ ~ 10 1

tellraw @s[tag=!EtiGildSMS.1Spielen] ["",{text:"⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞",color:"green",bold:true},"\n",{storage:"gildenschlacht-minispiel:v1daten",nbt:'"EigGildSMS.1Name"',interpret:true},"\n",{text:"Ausgerüstet mit Waffen und Rüstungen bekämpfst du die gegnerische Gilde. Die Gilde die überlebt, gewinnt!",color:"yellow",bold:true},"\n",{text:"⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞",color:"green",bold:true}]

tag @s[tag=EtiGildSMS.1Verloren] remove EtiGildSMS.1Verloren
tag @s[tag=EtiGildSMS.1Spielen] remove EtiGildSMS.1Spielen

execute if score VarGildSMS.1Spielen PZGildSMS.1Wert matches 0 run return 0

gamemode spectator @s

team leave @s

teleport @s @r[gamemode=!spectator,tag=EtiGildSMS.1Spielen,tag=!EtiGildSMS.1Verloren]

tag @s add EtiGildSMS.1Spielen
tag @s add EtiGildSMS.1Verloren
