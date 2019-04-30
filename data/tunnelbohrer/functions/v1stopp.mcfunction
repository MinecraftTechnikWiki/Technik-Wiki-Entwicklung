# Das Punktestand-Ziel wird entfernt
scoreboard objectives remove PZTuBohr.1Bohr

# Alle Gegenstände die für das Bohren benötigt wurden oder entstanden sind, werden gelöscht
clear @a minecraft:armor_stand{Tunnelbohrer.1:true}
clear @a minecraft:coal{Tunnelbohrer.1:true}
clear @a[distance=..15] minecraft:granite

# Die Felswand aus Granit wird entfernt
fill ~18 ~ ~ ~39 ~20 ~20 minecraft:air replace minecraft:granite

# Die gedroppten Granit-Drops, sowie der Gegenstand für den Tunnelbohrer erhalten ein Etikett, sodass alle Objekte mit dem Etikett danach gelöscht werden
execute positioned ~18 ~-1 ~ run tag @e[dx=39,dy=20,dz=20,type=minecraft:item,nbt={Item:{id:"minecraft:granite"} } ] add EtiTuBohr.1Alle
tag @e[type=minecraft:item,nbt={Item:{tag:{Tunnelbohrer.1:true} } } ] add EtiTuBohr.1Alle
kill @e[tag=EtiTuBohr.1Alle]
