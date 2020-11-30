
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiHordMS.1Alle","EtiHordMS.1Bereich"]}

fill ~-1 ~ ~-1 ~10 ~5 ~10 minecraft:stone_bricks replace minecraft:air

scoreboard players add VarHordMS.1Laenge PZHordMS.1Ausl 1
execute if score VarHordMS.1Laenge PZHordMS.1Ausl matches ..5 positioned ~ ~ ~-10 run function horde-minispiel:v1erstellen_laenge
