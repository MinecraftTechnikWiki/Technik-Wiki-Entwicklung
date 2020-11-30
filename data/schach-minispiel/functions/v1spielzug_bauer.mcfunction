
data merge entity @s {Health:30.0f}

execute positioned ~-0.5 ~10 ~-0.5 run tag @e[dx=1,dy=-20,dz=1,type=minecraft:shulker,tag=EtiSchMS.1ZugAuswahl,tag=!EtiSchMS.1BauerWandlung,sort=furthest,limit=1] add EtiSchMS.1FigurPosition

data merge entity @e[tag=EtiSchMS.1FigurPosition,sort=nearest,limit=1] {Health:29.0f}

execute if entity @s[tag=EtiSchMS.1BauerWandlungTurm] at @e[tag=EtiSchMS.1FigurPosition,sort=nearest,limit=1] align xyz positioned ~0.5 ~-3 ~0.5 run function schach-minispiel:v1figur_turm

execute if entity @s[tag=EtiSchMS.1BauerWandlungSpringer] at @e[tag=EtiSchMS.1FigurPosition,sort=nearest,limit=1] align xyz positioned ~0.5 ~-3 ~0.5 run function schach-minispiel:v1figur_springer

execute if entity @s[tag=EtiSchMS.1BauerWandlungLaeufer] at @e[tag=EtiSchMS.1FigurPosition,sort=nearest,limit=1] align xyz positioned ~0.5 ~-3 ~0.5 run function schach-minispiel:v1figur_laeufer

execute if entity @s[tag=!EtiSchMS.1BauerWandlungTurm,tag=!EtiSchMS.1BauerWandlungSpringer,tag=!EtiSchMS.1BauerWandlungLaeufer] at @e[tag=EtiSchMS.1FigurPosition,sort=nearest,limit=1] align xyz positioned ~0.5 ~-3 ~0.5 run function schach-minispiel:v1figur_dame

execute at @e[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten,sort=nearest,limit=1] run tag @e[distance=..2,tag=EtiSchMS.1Bauer] add EtiSchMS.1Besiegen
execute as @e[tag=EtiSchMS.1Leuchten,tag=EtiSchMS.1FigurBoden] at @e[tag=EtiSchMS.1FigurPosition,sort=nearest,limit=1] align xyz run teleport @s ~0.5 ~-1 ~0.5
