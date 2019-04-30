
scoreboard objectives remove PZKugelG.3Hor
scoreboard objectives remove PZKugelG.3Vert

execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.3Flamme] run fill ~-23 ~-23 ~-23 ~ ~23 ~ minecraft:air replace minecraft:coarse_dirt
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.3Flamme] run fill ~ ~-23 ~ ~23 ~23 ~23 minecraft:air replace minecraft:coarse_dirt
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.3Flamme] run fill ~-23 ~-23 ~23 ~ ~23 ~ minecraft:air replace minecraft:coarse_dirt
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.3Flamme] run fill ~ ~-23 ~ ~23 ~23 ~-23 minecraft:air replace minecraft:coarse_dirt

clear @a[distance=..25] minecraft:armor_stand{display:{Lore:["Kugelgenerator.3"]} }
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Kugelgenerator.3"]} } } }] add EtiKugelG.3Alle
kill @e[tag=EtiKugelG.3Alle]
