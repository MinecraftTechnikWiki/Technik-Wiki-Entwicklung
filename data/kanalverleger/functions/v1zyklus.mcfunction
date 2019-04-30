
tag @a[scores={PZKanV.1Schl=1..},nbt={OnGround:true,SelectedItem:{id:"minecraft:fishing_rod",tag:{Kanalverleger.1:true}}}] add EtiKanV.1Kanal

execute as @p[tag=EtiKanV.1Kanal] run scoreboard players add VarKanV.1Laenge PZKanV.1Schl 1
title @p[tag=EtiKanV.1Kanal] actionbar ["",{"text":"Kanallänge: ","bold":true},{"score":{"name":"VarKanV.1Laenge","objective":"PZKanV.1Schl"}}]

execute as @p[scores={PZKanV.1Schl=0}] if score @s PZKanV.1Schl < VarKanV.1Laenge PZKanV.1Schl at @s rotated ~ 0 positioned ^ ^ ^1 run function kanalverleger:v1ausrichtung

scoreboard players set @a[scores={PZKanV.1Schl=1..}] PZKanV.1Schl 0

tag @a[tag=EtiKanV.1Kanal] remove EtiKanV.1Kanal
