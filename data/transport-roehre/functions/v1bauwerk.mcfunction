
execute if entity @p[distance=..5,y_rotation=-45..45] run teleport @s ~ ~ ~ 0 ~
execute if entity @p[distance=..5,y_rotation=45..135] run teleport @s ~ ~ ~ 90 ~
execute if entity @p[distance=..5,y_rotation=135..-135] run teleport @s ~ ~ ~ 180 ~
execute if entity @p[distance=..5,y_rotation=-135..-45] run teleport @s ~ ~ ~ 270 ~

execute if entity @p[distance=..5,x_rotation=-90..-30] run teleport @s ~ ~ ~ 0 -90
execute if entity @p[distance=..5,x_rotation=-30..70] run teleport @s ~ ~1 ~ ~ 0
execute if entity @p[distance=..5,x_rotation=70..90] run teleport @s ~ ~ ~ 0 90

execute at @s[tag=EtiTranPR.1Rohreingang] run fill ^-1 ^-1 ^-2 ^1 ^1 ^-2 minecraft:lime_stained_glass replace
execute at @s[tag=EtiTranPR.1Rohreingang] run fill ^-1 ^ ^ ^1 ^ ^-1 minecraft:lime_stained_glass replace
execute at @s[tag=EtiTranPR.1Rohreingang] run fill ^ ^-1 ^ ^ ^1 ^-1 minecraft:lime_stained_glass replace
execute at @s[tag=EtiTranPR.1Rohreingang] run fill ^ ^ ^ ^ ^ ^-2 minecraft:air replace
execute at @s[tag=EtiTranPR.1Rohreingang] run teleport @s ^ ^ ^-3

scoreboard players set VarTranPR.1AktuelleLaenge PZTranPR.1Ausl 0
execute at @s[tag=EtiTranPR.1Roehre] positioned ^ ^ ^1 if block ~ ~ ~ minecraft:gray_stained_glass run setblock ~ ~ ~ minecraft:air replace
execute at @s[tag=EtiTranPR.1Roehre] run function transport-roehre:v1roehre

execute at @s[tag=EtiTranPR.1Roehrenkreuzung] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:gray_stained_glass hollow

tag @s[tag=EtiTranPR.1Rohreingang] remove EtiTranPR.1Bauwerk
kill @s[tag=!EtiTranPR.1Rohreingang]
