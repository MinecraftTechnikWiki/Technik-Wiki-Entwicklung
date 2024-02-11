
tag @e[tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Bewegen] remove EtiSchMS.1Bewegen
effect clear @e[tag=EtiSchMS.1Leuchten] minecraft:glowing
tag @e[tag=EtiSchMS.1Leuchten] remove EtiSchMS.1Leuchten
kill @e[tag=EtiSchMS.1ZugAuswahl]

tag @e[distance=..2.5,tag=EtiSchMS.1Figur,tag=!EtiSchMS.1MoeglicherZug,tag=!EtiSchMS.1Leuchten] add EtiSchMS.1Leuchten
execute positioned ~-0.5 ~ ~-0.5 run tag @e[dx=1,dy=-4,dz=1,tag=EtiSchMS.1FigurBoden,tag=!EtiSchMS.1Bewegen] add EtiSchMS.1Bewegen
execute positioned ~-0.5 ~ ~-0.5 run tag @e[dx=1,dy=-4,dz=1,tag=EtiSchMS.1Figur,tag=!EtiSchMS.1MoeglicherZug] add EtiSchMS.1MoeglicherZug
data merge entity @s {Health:20.0f}

kill @e[tag=EtiSchMS.1ZugAuswahl]

execute at @e[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Bauer,sort=nearest,limit=1] run function schach-minispiel:v1zug_bauer
execute at @e[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Koenig,sort=nearest,limit=1] run function schach-minispiel:v1zug_koenig
execute at @e[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Dame,sort=nearest,limit=1] run function schach-minispiel:v1zug_dame
execute at @e[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Laeufer,sort=nearest,limit=1] run function schach-minispiel:v1zug_laeufer
execute at @e[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Springer,sort=nearest,limit=1] run function schach-minispiel:v1zug_springer
execute at @e[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Turm,sort=nearest,limit=1] positioned ~ ~1.35 ~ run function schach-minispiel:v1zug_turm

execute at @e[tag=EtiSchMS.1ZugAuswahl,tag=EtiSchMS.1Leuchten] if score @e[distance=..3,tag=EtiSchMS.1Figur,tag=EtiSchMS.1Anklickbar,sort=nearest,limit=1] PZSchMS.1Farbe = @e[tag=EtiSchMS.1Figur,tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1Leuchten,sort=nearest,limit=1] PZSchMS.1Farbe run kill @e[distance=..2,tag=EtiSchMS.1ZugAuswahl,tag=!EtiSchMS.1KoenigAufgeben]

tag @e[tag=EtiSchMS.1Alle,tag=EtiSchMS.1MoeglicherZug] remove EtiSchMS.1MoeglicherZug

effect give @e[tag=EtiSchMS.1Alle,tag=EtiSchMS.1Leuchten] minecraft:glowing infinite 127 true