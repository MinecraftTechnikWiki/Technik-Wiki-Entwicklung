
clear @s

effect clear @s

experience set @s 0 points
experience set @s 0 levels

gamemode adventure @s

team join TMTNTRMS.1Lobby @s

effect give @s minecraft:saturation 10 3 true
effect give @s minecraft:regeneration 10 3 true
effect give @s minecraft:instant_health 10 3 true
effect give @s minecraft:resistance infinite 3 true
effect give @s minecraft:night_vision infinite 1 true
effect give @s minecraft:fire_resistance infinite 3 true

scoreboard players set VarTNTRMS.1Beginnen PZTNTRMS.1Wert 16

execute store result score VarTNTRMS.1Wartende PZTNTRMS.1Wert if entity @a[team=TMTNTRMS.1Lobby]

tag @s add EtiTNTRMS.1Teilnehmer
execute store result score VarTNTRMS.1Teilnehmer PZTNTRMS.1Wert if entity @a[tag=EtiTNTRMS.1Teilnehmer]

bossbar set tnt-run-minispiel:v1lobby players @a[team=TMTNTRMS.1Lobby]
bossbar set tnt-run-minispiel:v1lobby name ["",{text:"Lobby - Spieler anwesend ",bold:true},{score:{name:"VarTNTRMS.1Wartende",objective:"PZTNTRMS.1Wert"},color:"green",bold:true}]

execute if entity @s[tag=!EtiTNTRMS.1Spielen] run tellraw @a[team=TMTNTRMS.1Lobby] ["TNT-Run-Minispiel.1:\n",{storage:"tnt-run-minispiel:v1daten",nbt:'"EigTNTRMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" hat die Lobby betreten ",color:"yellow",bold:true},{score:{name:"VarTNTRMS.1Wartende",objective:"PZTNTRMS.1Wert"},color:"dark_purple",bold:true},{text:"/",bold:true},{text:"10",color:"dark_purple",bold:true}]

give @s minecraft:red_bed[minecraft:lore=["Droppe das Bett mit Q","um die Lobby","zu verlassen"],minecraft:custom_name={text:"Lobby verlassen",color:"gray",bold:true},minecraft:custom_data={EigTNTRMS.1Alle:true,EigTNTRMS.1Verlassen:true}] 1

execute at @n[distance=..100,type=minecraft:interaction,tag=EtiTNTRMS.1Wartesaal] run teleport @s ~ ~ ~-6
execute at @s run particle minecraft:portal ~ ~ ~ 0 1 0 0.7 35 force @a[distance=..15,team=TMTNTRMS.1Lobby]
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..15,team=TMTNTRMS.1Lobby] ~ ~ ~ 10 1

tellraw @s[tag=!EtiTNTRMS.1Spielen] ["",{text:"⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞",color:"green",bold:true},"\n",{storage:"tnt-run-minispiel:v1daten",nbt:'"EigTNTRMS.1Name"',interpret:true},"\n",{text:"Vermeide herunter zu fallen und überlebe länger als alle anderen!",color:"yellow",bold:true},"\n",{text:"⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞",color:"green",bold:true}]

tag @s[tag=EtiTNTRMS.1Verloren] remove EtiTNTRMS.1Verloren
tag @s[tag=EtiTNTRMS.1Spielen] remove EtiTNTRMS.1Spielen

execute if score VarTNTRMS.1Spielen PZTNTRMS.1Wert matches 0 run return 0

gamemode spectator @s

team join TMTNTRMS.1Spielen @s

teleport @s @r[gamemode=!spectator,tag=EtiTNTRMS.1Spielen,tag=!EtiTNTRMS.1Verloren]

tag @s add EtiTNTRMS.1Spielen
tag @s add EtiTNTRMS.1Verloren
