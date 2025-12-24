
tag @s remove EtiBoSplMS.1Verlassen
tag @s remove EtiBoSplMS.1Teilnehmer

scoreboard players set @s PZBoSplMS.1Verlassen 0
scoreboard players set VarBoSplMS.1Warten PZBoSplMS.1Wert 10

effect clear @s minecraft:night_vision

gamemode creative @s

clear @s minecraft:red_bed[minecraft:custom_data~{EigBoSplMS.1Alle:true}]

kill @n[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigBoSplMS.1Alle:true} } } }]

tellraw @s[team=!TMBoSplMS.1Lobby,tag=!EtiBoSplMS.1Spielen] ["Bow-Spleef-Minispiel.1:\n",{storage:"bow-spleef-minispiel:v1daten",nbt:'"EigBoSplMS.1Name"',interpret:true},{text:"Du bist dem Minispiel zu nahe gekommen!",color:"red",bold:true}]

team leave @s

execute store result score VarBoSplMS.1Wartende PZBoSplMS.1Wert if entity @a[team=TMBoSplMS.1Lobby]
execute store result score VarBoSplMS.1Teilnehmer PZBoSplMS.1Wert if entity @a[tag=EtiBoSplMS.1Teilnehmer]

bossbar set bow-spleef-minispiel:v1lobby name ["",{text:"Lobby - Spieler anwesend ",bold:true},{score:{name:"VarBoSplMS.1Wartende",objective:"PZBoSplMS.1Wert"},color:"green",bold:true}]

execute if entity @s[tag=EtiBoSplMS.1Spielen,tag=!EtiBoSplMS.1Verloren] run tellraw @a[team=TMBoSplMS.1Lobby] ["Bow-Spleef-Minispiel.1:\n",{storage:"bow-spleef-minispiel:v1daten",nbt:'"EigBoSplMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" hat die Lobby verlassen ",color:"yellow",bold:true},{score:{name:"VarBoSplMS.1Wartende",objective:"PZBoSplMS.1Wert"},color:"dark_purple",bold:true},{text:"/",bold:true},{text:"10",color:"dark_purple",bold:true}]

bossbar set bow-spleef-minispiel:v1lobby players @a[team=TMBoSplMS.1Lobby]

execute at @e[type=minecraft:text_display,tag=EtiBoSplMS.1Teleporter] run teleport @s ~ ~-3.5 ~15 180 0

tag @s[tag=EtiBoSplMS.1Spielen] remove EtiBoSplMS.1Spielen
tag @s[tag=EtiBoSplMS.1Verloren] remove EtiBoSplMS.1Verloren
