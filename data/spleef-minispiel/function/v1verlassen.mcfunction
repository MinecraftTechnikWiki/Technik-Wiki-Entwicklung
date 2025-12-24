
tag @s remove EtiSpleeMS.1Verlassen
tag @s remove EtiSpleeMS.1Teilnehmer

scoreboard players set @s PZSpleeMS.1Verlassen 0
scoreboard players set VarSpleeMS.1Warten PZSpleeMS.1Wert 10

effect clear @s minecraft:night_vision

gamemode creative @s

clear @s minecraft:snowball[minecraft:custom_data~{EigSpleeMS.1Alle:true}]
clear @s minecraft:red_bed[minecraft:custom_data~{EigSpleeMS.1Alle:true}]

kill @n[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigSpleeMS.1Alle:true} } } }]

tellraw @s[team=!TMSpleeMS.1Lobby,tag=!EtiSpleeMS.1Spielen] ["Spleef-Minispiel.1:\n",{storage:"spleef-minispiel:v1daten",nbt:'"EigSpleeMS.1Name"',interpret:true},{text:"Du bist dem Minispiel zu nahe gekommen!",color:"red",bold:true}]

team leave @s

execute store result score VarSpleeMS.1Wartende PZSpleeMS.1Wert if entity @a[team=TMSpleeMS.1Lobby]
execute store result score VarSpleeMS.1Teilnehmer PZSpleeMS.1Wert if entity @a[tag=EtiSpleeMS.1Teilnehmer]

bossbar set spleef-minispiel:v1lobby name ["",{text:"Lobby - Spieler anwesend ",bold:true},{score:{name:"VarSpleeMS.1Wartende",objective:"PZSpleeMS.1Wert"},color:"green",bold:true}]

execute if entity @s[tag=EtiSpleeMS.1Spielen,tag=!EtiSpleeMS.1Verloren] run tellraw @a[team=TMSpleeMS.1Lobby] ["Spleef-Minispiel.1:\n",{storage:"spleef-minispiel:v1daten",nbt:'"EigSpleeMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" hat die Lobby verlassen ",color:"yellow",bold:true},{score:{name:"VarSpleeMS.1Wartende",objective:"PZSpleeMS.1Wert"},color:"dark_purple",bold:true},{text:"/",bold:true},{text:"10",color:"dark_purple",bold:true}]

bossbar set spleef-minispiel:v1lobby players @a[team=TMSpleeMS.1Lobby]

execute at @e[type=minecraft:text_display,tag=EtiSpleeMS.1Teleporter] run teleport @s ~ ~-3.5 ~15 180 0

tag @s[tag=EtiSpleeMS.1Spielen] remove EtiSpleeMS.1Spielen
tag @s[tag=EtiSpleeMS.1Verloren] remove EtiSpleeMS.1Verloren
