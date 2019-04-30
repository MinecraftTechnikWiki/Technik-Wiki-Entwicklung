
execute if block ~0.499 ~-1 ~ minecraft:air as @e[type=minecraft:armor_stand,name=ObjPfeilTS.1Kontrolleinheit] at @s if block ~1 ~-1 ~ minecraft:diamond_block run teleport @s ~0.2 ~ ~
execute if block ~-0.499 ~-1 ~ minecraft:air as @e[type=minecraft:armor_stand,name=ObjPfeilTS.1Kontrolleinheit] at @s if block ~-1 ~-1 ~ minecraft:diamond_block run teleport @s ~-0.2 ~ ~
execute if block ~ ~-1 ~0.499 minecraft:air as @e[type=minecraft:armor_stand,name=ObjPfeilTS.1Kontrolleinheit] at @s if block ~ ~-1 ~1 minecraft:diamond_block run teleport @s ~ ~ ~0.2
execute if block ~ ~-1 ~-0.499 minecraft:air as @e[type=minecraft:armor_stand,name=ObjPfeilTS.1Kontrolleinheit] at @s if block ~ ~-1 ~-1 minecraft:diamond_block run teleport @s ~ ~ ~-0.2

execute if block ~0.499 ~-1 ~ minecraft:air as @e[type=minecraft:armor_stand,name=ObjPfeilTS.1Plattform] at @s rotated as @p[tag=EtiPfeilTS.1Aktion] run teleport @p[tag=EtiPfeilTS.1Aktion] ~5 ~6 ~5 0 ~
execute if block ~ ~-1 ~0.499 minecraft:air as @e[type=minecraft:armor_stand,name=ObjPfeilTS.1Plattform] at @s rotated as @p[tag=EtiPfeilTS.1Aktion] run teleport @p[tag=EtiPfeilTS.1Aktion] ~5 ~6 ~5 0 ~
execute if block ~-0.499 ~-1 ~ minecraft:air as @e[type=minecraft:armor_stand,name=ObjPfeilTS.1Plattform] at @s rotated as @p[tag=EtiPfeilTS.1Aktion] run teleport @p[tag=EtiPfeilTS.1Aktion] ~5 ~6 ~5 0 ~
execute if block ~ ~-1 ~-0.499 minecraft:air as @e[type=minecraft:armor_stand,name=ObjPfeilTS.1Plattform] at @s rotated as @p[tag=EtiPfeilTS.1Aktion] run teleport @p[tag=EtiPfeilTS.1Aktion] ~5 ~6 ~5 0 ~
