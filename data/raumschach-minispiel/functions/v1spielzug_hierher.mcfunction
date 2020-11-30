
execute if entity @e[tag=EtiRSchMS.1BauerWandlung] run function raumschach-minispiel:v1spielzug_bauer

data merge entity @s[tag=EtiRSchMS.1KoenigAufgeben] {Health:30.0f}
execute if entity @s[tag=EtiRSchMS.1KoenigAufgeben] positioned ~ ~-8.5 ~ run function raumschach-minispiel:v1spielzug_anzeigen
execute if entity @s[tag=EtiRSchMS.1KoenigAufgeben] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dx=1,dy=-10,dz=1,type=minecraft:shulker,tag=EtiRSchMS.1ZugAuswahl,tag=!EtiRSchMS.1KoenigAufgeben,sort=furthest,limit=1] {Health:29.0f}

execute as @e[type=minecraft:shulker,tag=EtiRSchMS.1ZugAuswahl,nbt=!{Health:30.0f}] at @s run function raumschach-minispiel:v1spielzug
