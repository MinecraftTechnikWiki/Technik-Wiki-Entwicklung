
#execute if entity @p[distance=..5,y_rotation=-45..45] run teleport @s ~ ~ ~ 0 ~
#execute if entity @p[distance=..5,y_rotation=45..135] run teleport @s ~ ~ ~ 90 ~
#execute if entity @p[distance=..5,y_rotation=135..-135] run teleport @s ~ ~ ~ 180 ~
#execute if entity @p[distance=..5,y_rotation=-135..-45] run teleport @s ~ ~ ~ 270 ~


execute unless entity @s[x_rotation=-30..70] run tag @s add EtiTranPR.1Vertikal
#execute if entity @p[distance=..5,x_rotation=-90..-30] run teleport @s ~ ~ ~ 0 -90
#execute if entity @p[distance=..5,x_rotation=-30..70] run teleport @s ~ ~1 ~ ~ 0
#execute if entity @p[distance=..5,x_rotation=70..90] run teleport @s ~ ~ ~ 0 90


#execute as @a[tag=EtiTranPR.1Klempner] at @s anchored eyes rotated ~ 0 positioned ^ ^-0.4 ^ if entity @s[distance=..0.1] run teleport @s ^ ^ ^0.3
execute anchored eyes rotated ~ 0 positioned ^ ^-0.4 ^ run tag @s[distance=..0.1] add EtiTranPR.1Kriechen
execute if entity @s[tag=EtiTranPR.1Kriechen,tag=!EtiTranPR.1Vertikal] rotated ~ 0 run teleport @s ^ ^ ^0.3

execute if entity @s[tag=EtiTranPR.1Vertikal] if block ~-1 ~ ~ minecraft:lime_stained_glass if block ~1 ~ ~ minecraft:lime_stained_glass if block ~ ~ ~-1 minecraft:lime_stained_glass if block ~ ~ ~-1 minecraft:lime_stained_glass run teleport @s ^ ^ ^0.3

tag @s[tag=EtiTranPR.1Kriechen] remove EtiTranPR.1Kriechen
