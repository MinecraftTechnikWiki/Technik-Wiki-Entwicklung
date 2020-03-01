# Die beiden Teams werden wieder entfernt
team remove TMKontPS.3ROT
team remove TMKontPS.3BLAU

# Das Punktestand-Ziel wird entfernt
scoreboard objectives remove PZKontPS.3Wurf

# Das Totem mit bestimmter Eigenschaft wird entfernt.
clear @a minecraft:totem_of_undying{kontrollpunkt-system:"v3gegenstand"}

# Der Parcours wird wieder entfernt und die dabei droppenden Blöcke erhalten ein Etikett.
fill ~3 ~ ~-2 ~21 ~10 ~-19 minecraft:air replace
tag @e[dx=20,dy=20,dz=-20,type=minecraft:item,nbt={Item:{id:"minecraft:light_weighted_pressure_plate"} }] add EtiKontPS.3Alle

# Falls Gegenstände mit entsprechender Eigenschaft auf dem Boden liegen erhalten sie ein Etikett und alle Objekte mit diesem werden gelöscht.
tag @e[type=minecraft:item,nbt={Item:{tag:{kontrollpunkt-system:"v3gegenstand"} } }] add EtiKontPS.3Alle
kill @e[tag=EtiKontPS.3Alle]
