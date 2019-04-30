
scoreboard objectives remove PZKugelG.2Hor
scoreboard objectives remove PZKugelG.2Vert

execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Flamme] run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 minecraft:air replace minecraft:coarse_dirt

clear @a[distance=..25] minecraft:armor_stand{display:{Lore:["Kugelgenerator.2"]} }
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Kugelgenerator.2"]} } } }] add EtiKugelG.2Alle
kill @e[tag=EtiKugelG.2Alle]
