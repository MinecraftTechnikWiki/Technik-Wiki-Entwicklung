
tag @a[scores={PZKanBTBM.1Schl=1..},nbt={OnGround:true,SelectedItem:{id:"minecraft:fishing_rod",tag:{kanalbruecken-_und_-tunnelbaumaschine:"v1gegenstand"}}}] add EtiKanBTBM.1Kanal

execute as @p[tag=EtiKanBTBM.1Kanal] run scoreboard players add VarKanBTBM.1Laenge PZKanBTBM.1Schl 1
title @p[tag=EtiKanBTBM.1Kanal] actionbar ["",{"text":"Kanallänge: ","bold":true},{"score":{"name":"VarKanBTBM.1Laenge","objective":"PZKanBTBM.1Schl"}}]

execute as @p[scores={PZKanBTBM.1Schl=0}] if score @s PZKanBTBM.1Schl < VarKanBTBM.1Laenge PZKanBTBM.1Schl at @s rotated ~ 0 positioned ^ ^ ^1 run function kanalbruecken-_und_-tunnelbaumaschine:v1ausrichtung

scoreboard players set @a[scores={PZKanBTBM.1Schl=1..}] PZKanBTBM.1Schl 0

tag @a[tag=EtiKanBTBM.1Kanal] remove EtiKanBTBM.1Kanal

execute as @e[tag=EtiKanBTBM.1Pfeiler] at @s run function kanalbruecken-_und_-tunnelbaumaschine:v1pfeiler
