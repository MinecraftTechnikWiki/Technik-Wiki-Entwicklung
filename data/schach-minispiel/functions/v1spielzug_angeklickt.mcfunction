
tag @e[tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Bewegen] remove EtiSchMS.1Bewegen
tag @e[tag=EtiSchMS.1Alle,tag=EtiSchMS.1Angeklickt,tag=EtiSchMS.1Leuchten] remove EtiSchMS.1Angeklickt
effect clear @e[tag=EtiSchMS.1Alle,tag=EtiSchMS.1Leuchten] minecraft:glowing
tag @e[tag=EtiSchMS.1Alle,tag=EtiSchMS.1Leuchten] remove EtiSchMS.1Leuchten
kill @e[tag=EtiSchMS.1Alle,tag=EtiSchMS.1ZugAuswahl]

tag @e[distance=..2,tag=EtiSchMS.1Figur,tag=!EtiSchMS.1MoeglicherZug,tag=!EtiSchMS.1Leuchten] add EtiSchMS.1Leuchten
execute positioned ~-0.5 ~ ~-0.5 run tag @e[dx=1,dy=-4,dz=1,tag=EtiSchMS.1FigurBoden,tag=!EtiSchMS.1Bewegen] add EtiSchMS.1Bewegen
execute positioned ~-0.5 ~ ~-0.5 run tag @e[dx=1,dy=-4,dz=1,tag=EtiSchMS.1Figur,tag=!EtiSchMS.1MoeglicherZug] add EtiSchMS.1MoeglicherZug
data merge entity @s {Health:20.0f}

tag @s remove EtiSchMS.1Angeklickt

kill @e[tag=EtiSchMS.1ZugAuswahl]

execute at @e[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1Bauer,tag=EtiSchMS.1FigurBoden] run function schach-minispiel:v1zug_bauer
execute at @e[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1Springer,tag=EtiSchMS.1FigurBoden] run function schach-minispiel:v1zug_springer
execute as @e[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1Turm,tag=EtiSchMS.1FigurBoden] at @s positioned ~ ~0.35 ~ run function schach-minispiel:v1zug_turm
execute as @e[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1Laeufer,tag=EtiSchMS.1FigurBoden] at @s run function schach-minispiel:v1zug_laeufer
execute as @e[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1Dame,tag=EtiSchMS.1FigurBoden] at @s run function schach-minispiel:v1zug_dame
execute as @e[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1Koenig,tag=EtiSchMS.1FigurBoden] at @s run function schach-minispiel:v1zug_koenig

tag @e[tag=EtiSchMS.1Alle,tag=EtiSchMS.1MoeglicherZug] remove EtiSchMS.1MoeglicherZug
