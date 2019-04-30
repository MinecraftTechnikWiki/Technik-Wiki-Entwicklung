
execute if block ~ ~ ~ minecraft:gray_concrete at @s run kill @e[distance=..2,tag=EtiSchMS.1ZugAuswahl]

execute unless block ~ ~ ~ minecraft:gray_concrete positioned ^ ^ ^0.25 unless entity @e[distance=..1.4,tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1FigurBoden,sort=nearest,limit=1] run function schach-minispiel:v1spielzug_anzeigen_barriere
