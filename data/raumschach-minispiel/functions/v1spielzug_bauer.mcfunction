
data merge entity @s {Health:30.0f}

tag @e[type=minecraft:shulker,tag=EtiRSchMS.1ZugAuswahl,tag=!EtiRSchMS.1BauerWandlung,sort=nearest,limit=1] add EtiRSchMS.1FigurPosition

data merge entity @e[tag=EtiRSchMS.1FigurPosition,sort=nearest,limit=1] {Health:29.0f}

execute if entity @s[tag=EtiRSchMS.1BauerWandlungTurm] at @e[tag=EtiRSchMS.1FigurPosition,sort=nearest,limit=1] align xyz positioned ~0.5 ~-3 ~0.5 run function raumschach-minispiel:v1figur_turm

execute if entity @s[tag=EtiRSchMS.1BauerWandlungSpringer] at @e[tag=EtiRSchMS.1FigurPosition,sort=nearest,limit=1] align xyz positioned ~0.5 ~-3 ~0.5 run function raumschach-minispiel:v1figur_springer

execute if entity @s[tag=EtiRSchMS.1BauerWandlungLaeufer] at @e[tag=EtiRSchMS.1FigurPosition,sort=nearest,limit=1] align xyz positioned ~0.5 ~-3 ~0.5 run function raumschach-minispiel:v1figur_laeufer

execute if entity @s[tag=!EtiRSchMS.1BauerWandlungTurm,tag=!EtiRSchMS.1BauerWandlungSpringer,tag=!EtiRSchMS.1BauerWandlungLaeufer] at @e[tag=EtiRSchMS.1FigurPosition,sort=nearest,limit=1] align xyz positioned ~0.5 ~-3 ~0.5 run function raumschach-minispiel:v1figur_dame

execute at @e[tag=EtiRSchMS.1Bauer,tag=EtiRSchMS.1Leuchten,sort=nearest,limit=1] run tag @e[distance=..2,tag=EtiRSchMS.1Bauer] add EtiRSchMS.1Besiegen
execute as @e[tag=EtiRSchMS.1Leuchten,tag=EtiRSchMS.1FigurBoden] at @e[tag=EtiRSchMS.1FigurPosition,sort=nearest,limit=1] align xyz run teleport @s ~0.5 ~-1 ~0.5
