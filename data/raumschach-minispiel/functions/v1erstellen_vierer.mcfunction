
scoreboard players set VarRSchMS.1HoeheMax PZRSchMS.1Brett 3

scoreboard players set VarRSchMS.1Laenge PZRSchMS.1Brett 0
scoreboard players set VarRSchMS.1BreiteMax PZRSchMS.1Brett 3
scoreboard players set VarRSchMS.1LaengeMax PZRSchMS.1Brett 4
execute positioned ~-15 ~ ~5 run function raumschach-minispiel:v1erstellen_laenge

scoreboard players set VarRSchMS.1Farbe PZRSchMS.1Farbe 0
scoreboard players set VarRSchMS.1Rotation PZRSchMS.1Brett 0

execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=2..4,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=3}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_springer
execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=1..5,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=2..4}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_turm
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=3,PZRSchMS.1Spalte=1}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_koenig

execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=2,PZRSchMS.1Zeile=2..5,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=3..4}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_laeufer
execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=2,PZRSchMS.1Zeile=1..4,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=2..3}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_einhorn
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=2,PZRSchMS.1Zeile=3,PZRSchMS.1Spalte=1}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_dame

execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=1..2,PZRSchMS.1Zeile=1..5,PZRSchMS.1Spalte=2}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_bauer

tag @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld] add EtiRSchMS.1FeldFigur

scoreboard players set VarRSchMS.1Laenge PZRSchMS.1Brett 0
scoreboard players set VarRSchMS.1BreiteMax PZRSchMS.1Brett 4
scoreboard players set VarRSchMS.1LaengeMax PZRSchMS.1Brett 3
execute positioned ~5 ~ ~-15 run function raumschach-minispiel:v1erstellen_laenge

scoreboard players set VarRSchMS.1Farbe PZRSchMS.1Farbe 1
scoreboard players set VarRSchMS.1Rotation PZRSchMS.1Brett 1

execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=2..4,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=3}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_springer
execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=1..5,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=2..4}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_turm
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=3,PZRSchMS.1Spalte=1}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_koenig

execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=2,PZRSchMS.1Zeile=2..5,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=3..4}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_laeufer
execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=2,PZRSchMS.1Zeile=1..4,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=2..3}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_einhorn
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=2,PZRSchMS.1Zeile=3,PZRSchMS.1Spalte=1}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_dame

execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=1..2,PZRSchMS.1Zeile=1..5,PZRSchMS.1Spalte=2}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_bauer

tag @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld] add EtiRSchMS.1FeldFigur

scoreboard players set VarRSchMS.1Muster PZRSchMS.1Brett 1
scoreboard players set VarRSchMS.1Laenge PZRSchMS.1Brett 0
scoreboard players set VarRSchMS.1BreiteMax PZRSchMS.1Brett 4
scoreboard players set VarRSchMS.1LaengeMax PZRSchMS.1Brett 3
execute positioned ~5 ~ ~30 run function raumschach-minispiel:v1erstellen_laenge

scoreboard players set VarRSchMS.1Farbe PZRSchMS.1Farbe 2
scoreboard players set VarRSchMS.1Rotation PZRSchMS.1Brett 2

execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=2..4,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=3}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_springer
execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=1..5,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=2..4}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_turm
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=3,PZRSchMS.1Spalte=1}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_koenig

execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=2,PZRSchMS.1Zeile=2..5,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=3..4}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_laeufer
execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=2,PZRSchMS.1Zeile=1..4,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=2..3}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_einhorn
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=2,PZRSchMS.1Zeile=3,PZRSchMS.1Spalte=1}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_dame

execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=1..2,PZRSchMS.1Zeile=1..5,PZRSchMS.1Spalte=2}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_bauer

tag @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld] add EtiRSchMS.1FeldFigur

scoreboard players set VarRSchMS.1Laenge PZRSchMS.1Brett 0
scoreboard players set VarRSchMS.1BreiteMax PZRSchMS.1Brett 3
scoreboard players set VarRSchMS.1LaengeMax PZRSchMS.1Brett 4
execute positioned ~30 ~ ~5 run function raumschach-minispiel:v1erstellen_laenge

scoreboard players set VarRSchMS.1Farbe PZRSchMS.1Farbe 3
scoreboard players set VarRSchMS.1Rotation PZRSchMS.1Brett 3

execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=2..4,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=3}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_springer
execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=1..5,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=2..4}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_turm
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=1,PZRSchMS.1Zeile=3,PZRSchMS.1Spalte=1}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_koenig

execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=2,PZRSchMS.1Zeile=2..5,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=3..4}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_laeufer
execute as @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=2,PZRSchMS.1Zeile=1..4,PZRSchMS.1Spalte=1}] unless entity @s[scores={PZRSchMS.1Zeile=2..3}] at @s positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_einhorn
execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=2,PZRSchMS.1Zeile=3,PZRSchMS.1Spalte=1}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_dame

execute at @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld,tag=!EtiRSchMS.1FeldFigur,scores={PZRSchMS.1Brett=1..2,PZRSchMS.1Zeile=1..5,PZRSchMS.1Spalte=2}] positioned ~ ~1 ~ run function raumschach-minispiel:v1figur_bauer

tag @e[type=minecraft:area_effect_cloud,tag=EtiRSchMS.1Feld] add EtiRSchMS.1FeldFigur

scoreboard players set VarRSchMS.1Muster PZRSchMS.1Brett 0
scoreboard players set VarRSchMS.1Laenge PZRSchMS.1Brett 0
scoreboard players set VarRSchMS.1BreiteMax PZRSchMS.1Brett 6
scoreboard players set VarRSchMS.1LaengeMax PZRSchMS.1Brett 6
function raumschach-minispiel:v1erstellen_laenge
