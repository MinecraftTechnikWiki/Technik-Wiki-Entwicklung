
data merge entity @s {Health:30.0f}

execute positioned ~-0.5 ~10 ~-0.5 run tag @n[dx=1,dy=-20,dz=1,type=minecraft:shulker,tag=EtiSchMS.1ZugAuswahl,tag=!EtiSchMS.1BauerWandlung,sort=furthest] add EtiSchMS.1FigurPosition

data merge entity @n[tag=EtiSchMS.1FigurPosition] {Health:29.0f}

execute if entity @s[tag=EtiSchMS.1BauerWandlungTurm] at @n[tag=EtiSchMS.1FigurPosition] align xyz positioned ~0.5 ~-3 ~0.5 run function schach-minispiel:v1figur_turm

execute if entity @s[tag=EtiSchMS.1BauerWandlungSpringer] at @n[tag=EtiSchMS.1FigurPosition] align xyz positioned ~0.5 ~-3 ~0.5 run function schach-minispiel:v1figur_springer

execute if entity @s[tag=EtiSchMS.1BauerWandlungLaeufer] at @n[tag=EtiSchMS.1FigurPosition] align xyz positioned ~0.5 ~-3 ~0.5 run function schach-minispiel:v1figur_laeufer

execute if entity @s[tag=!EtiSchMS.1BauerWandlungTurm,tag=!EtiSchMS.1BauerWandlungSpringer,tag=!EtiSchMS.1BauerWandlungLaeufer] at @n[tag=EtiSchMS.1FigurPosition] align xyz positioned ~0.5 ~-3 ~0.5 run function schach-minispiel:v1figur_dame

execute at @n[tag=EtiSchMS.1Bauer,tag=EtiSchMS.1Leuchten] run tag @e[distance=..2,tag=EtiSchMS.1Bauer] add EtiSchMS.1Besiegen
execute as @e[tag=EtiSchMS.1Leuchten,tag=EtiSchMS.1FigurBoden] at @n[tag=EtiSchMS.1FigurPosition] align xyz run teleport @s ~0.5 ~-1 ~0.5
