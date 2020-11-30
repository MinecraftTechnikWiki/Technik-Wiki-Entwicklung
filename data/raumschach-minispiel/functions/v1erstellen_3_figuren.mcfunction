
scoreboard players set VarRSchMS.1Farbe PZRSchMS.1Farbe 0
scoreboard players set VarRSchMS.1Rotation PZRSchMS.1Brett 0

execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=2..4,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=3}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_springer
execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=1..5,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=2..4}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_turm
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=3,PZRSchMS.1Spalte=1}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_koenig

execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=2..5,PZRSchMS.1Spalte=2}] unless entity @s[scores={PZRSchMS.1Zeile=3..4}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_laeufer
execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=1..4,PZRSchMS.1Spalte=2}] unless entity @s[scores={PZRSchMS.1Zeile=2..3}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_einhorn
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=3,PZRSchMS.1Spalte=2}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_dame

execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=2,PZRSchMS.1Zeile=1..5,PZRSchMS.1Spalte=1..2}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_bauer

scoreboard players set VarRSchMS.1Farbe PZRSchMS.1Farbe 3
scoreboard players set VarRSchMS.1Rotation PZRSchMS.1Brett 2

execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=2..4,PZRSchMS.1Zeile=1,PZRSchMS.1Spalte=5}] unless entity @s[scores={PZRSchMS.1Brett=3}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_springer
execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=1..5,PZRSchMS.1Zeile=1,PZRSchMS.1Spalte=5}] unless entity @s[scores={PZRSchMS.1Brett=2..4}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_turm
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=3,PZRSchMS.1Zeile=1,PZRSchMS.1Spalte=5}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_koenig

execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=2..5,PZRSchMS.1Zeile=1,PZRSchMS.1Spalte=4}] unless entity @s[scores={PZRSchMS.1Brett=3..4}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_laeufer
execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=1..4,PZRSchMS.1Zeile=1,PZRSchMS.1Spalte=4}] unless entity @s[scores={PZRSchMS.1Brett=2..3}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_einhorn
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=3,PZRSchMS.1Zeile=1,PZRSchMS.1Spalte=4}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_dame

execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=1..5,PZRSchMS.1Zeile=2,PZRSchMS.1Spalte=4..5}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_bauer

scoreboard players set VarRSchMS.1Farbe PZRSchMS.1Farbe 2
scoreboard players set VarRSchMS.1Rotation PZRSchMS.1Brett 1

execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=5,PZRSchMS.1Zeile=5,PZRSchMS.1Spalte=2..4}] unless entity @s[scores={PZRSchMS.1Spalte=3}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_springer
execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=5,PZRSchMS.1Zeile=5,PZRSchMS.1Spalte=1..5}] unless entity @s[scores={PZRSchMS.1Spalte=2..4}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_turm
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=5,PZRSchMS.1Zeile=5,PZRSchMS.1Spalte=3}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_koenig

execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=4,PZRSchMS.1Zeile=5,PZRSchMS.1Spalte=2..5}] unless entity @s[scores={PZRSchMS.1Spalte=3..4}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_laeufer
execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=4,PZRSchMS.1Zeile=5,PZRSchMS.1Spalte=1..4}] unless entity @s[scores={PZRSchMS.1Spalte=2..3}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_einhorn
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=4,PZRSchMS.1Zeile=5,PZRSchMS.1Spalte=3}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_dame

execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,scores={PZRSchMS.1Brett=4..5,PZRSchMS.1Zeile=4,PZRSchMS.1Spalte=1..5}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_bauer
