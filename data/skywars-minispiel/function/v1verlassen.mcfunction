
tag @s remove EtiSkyWaMS.1Verlassen
tag @s remove EtiSkyWaMS.1Teilnehmer

scoreboard players set @s PZSkyWaMS.1Verlassen 0
scoreboard players set VarSkyWaMS.1Warten PZSkyWaMS.1Wert 10

effect clear @s

gamemode creative @s

clear @s minecraft:red_bed[minecraft:custom_data~{EigSkyWaMS.1Alle:true}]

kill @n[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigSkyWaMS.1Alle:true} } } }]

tellraw @s[team=!TMSkyWaMS.1Lobby,tag=!EtiSkyWaMS.1Spielen] ["Skywars-Minispiel.1:\n",{storage:"skywars-minispiel:v1daten",nbt:'"EigSkyWaMS.1Name"',interpret:true},{text:"Du bist dem Minispiel zu nahe gekommen!",color:"red",bold:true}]

team leave @s

execute store result score VarSkyWaMS.1Wartende PZSkyWaMS.1Wert if entity @a[team=TMSkyWaMS.1Lobby]
execute store result score VarSkyWaMS.1Teilnehmer PZSkyWaMS.1Wert if entity @a[tag=EtiSkyWaMS.1Teilnehmer]

bossbar set skywars-minispiel:v1lobby name ["",{text:"Lobby - Spieler anwesend ",bold:true},{score:{name:"VarSkyWaMS.1Wartende",objective:"PZSkyWaMS.1Wert"},color:"green",bold:true}]

execute if entity @s[tag=EtiSkyWaMS.1Spielen,tag=!EtiSkyWaMS.1Verloren] run tellraw @a[team=TMSkyWaMS.1Lobby] ["Skywars-Minispiel.1:\n",{storage:"skywars-minispiel:v1daten",nbt:'"EigSkyWaMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" hat die Lobby verlassen ",color:"yellow",bold:true},{score:{name:"VarSkyWaMS.1Wartende",objective:"PZSkyWaMS.1Wert"},color:"dark_purple",bold:true},{text:"/",bold:true},{text:"10",color:"dark_purple",bold:true}]

bossbar set skywars-minispiel:v1lobby players @a[team=TMSkyWaMS.1Lobby]

execute at @e[type=minecraft:text_display,tag=EtiSkyWaMS.1Teleporter] run teleport @s ~ ~-3.5 ~15 180 0

tag @s[tag=EtiSkyWaMS.1Spielen] remove EtiSkyWaMS.1Spielen
tag @s[tag=EtiSkyWaMS.1Verloren] remove EtiSkyWaMS.1Verloren
