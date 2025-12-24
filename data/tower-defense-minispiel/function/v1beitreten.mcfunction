
clear @s

effect clear @s

experience set @s 0 points
experience set @s 0 levels

gamemode adventure @s

team join TMTowDefMS.1Lobby @s

effect give @s minecraft:saturation 10 3 true
effect give @s minecraft:resistance 10 3 true
effect give @s minecraft:regeneration 10 3 true
effect give @s minecraft:instant_health 10 3 true
effect give @s minecraft:night_vision infinite 1 true

scoreboard players set VarTowDefMS.1Beginnen PZTowDefMS.1Wert 16

execute store result score VarTowDefMS.1Wartende PZTowDefMS.1Wert if entity @a[team=TMTowDefMS.1Lobby]

tag @s add EtiTowDefMS.1Teilnehmer
execute store result score VarTowDefMS.1Teilnehmer PZTowDefMS.1Wert if entity @a[tag=EtiTowDefMS.1Teilnehmer]

bossbar set tower-defense-minispiel:v1lobby players @a[team=TMTowDefMS.1Lobby]
bossbar set tower-defense-minispiel:v1lobby name ["",{text:"Lobby - Spieler anwesend ",bold:true},{score:{name:"VarTowDefMS.1Wartende",objective:"PZTowDefMS.1Wert"},color:"green",bold:true}]

execute if entity @s[tag=!EtiTowDefMS.1Spielen] run tellraw @a[team=TMTowDefMS.1Lobby] ["Tower-Defense-Minispiel.1:\n",{storage:"tower-defense-minispiel:v1daten",nbt:'"EigTowDefMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" hat die Lobby betreten ",color:"yellow",bold:true},{score:{name:"VarTowDefMS.1Wartende",objective:"PZTowDefMS.1Wert"},color:"dark_purple",bold:true},{text:"/",bold:true},{text:"10",color:"dark_purple",bold:true}]

give @s minecraft:red_bed[minecraft:lore=["Droppe das Bett mit Q","um die Lobby","zu verlassen"],minecraft:custom_name={text:"Lobby verlassen",color:"gray",bold:true},minecraft:custom_data={EigTowDefMS.1Alle:true,EigTowDefMS.1Verlassen:true}] 1

execute at @n[distance=..60,type=minecraft:interaction,tag=EtiTowDefMS.1Wartesaal] run teleport @s ~ ~ ~
execute at @s run particle minecraft:portal ~ ~ ~ 0 1 0 0.7 35 force @a[distance=..15,team=TMTowDefMS.1Lobby]
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..15,team=TMTowDefMS.1Lobby] ~ ~ ~ 10 1

tellraw @s[tag=!EtiTowDefMS.1Spielen] ["",{text:"⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞",color:"green",bold:true},"\n",{storage:"tower-defense-minispiel:v1daten",nbt:'"EigTowDefMS.1Name"',interpret:true},"\n",{text:"Erwehre dich mit Türmen gegen Horden-Wellen, die versuchen deine Basis zu zerstören! Halte länger durch als die gegnerische Mannschaft!",color:"yellow",bold:true},"\n",{text:"⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞",color:"green",bold:true}]

tag @s[tag=EtiTowDefMS.1Verloren] remove EtiTowDefMS.1Verloren
tag @s[tag=EtiTowDefMS.1Spielen] remove EtiTowDefMS.1Spielen

execute if score VarTowDefMS.1Spielen PZTowDefMS.1Wert matches 0 run return 0

gamemode spectator @s

team leave @s

teleport @s @r[gamemode=!spectator,tag=EtiTowDefMS.1Spielen,tag=!EtiTowDefMS.1Verloren]

tag @s add EtiTowDefMS.1Spielen
tag @s add EtiTowDefMS.1Verloren
