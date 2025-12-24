
tag @s remove EtiTNTRMS.1Verlassen
tag @s remove EtiTNTRMS.1Teilnehmer

scoreboard players set @s PZTNTRMS.1Verlassen 0
scoreboard players set VarTNTRMS.1Warten PZTNTRMS.1Wert 10

effect clear @s

gamemode creative @s

clear @s minecraft:red_bed[minecraft:custom_data~{EigTNTRMS.1Alle:true}]

kill @n[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigTNTRMS.1Alle:true} } } }]

tellraw @s[team=!TMTNTRMS.1Lobby,tag=!EtiTNTRMS.1Spielen] ["TNT-Run-Minispiel.1:\n",{storage:"tnt-run-minispiel:v1daten",nbt:'"EigTNTRMS.1Name"',interpret:true},{text:"Du bist dem Minispiel zu nahe gekommen!",color:"red",bold:true}]

team leave @s

execute store result score VarTNTRMS.1Wartende PZTNTRMS.1Wert if entity @a[team=TMTNTRMS.1Lobby]
execute store result score VarTNTRMS.1Teilnehmer PZTNTRMS.1Wert if entity @a[tag=EtiTNTRMS.1Teilnehmer]

bossbar set tnt-run-minispiel:v1lobby name ["",{text:"Lobby - Spieler anwesend ",bold:true},{score:{name:"VarTNTRMS.1Wartende",objective:"PZTNTRMS.1Wert"},color:"green",bold:true}]

execute if entity @s[tag=EtiTNTRMS.1Spielen,tag=!EtiTNTRMS.1Verloren] run tellraw @a[team=TMTNTRMS.1Lobby] ["TNT-Run-Minispiel.1:\n",{storage:"tnt-run-minispiel:v1daten",nbt:'"EigTNTRMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" hat die Lobby verlassen ",color:"yellow",bold:true},{score:{name:"VarTNTRMS.1Wartende",objective:"PZTNTRMS.1Wert"},color:"dark_purple",bold:true},{text:"/",bold:true},{text:"10",color:"dark_purple",bold:true}]

bossbar set tnt-run-minispiel:v1lobby players @a[team=TMTNTRMS.1Lobby]

execute at @e[type=minecraft:text_display,tag=EtiTNTRMS.1Teleporter] run teleport @s ~ ~-3.5 ~15 180 0

tag @s[tag=EtiTNTRMS.1Spielen] remove EtiTNTRMS.1Spielen
tag @s[tag=EtiTNTRMS.1Verloren] remove EtiTNTRMS.1Verloren
