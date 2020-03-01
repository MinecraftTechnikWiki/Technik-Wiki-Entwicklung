# Das Punktestand-Ziel wird entfernt.
scoreboard objectives remove PZLaUIr.2Gross

# Die Rüstungsständer mit der speziellen Eigenschaft werden aus allen Spielern-Inventaren gelöscht.
clear @a minecraft:armor_stand{labyrinth-_und_irrgartengenerator:"v2gegenstand"}

# An der Position der Partikelwolken wird Luft platziert, sodass kein Irrgarten mehr übrig bleibt.
execute at @e[type=minecraft:area_effect_cloud,tag=EtiLaUIr.2Gang] run fill ~ ~ ~ ~-2 ~2 ~-2 minecraft:air replace

# Die gedroppten Rüstungsständer erhalten ein Etikett und alle Objekte mit diesem Etikett werden entfernt.
tag @e[type=minecraft:item,nbt={Item:{tag:{labyrinth-_und_irrgartengenerator:"v2gegenstand"} } }] add EtiLaUIr.2Alle
kill @e[tag=EtiLaUIr.2Alle]
