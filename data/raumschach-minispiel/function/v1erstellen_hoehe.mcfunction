
execute if score VarRSchMS.1Muster PZRSchMS.1Brett matches 1 run scoreboard players add VarRSchMS.1Hoehe PZRSchMS.1Brett 1

scoreboard players operation @s PZRSchMS.1Farbe = VarRSchMS.1Laenge PZRSchMS.1Brett
scoreboard players operation @s PZRSchMS.1Farbe += VarRSchMS.1Breite PZRSchMS.1Brett
scoreboard players operation @s PZRSchMS.1Farbe += VarRSchMS.1Hoehe PZRSchMS.1Brett
scoreboard players operation @s PZRSchMS.1Farbe %= KonstRSchMS.1ZWEI PZRSchMS.1Brett

execute unless score VarRSchMS.1Muster PZRSchMS.1Brett matches 1 run scoreboard players add VarRSchMS.1Hoehe PZRSchMS.1Brett 1

scoreboard players operation @s PZRSchMS.1Zeile = VarRSchMS.1Breite PZRSchMS.1Brett
scoreboard players operation @s PZRSchMS.1Spalte = VarRSchMS.1Laenge PZRSchMS.1Brett
scoreboard players operation @s PZRSchMS.1Brett = VarRSchMS.1Hoehe PZRSchMS.1Brett

execute if score VarRSchMS.1Hoehe PZRSchMS.1Brett < VarRSchMS.1HoeheMax PZRSchMS.1Brett run summon minecraft:area_effect_cloud ~ ~8 ~ {NoGravity:true,Duration:-1,Age:-2147483648,WaitTime:-2147483648,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Tags:["EtiRSchMS.1Alle","EtiRSchMS.1Feld"]}
execute if score VarRSchMS.1Hoehe PZRSchMS.1Brett < VarRSchMS.1HoeheMax PZRSchMS.1Brett positioned ~ ~8 ~ as @n[distance=..3,type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld] run function raumschach-minispiel:v1erstellen_hoehe
