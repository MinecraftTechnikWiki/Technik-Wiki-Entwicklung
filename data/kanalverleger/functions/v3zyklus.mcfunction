
tag @a[scores={PZKanV.3Schl=1..},nbt={OnGround:true,SelectedItem:{id:"minecraft:fishing_rod",tag:{Kanalverleger.3:true}}}] add EtiKanV.3Kanal

execute as @p[tag=EtiKanV.3Kanal] run scoreboard players add VarKanV.3Laenge PZKanV.3Schl 1
title @p[tag=EtiKanV.3Kanal] actionbar ["",{"text":"Kanallänge: ","bold":true},{"score":{"name":"VarKanV.3Laenge","objective":"PZKanV.3Schl"}}]

execute as @p[scores={PZKanV.3Schl=0}] if score @s PZKanV.3Schl < VarKanV.3Laenge PZKanV.3Schl at @s rotated ~ 0 positioned ^ ^ ^2 run function kanalverleger:v3ausrichtung

scoreboard players set @a[scores={PZKanV.3Schl=1..}] PZKanV.3Schl 0

tag @a[tag=EtiKanV.3Kanal] remove EtiKanV.3Kanal

execute as @e[tag=EtiKanV.3Pfeiler] at @s run function kanalverleger:v3pfeiler
