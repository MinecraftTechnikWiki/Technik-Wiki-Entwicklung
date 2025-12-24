
clear @s

effect clear @s

experience set @s 0 points
experience set @s 0 levels

gamemode adventure @s

team join TMPaintBMS.1Lobby @s

effect give @s minecraft:saturation 10 3 true
effect give @s minecraft:resistance 10 3 true
effect give @s minecraft:regeneration 10 3 true
effect give @s minecraft:instant_health 10 3 true
effect give @s minecraft:night_vision infinite 1 true

scoreboard players set VarPaintBMS.1Beginnen PZPaintBMS.1Wert 16

execute store result score VarPaintBMS.1Wartende PZPaintBMS.1Wert if entity @a[team=TMPaintBMS.1Lobby]

tag @s add EtiPaintBMS.1Teilnehmer
execute store result score VarPaintBMS.1Teilnehmer PZPaintBMS.1Wert if entity @a[tag=EtiPaintBMS.1Teilnehmer]

bossbar set paintball-minispiel:v1lobby players @a[team=TMPaintBMS.1Lobby]
bossbar set paintball-minispiel:v1lobby name ["",{text:"Lobby - Spieler anwesend ",bold:true},{score:{name:"VarPaintBMS.1Wartende",objective:"PZPaintBMS.1Wert"},color:"green",bold:true}]

execute if entity @s[tag=!EtiPaintBMS.1Spielen] run tellraw @a[team=TMPaintBMS.1Lobby] ["Paintball-Minispiel.1:\n",{storage:"paintball-minispiel:v1daten",nbt:'"EigPaintBMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" hat die Lobby betreten ",color:"yellow",bold:true},{score:{name:"VarPaintBMS.1Wartende",objective:"PZPaintBMS.1Wert"},color:"dark_purple",bold:true},{text:"/",bold:true},{text:"10",color:"dark_purple",bold:true}]

give @s minecraft:red_bed[minecraft:lore=["Droppe das Bett mit Q","um die Lobby","zu verlassen"],minecraft:custom_name={text:"Lobby verlassen",color:"gray",bold:true},minecraft:custom_data={EigPaintBMS.1Alle:true,EigPaintBMS.1Verlassen:true}] 1

execute at @n[distance=..60,type=minecraft:interaction,tag=EtiPaintBMS.1Wartesaal] run teleport @s ~ ~ ~
execute at @s run particle minecraft:portal ~ ~ ~ 0 1 0 0.7 35 force @a[distance=..15,team=TMPaintBMS.1Lobby]
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..15,team=TMPaintBMS.1Lobby] ~ ~ ~ 10 1

tellraw @s[tag=!EtiPaintBMS.1Spielen] ["",{text:"⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞",color:"green",bold:true},"\n",{storage:"paintball-minispiel:v1daten",nbt:'"EigPaintBMS.1Name"',interpret:true},"\n",{text:"Wirf die gegnerischen Spieler mit Schneebällen ab und überlebe mit deiner Mannschaft!",color:"yellow",bold:true},"\n",{text:"⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞",color:"green",bold:true}]

tag @s[tag=EtiPaintBMS.1Verloren] remove EtiPaintBMS.1Verloren
tag @s[tag=EtiPaintBMS.1Spielen] remove EtiPaintBMS.1Spielen

execute if score VarPaintBMS.1Spielen PZPaintBMS.1Wert matches 0 run return 0

gamemode spectator @s

team leave @s

teleport @s @r[gamemode=!spectator,tag=EtiPaintBMS.1Spielen,tag=!EtiPaintBMS.1Verloren]

tag @s add EtiPaintBMS.1Spielen
tag @s add EtiPaintBMS.1Verloren
