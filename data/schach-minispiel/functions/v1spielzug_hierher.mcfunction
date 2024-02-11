
execute if entity @s[tag=EtiSchMS.1Mannschaft] run function schach-minispiel:v1spielzug_mannschaft

execute if entity @e[tag=EtiSchMS.1BauerWandlung] run function schach-minispiel:v1spielzug_bauer

data merge entity @s[tag=EtiSchMS.1KoenigAufgeben] {Health:30.0f}
execute if entity @s[tag=EtiSchMS.1KoenigAufgeben] positioned ~ ~-8.5 ~ run function schach-minispiel:v1spielzug_anzeigen
execute if entity @s[tag=EtiSchMS.1KoenigAufgeben] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dx=1,dy=-10,dz=1,type=minecraft:shulker,tag=EtiSchMS.1ZugAuswahl,tag=!EtiSchMS.1KoenigAufgeben,sort=furthest,limit=1] {Health:29.0f}

execute as @e[type=minecraft:shulker,tag=EtiSchMS.1ZugAuswahl,nbt=!{Health:30.0f}] at @s run function schach-minispiel:v1spielzug
