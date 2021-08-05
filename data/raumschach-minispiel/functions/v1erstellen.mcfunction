
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace

execute as @e[tag=EtiRSchMS.1Alle] at @s run teleport @s ~ -255 ~
kill @e[tag=EtiRSchMS.1Alle]
scoreboard players set @a PZSchMS.1Brett 0

execute if score VarRSchMS.1Variante PZRSchMS.1Brett matches 0..1 run scoreboard players set VarRSchMS.1Laenge PZRSchMS.1Brett 0
execute if score VarRSchMS.1Variante PZRSchMS.1Brett matches 0..1 run execute store result score VarRSchMS.1HoeheMax PZRSchMS.1Brett store result score VarRSchMS.1BreiteMax PZRSchMS.1Brett run scoreboard players set VarRSchMS.1LaengeMax PZRSchMS.1Brett 5
execute if score VarRSchMS.1Variante PZRSchMS.1Brett matches 0..1 run function raumschach-minispiel:v1erstellen_laenge

execute if score VarRSchMS.1Variante PZRSchMS.1Brett matches 2 run function raumschach-minispiel:v1erstellen_vierer

execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=1,PZRSchMS.1Farbe=0}] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:white_concrete replace
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=1,PZRSchMS.1Farbe=1}] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:black_concrete replace

execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=2..,PZRSchMS.1Farbe=0}] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:white_stained_glass replace
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=2..,PZRSchMS.1Farbe=1}] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:black_stained_glass replace

execute if score VarRSchMS.1Variante PZRSchMS.1Brett matches 0 run function raumschach-minispiel:v1erstellen_2_figuren
execute if score VarRSchMS.1Variante PZRSchMS.1Brett matches 1 run function raumschach-minispiel:v1erstellen_3_figuren

execute as @e[tag=EtiRSchMS.1Farbe,scores={PZRSchMS.1Farbe=1}] store result entity @s ArmorItems[].tag.display.color int 1 run scoreboard players get KonstRSchMS.1TUERKIS PZRSchMS.1Farbe
execute as @e[tag=EtiRSchMS.1Farbe,scores={PZRSchMS.1Farbe=2}] store result entity @s ArmorItems[].tag.display.color int 1 run scoreboard players get KonstRSchMS.1SCHWARZ PZRSchMS.1Farbe
execute as @e[tag=EtiRSchMS.1Farbe,scores={PZRSchMS.1Farbe=3}] store result entity @s ArmorItems[].tag.display.color int 1 run scoreboard players get KonstRSchMS.1ORANGE PZRSchMS.1Farbe

scoreboard players set @e[tag=EtiRSchMS.1Anklickbar] PZRSchMS.1Spielz 0
