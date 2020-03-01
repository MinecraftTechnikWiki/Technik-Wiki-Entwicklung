# Das Punktestand-Ziel wird entfernt
scoreboard objectives remove PZLaUIr.2Gross

# Alle Rüstungsständer mit der entsprechenden Eigenschaft werden aus den Inventaren entfernt
clear @a minecraft:armor_stand{labyrinth-_und_irrgartengenerator:"v1gegenstand"}

# An der Position der Partikelwolken wird der Labyrinth-Gang entfernt
execute at @e[type=minecraft:area_effect_cloud,tag=EtiLaUIr.1Gang] run fill ~ ~ ~ ~-2 ~2 ~-2 minecraft:air replace

# Die eventuell auf den Boden geworfenen Gegenstände für das Labyrinth werden etikettiert und anschließend werden alle Objekte mit diesem Etikett entfernt
tag @e[type=minecraft:item,nbt={Item:{tag:{labyrinth-_und_irrgartengenerator:"v1gegenstand"} } }] add EtiLaUIr.1Alle
kill @e[tag=EtiLaUIr.1Alle]
