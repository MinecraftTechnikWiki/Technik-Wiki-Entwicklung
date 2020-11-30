
execute if block ~ ~ ~ minecraft:diorite_stairs[half=bottom] if block ^1 ^ ^ minecraft:polished_diorite_stairs[half=top] if block ^-1 ^ ^ minecraft:polished_diorite_stairs[half=top] run tag @s add EtiSchwB.p1FahrbahnVorhanden

execute if entity @s[tag=!EtiSchwB.p1FahrbahnVorhanden] if block ~ ~ ~ minecraft:air if block ^1 ^ ^ minecraft:air if block ^2 ^ ^ minecraft:air if block ^-1 ^ ^ minecraft:air if block ^-2 ^ ^ minecraft:air positioned ~ ~-1 ~ run function schwebebahn:vp1fahrspur
