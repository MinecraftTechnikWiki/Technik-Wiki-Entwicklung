
tag @a[scores={PZKanBTBM.2Schl=1..},nbt={OnGround:true,SelectedItem:{id:"minecraft:fishing_rod",tag:{kanalbruecken-_und_-tunnelbaumaschine:"v2gegenstand"} } }] add EtiKanBTBM.2Kanal

execute as @p[tag=EtiKanBTBM.2Kanal] run scoreboard players add VarKanBTBM.2Laenge PZKanBTBM.2Schl 1
title @p[tag=EtiKanBTBM.2Kanal] actionbar ["",{"text":"Kanallänge: ","bold":true},{"score":{"name":"VarKanBTBM.2Laenge","objective":"PZKanBTBM.2Schl"}}]

execute as @p[scores={PZKanBTBM.2Schl=0}] if score @s PZKanBTBM.2Schl < VarKanBTBM.2Laenge PZKanBTBM.2Schl at @s rotated ~ 0 positioned ^ ^ ^2 run function kanalbruecken-_und_-tunnelbaumaschine:v2ausrichtung

scoreboard players set @a[scores={PZKanBTBM.2Schl=1..}] PZKanBTBM.2Schl 0

tag @a[tag=EtiKanBTBM.2Kanal] remove EtiKanBTBM.2Kanal

execute as @e[tag=EtiKanBTBM.2Pfeiler] at @s run function kanalbruecken-_und_-tunnelbaumaschine:v2pfeiler
