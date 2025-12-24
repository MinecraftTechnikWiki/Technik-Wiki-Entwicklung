
tag @e[tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Bewegen] remove EtiSchMS.1Bewegen
effect clear @e[tag=EtiSchMS.1Leuchten] minecraft:glowing
tag @e[tag=EtiSchMS.1Leuchten] remove EtiSchMS.1Leuchten
kill @e[tag=EtiSchMS.1ZugAuswahl]

tag @e[distance=..2.5,tag=EtiSchMS.1Figur,tag=!EtiSchMS.1MoeglicherZug,tag=!EtiSchMS.1Leuchten] add EtiSchMS.1Leuchten
execute positioned ~-0.5 ~ ~-0.5 run tag @e[dx=1,dy=-4,dz=1,tag=EtiSchMS.1FigurBoden,tag=!EtiSchMS.1Bewegen] add EtiSchMS.1Bewegen
execute positioned ~-0.5 ~ ~-0.5 run tag @e[dx=1,dy=-4,dz=1,tag=EtiSchMS.1Figur,tag=!EtiSchMS.1MoeglicherZug] add EtiSchMS.1MoeglicherZug
data merge entity @s {Health:20.0f}

execute at @n[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Bauer] run function schach-minispiel:v1zug_bauer
execute at @n[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Koenig] run function schach-minispiel:v1zug_koenig
execute at @n[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Dame] run function schach-minispiel:v1zug_dame
execute at @n[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Laeufer] run function schach-minispiel:v1zug_laeufer
execute at @n[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Springer] run function schach-minispiel:v1zug_springer
execute at @n[tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1FigurBoden,tag=EtiSchMS.1Turm] positioned ~ ~1.35 ~ run function schach-minispiel:v1zug_turm

execute at @e[tag=EtiSchMS.1ZugAuswahl,tag=EtiSchMS.1Leuchten] if score @n[distance=..3,tag=EtiSchMS.1Figur,tag=EtiSchMS.1Anklickbar] PZSchMS.1Farbe = @n[tag=EtiSchMS.1Figur,tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1Leuchten] PZSchMS.1Farbe run kill @e[distance=..2,tag=EtiSchMS.1ZugAuswahl,tag=!EtiSchMS.1KoenigAufgeben]

tag @e[tag=EtiSchMS.1Alle,tag=EtiSchMS.1MoeglicherZug] remove EtiSchMS.1MoeglicherZug

effect give @e[tag=EtiSchMS.1Alle,tag=EtiSchMS.1Leuchten] minecraft:glowing infinite 127 true
