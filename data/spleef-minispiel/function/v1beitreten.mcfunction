
clear @s

effect clear @s

experience set @s 0

gamemode adventure @s

team join TMSpleeMS.1Lobby @s

effect give @s minecraft:saturation 10 3 true
effect give @s minecraft:resistance 10 3 true
effect give @s minecraft:regeneration 10 3 true
effect give @s minecraft:instant_health 10 3 true
effect give @s minecraft:night_vision infinite 1 true

scoreboard players set VarSpleeMS.1Beginnen PZSpleeMS.1Wert 16

execute store result score VarSpleeMS.1Wartende PZSpleeMS.1Wert if entity @a[team=TMSpleeMS.1Lobby]

tag @s add EtiSpleeMS.1Teilnehmer
execute store result score VarSpleeMS.1Teilnehmer PZSpleeMS.1Wert if entity @a[tag=EtiSpleeMS.1Teilnehmer]


bossbar set spleef-minispiel:v1lobby players @a[team=TMSpleeMS.1Lobby]
bossbar set spleef-minispiel:v1lobby name ["",{text:"Lobby - Spieler anwesend ",bold:true},{score:{name:"VarSpleeMS.1Wartende",objective:"PZSpleeMS.1Wert"},color:"green",bold:true}]

execute if entity @s[tag=!EtiSpleeMS.1Spielen] run tellraw @a[team=TMSpleeMS.1Lobby] ["Spleef-Minispiel.1:\n",{storage:"spleef-minispiel:v1daten",nbt:'"EigSpleeMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" hat die Lobby betreten ",color:"yellow",bold:true},{score:{name:"VarSpleeMS.1Wartende",objective:"PZSpleeMS.1Wert"},color:"dark_purple",bold:true},{text:"/",bold:true},{text:"10",color:"dark_purple",bold:true}]

give @s minecraft:red_bed[minecraft:lore=["Droppe das Bett mit Q","um die Lobby","zu verlassen"],minecraft:custom_name={text:"Lobby verlassen",color:"gray",bold:true},minecraft:custom_data={EigSpleeMS.1Alle:true,EigSpleeMS.1Verlassen:true}] 1

execute at @n[distance=..50,type=minecraft:interaction,tag=EtiSpleeMS.1Wartesaal] run teleport @s ~ ~ ~
execute at @s run particle minecraft:portal ~ ~ ~ 0 1 0 0.7 35 force @a[distance=..15,team=TMSpleeMS.1Lobby]
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..15,team=TMSpleeMS.1Lobby] ~ ~ ~ 10 1

tellraw @s[tag=!EtiSpleeMS.1Spielen] ["",{text:"⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞",color:"green",bold:true},"\n",{storage:"spleef-minispiel:v1daten",nbt:'"EigSpleeMS.1Name"',interpret:true},"\n",{text:"Schaufle die Blöcke ab, vermeide herunter zu fallen und überlebe länger als alle anderen!",color:"yellow",bold:true},"\n",{text:"⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞",color:"green",bold:true}]

tag @s[tag=EtiSpleeMS.1Verloren] remove EtiSpleeMS.1Verloren
tag @s[tag=EtiSpleeMS.1Spielen] remove EtiSpleeMS.1Spielen

execute if score VarSpleeMS.1Spielen PZSpleeMS.1Wert matches 0 run return 0

gamemode spectator @s

team leave @s

teleport @s @r[gamemode=!spectator,tag=EtiSpleeMS.1Spielen,tag=!EtiSpleeMS.1Verloren]

tag @s add EtiSpleeMS.1Spielen
tag @s add EtiSpleeMS.1Verloren
