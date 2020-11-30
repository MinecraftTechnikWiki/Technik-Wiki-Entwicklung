
teleport @s[y_rotation=135..-135] ~ ~ ~ 180 0
teleport @s[y_rotation=-135..-45] ~ ~ ~ -90 0
teleport @s[y_rotation=-45..45] ~ ~ ~ 0 0
teleport @s[y_rotation=45..135] ~ ~ ~ 90 0

execute if block ~ ~-1 ~ #minecraft:slabs run teleport @s ~ ~-1 ~

execute at @s positioned ^ ^ ^-16 if block ~ ~ ~ minecraft:water run function schiff:v1erstellen_hoehe
execute if entity @s[tag=!EtiSchiff.1Erstellt] run tellraw @p "no"

kill @s
