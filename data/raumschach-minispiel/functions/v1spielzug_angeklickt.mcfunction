
tag @e[tag=EtiRSchMS.1FigurBoden,tag=EtiRSchMS.1Bewegen] remove EtiRSchMS.1Bewegen
effect clear @e[tag=EtiRSchMS.1Leuchten] minecraft:glowing
tag @e[tag=EtiRSchMS.1Leuchten] remove EtiRSchMS.1Leuchten
kill @e[tag=EtiRSchMS.1ZugAuswahl]

tag @e[distance=..2.5,tag=EtiRSchMS.1Figur,tag=!EtiRSchMS.1MoeglicherZug,tag=!EtiRSchMS.1Leuchten] add EtiRSchMS.1Leuchten
execute positioned ~-0.5 ~ ~-0.5 run tag @e[dx=1,dy=-4,dz=1,tag=EtiRSchMS.1FigurBoden,tag=!EtiRSchMS.1Bewegen] add EtiRSchMS.1Bewegen
execute positioned ~-0.5 ~ ~-0.5 run tag @e[dx=1,dy=-4,dz=1,tag=EtiRSchMS.1Figur,tag=!EtiRSchMS.1MoeglicherZug] add EtiRSchMS.1MoeglicherZug
data merge entity @s {Health:20.0f}

kill @e[tag=EtiRSchMS.1ZugAuswahl]

execute at @e[tag=EtiRSchMS.1MoeglicherZug,tag=EtiRSchMS.1FigurBoden,tag=EtiRSchMS.1Bauer,sort=nearest,limit=1] run function raumschach-minispiel:v1zug_bauer
execute at @e[tag=EtiRSchMS.1MoeglicherZug,tag=EtiRSchMS.1FigurBoden,tag=EtiRSchMS.1Koenig,sort=nearest,limit=1] run function raumschach-minispiel:v1zug_koenig
execute at @e[tag=EtiRSchMS.1MoeglicherZug,tag=EtiRSchMS.1FigurBoden,tag=EtiRSchMS.1Dame,sort=nearest,limit=1] run function raumschach-minispiel:v1zug_dame
execute at @e[tag=EtiRSchMS.1MoeglicherZug,tag=EtiRSchMS.1FigurBoden,tag=EtiRSchMS.1Laeufer,sort=nearest,limit=1] run function raumschach-minispiel:v1zug_laeufer
execute at @e[tag=EtiRSchMS.1MoeglicherZug,tag=EtiRSchMS.1FigurBoden,tag=EtiRSchMS.1Einhorn,sort=nearest,limit=1] run function raumschach-minispiel:v1zug_einhorn
execute at @e[tag=EtiRSchMS.1MoeglicherZug,tag=EtiRSchMS.1FigurBoden,tag=EtiRSchMS.1Springer,sort=nearest,limit=1] run function raumschach-minispiel:v1zug_springer
execute at @e[tag=EtiRSchMS.1MoeglicherZug,tag=EtiRSchMS.1FigurBoden,tag=EtiRSchMS.1Turm,sort=nearest,limit=1] positioned ~ ~1.35 ~ run function raumschach-minispiel:v1zug_turm

execute at @e[tag=EtiRSchMS.1ZugAuswahl,tag=EtiRSchMS.1Leuchten] if score @e[distance=..3,tag=EtiRSchMS.1Figur,tag=EtiRSchMS.1Anklickbar,sort=nearest,limit=1] PZRSchMS.1Farbe = @e[tag=EtiRSchMS.1Figur,tag=EtiRSchMS.1Anklickbar,tag=EtiRSchMS.1Leuchten,sort=nearest,limit=1] PZRSchMS.1Farbe run kill @e[distance=..2,tag=EtiRSchMS.1ZugAuswahl,tag=!EtiRSchMS.1KoenigAufgeben]

tag @e[tag=EtiRSchMS.1Alle,tag=EtiRSchMS.1MoeglicherZug] remove EtiRSchMS.1MoeglicherZug

execute as @e[tag=EtiRSchMS.1Alle,tag=EtiRSchMS.1Leuchten] run data modify entity @s ActiveEffects append value {Id:24b,Amplifier:127b,ShowParticles:false,Duration:2147483647}
