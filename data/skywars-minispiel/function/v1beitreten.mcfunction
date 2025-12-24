
clear @s

effect clear @s

experience set @s 0 points
experience set @s 0 levels

gamemode adventure @s

team join TMSkyWaMS.1Lobby @s

effect give @s minecraft:saturation 10 3 true
effect give @s minecraft:regeneration 10 3 true
effect give @s minecraft:instant_health 10 3 true
effect give @s minecraft:resistance infinite 3 true
effect give @s minecraft:night_vision infinite 1 true
effect give @s minecraft:fire_resistance infinite 3 true

scoreboard players set VarSkyWaMS.1Beginnen PZSkyWaMS.1Wert 16

execute store result score VarSkyWaMS.1Wartende PZSkyWaMS.1Wert if entity @a[team=TMSkyWaMS.1Lobby]

tag @s add EtiSkyWaMS.1Teilnehmer
execute store result score VarSkyWaMS.1Teilnehmer PZSkyWaMS.1Wert if entity @a[tag=EtiSkyWaMS.1Teilnehmer]

bossbar set skywars-minispiel:v1lobby players @a[team=TMSkyWaMS.1Lobby]
bossbar set skywars-minispiel:v1lobby name ["",{text:"Lobby - Spieler anwesend ",bold:true},{score:{name:"VarSkyWaMS.1Wartende",objective:"PZSkyWaMS.1Wert"},color:"green",bold:true}]

execute if entity @s[tag=!EtiSkyWaMS.1Spielen] run tellraw @a[team=TMSkyWaMS.1Lobby] ["Skywars-Minispiel.1:\n",{storage:"skywars-minispiel:v1daten",nbt:'"EigSkyWaMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" hat die Lobby betreten ",color:"yellow",bold:true},{score:{name:"VarSkyWaMS.1Wartende",objective:"PZSkyWaMS.1Wert"},color:"dark_purple",bold:true},{text:"/",bold:true},{text:"10",color:"dark_purple",bold:true}]

give @s minecraft:red_bed[minecraft:lore=["Droppe das Bett mit Q","um die Lobby","zu verlassen"],minecraft:custom_name={text:"Lobby verlassen",color:"gray",bold:true},minecraft:custom_data={EigSkyWaMS.1Alle:true,EigSkyWaMS.1Verlassen:true}] 1

execute at @n[distance=..250,type=minecraft:interaction,tag=EtiSkyWaMS.1Wartesaal] run teleport @s ~ ~ ~
execute at @s run particle minecraft:portal ~ ~ ~ 0 1 0 0.7 35 force @a[distance=..15,team=TMSkyWaMS.1Lobby]
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..15,team=TMSkyWaMS.1Lobby] ~ ~ ~ 10 1

tellraw @s[tag=!EtiSkyWaMS.1Spielen] ["",{text:"⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞",color:"green",bold:true},"\n",{storage:"skywars-minispiel:v1daten",nbt:'"EigSkyWaMS.1Name"',interpret:true},"\n",{text:"Sammle Werkzeuge, Waffen und Blöcke aus den truhen! Bekämpfe die anderen Spieler und überlebe als einziger die Schlacht",color:"yellow",bold:true},"\n",{text:"⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞",color:"green",bold:true}]

tag @s[tag=EtiSkyWaMS.1Verloren] remove EtiSkyWaMS.1Verloren
tag @s[tag=EtiSkyWaMS.1Spielen] remove EtiSkyWaMS.1Spielen

execute if score VarSkyWaMS.1Spielen PZSkyWaMS.1Wert matches 0 run return 0

gamemode spectator @s

team join TMSkyWaMS.1Spielen @s

teleport @s @r[gamemode=!spectator,tag=EtiSkyWaMS.1Spielen,tag=!EtiSkyWaMS.1Verloren]

tag @s add EtiSkyWaMS.1Spielen
tag @s add EtiSkyWaMS.1Verloren
