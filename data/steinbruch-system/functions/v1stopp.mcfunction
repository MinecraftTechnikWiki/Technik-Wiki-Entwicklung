# Das Punktestand-Ziel wird entfernt
scoreboard objectives remove PZStBrSy.1Ausl

# Alle Gegenstände die für das Bohren benötigt wurden oder entstanden sind, werden gelöscht
clear @a[nbt={Inventory:[{tag:{EigStBrSy.1Alle:true} } ] }] minecraft:granite
clear @a minecraft:armor_stand{EigStBrSy.1Alle:true}

tag @a[tag=EtiStBrSy.1Auswahl] remove EtiStBrSy.1Auswahl

# Die Felswand aus Granit wird entfernt
fill ~18 ~ ~ ~39 ~21 ~20 minecraft:air replace

# Die gedroppten Granit-Drops, sowie der Gegenstand für den Tunnelbohrer erhalten ein Etikett, sodass alle Objekte mit dem Etikett danach gelöscht werden
execute positioned ~18 ~-1 ~ run tag @e[dx=39,dy=20,dz=20,type=minecraft:item,nbt={Item:{id:"minecraft:granite"} } ] add EtiStBrSy.1Alle
tag @e[type=minecraft:item,nbt={Item:{tag:{EigStBrSy.1Alle:true} } } ] add EtiStBrSy.1Alle
kill @e[tag=EtiStBrSy.1Alle]
