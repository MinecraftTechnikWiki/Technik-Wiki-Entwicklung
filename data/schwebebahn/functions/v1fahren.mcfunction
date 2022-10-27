
execute as @e[tag=EtiSchwB.1Bahn,sort=nearest,limit=3] at @s if block ^ ^6 ^1 minecraft:magenta_glazed_terracotta run teleport @s ^ ^ ^0.5

execute if entity @s[y_rotation=135..-135] as @a[dx=2,dy=7,dz=-21] at @s run teleport ~ ~ ~-1
execute if entity @s[y_rotation=-135..-45] as @a[dx=21,dy=7,dz=2] at @s run teleport ~1 ~ ~
execute if entity @s[y_rotation=-45..45] as @a[dx=-2,dy=7,dz=21] at @s run teleport ~ ~ ~1
execute if entity @s[y_rotation=45..135] as @a[dx=-21,dy=7,dz=-2] at @s run teleport ~-1 ~ ~
