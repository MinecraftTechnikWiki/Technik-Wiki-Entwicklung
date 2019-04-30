
execute as @p[distance=..2,tag=!EtiSamS.2BeimEi] unless entity @e[distance=..1,type=minecraft:area_effect_cloud,tag=EtiSamS.2SpielerNummer] run tag @s add EtiSamS.2NeuesEi
execute as @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=!EtiSamS.2NeuesEi] unless score @s PZSamS.2Nr = @e[distance=..1,type=minecraft:area_effect_cloud,tag=EtiSamS.2SpielerNummer,sort=nearest,limit=1] PZSamS.2Nr run tag @s add EtiSamS.2NeuesEi
execute as @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=!EtiSamS.2NeuesEi] if score @s PZSamS.2Nr = @e[distance=..1,type=minecraft:area_effect_cloud,tag=EtiSamS.2SpielerNummer,sort=nearest,limit=1] PZSamS.2Nr run tag @s remove EtiSamS.2NeuesEi
scoreboard players add @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=EtiSamS.2NeuesEi] PZSamS.2Anz 1

execute as @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=EtiSamS.2NeuesEi] run title @s actionbar ["",{"text":"Das ist dein ","bold":true,"color":"green"},{"score":{"name":"@s","objective":"PZSamS.2Anz"} },{"text":"."},{"text":" Sammel-Ei!","bold":true,"color":"green"} ]
title @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=!EtiSamS.2NeuesEi] actionbar ["",{"text":"Du hast dieses Sammel-Ei bereits aufgehoben","bold":true,"color":"dark_red"}]

execute if entity @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=EtiSamS.2NeuesEi] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiSamS.2Alle"]}
execute if entity @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=EtiSamS.2NeuesEi] run scoreboard players add @s PZSamS.2Anz 1

execute as @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=EtiSamS.2NeuesEi] run scoreboard players operation @e[distance=..1,type=minecraft:area_effect_cloud,tag=EtiSamS.2Alle,tag=!EtiSamS.2SpielerNummer] PZSamS.2Nr = @s PZSamS.2Nr
execute as @p[distance=..2,tag=!EtiSamS.2BeimEi,tag=EtiSamS.2NeuesEi] run tag @e[distance=..1,type=minecraft:area_effect_cloud,tag=EtiSamS.2Alle,tag=!EtiSamS.2SpielerNummer] add EtiSamS.2SpielerNummer
tag @p[distance=..2,tag=EtiSamS.2NeuesEi] remove EtiSamS.2NeuesEi

tag @p[distance=..2,tag=!EtiSamS.2BeimEi] add EtiSamS.2BeimEi
