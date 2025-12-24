
data merge entity @s {Health:30.0f}

tag @n[type=minecraft:shulker,tag=EtiRSchMS.1ZugAuswahl,tag=!EtiRSchMS.1BauerWandlung] add EtiRSchMS.1FigurPosition

data merge entity @n[tag=EtiRSchMS.1FigurPosition] {Health:29.0f}

execute if entity @s[tag=EtiRSchMS.1BauerWandlungTurm] at @n[tag=EtiRSchMS.1FigurPosition] align xyz positioned ~0.5 ~-3 ~0.5 run function raumschach-minispiel:v1figur_turm

execute if entity @s[tag=EtiRSchMS.1BauerWandlungSpringer] at @n[tag=EtiRSchMS.1FigurPosition] align xyz positioned ~0.5 ~-3 ~0.5 run function raumschach-minispiel:v1figur_springer

execute if entity @s[tag=EtiRSchMS.1BauerWandlungLaeufer] at @n[tag=EtiRSchMS.1FigurPosition] align xyz positioned ~0.5 ~-3 ~0.5 run function raumschach-minispiel:v1figur_laeufer

execute if entity @s[tag=!EtiRSchMS.1BauerWandlungTurm,tag=!EtiRSchMS.1BauerWandlungSpringer,tag=!EtiRSchMS.1BauerWandlungLaeufer] at @n[tag=EtiRSchMS.1FigurPosition] align xyz positioned ~0.5 ~-3 ~0.5 run function raumschach-minispiel:v1figur_dame

execute at @n[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Leuchten] run tag @e[distance=..2,tag=EtiRSchMS.1Bauer] add EtiRSchMS.1Besiegen
execute as @e[tag=EtiRSchMS.1Leuchten,tag=EtiRSchMS.1FigurBoden] at @n[tag=EtiRSchMS.1FigurPosition] align xyz run teleport @s ~0.5 ~-1 ~0.5
