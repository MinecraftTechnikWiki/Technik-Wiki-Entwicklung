
tag @a[scores={PZKanV.2Schl=1..},nbt={OnGround:true,SelectedItem:{id:"minecraft:fishing_rod",tag:{Kanalverleger.2:true}}}] add EtiKanV.2Kanal

execute as @p[tag=EtiKanV.2Kanal] run scoreboard players add VarKanV.2Laenge PZKanV.2Schl 1
title @p[tag=EtiKanV.2Kanal] actionbar ["",{"text":"Kanallänge: ","bold":true},{"score":{"name":"VarKanV.2Laenge","objective":"PZKanV.2Schl"}}]

execute as @p[scores={PZKanV.2Schl=0}] if score @s PZKanV.2Schl < VarKanV.2Laenge PZKanV.2Schl at @s rotated ~ 0 positioned ^ ^ ^1 run function kanalverleger:v2ausrichtung

scoreboard players set @a[scores={PZKanV.2Schl=1..}] PZKanV.2Schl 0

tag @a[tag=EtiKanV.2Kanal] remove EtiKanV.2Kanal

execute as @e[tag=EtiKanV.2Pfeiler] at @s run function kanalverleger:v2pfeiler
