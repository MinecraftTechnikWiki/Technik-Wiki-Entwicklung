# Das Punktestand-Ziel wird wieder entfernt.
scoreboard objectives remove PZKontPS.2Nr

# Allen Spieler die das Etikett besitzen, wird es entfernt.
tag @a[tag=EtiKontPS.2Nummer] remove EtiKontPS.2Nummer

# Der Parcours wird wieder entfernt und die dabei droppenden Blöcke erhalten ein Etikett.
fill ~3 ~ ~-2 ~18 ~10 ~-17 minecraft:air replace
tag @e[dx=18,dy=15,dz=-18,type=minecraft:item,nbt={Item:{id:"minecraft:light_weighted_pressure_plate"} }] add EtiKontPS.2Alle

# Alle Objekte mit dem Etikett werden entfernt
kill @e[tag=EtiKontPS.2Alle]
