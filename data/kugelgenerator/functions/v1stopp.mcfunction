
scoreboard objectives remove PZKugelG.1Hor
scoreboard objectives remove PZKugelG.1Vert

execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.1Flamme] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:air replace minecraft:coarse_dirt

clear @a[distance=..25] minecraft:armor_stand{display:{Lore:["Kugelgenerator.1"]} }
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Kugelgenerator.1"]} } } }] add EtiKugelG.1Alle
kill @e[tag=EtiKugelG.1Alle]
