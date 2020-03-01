# Die beiden Teams werden entfernt.
team remove TMKontPS.4ROT
team remove TMKontPS.4BLAU

# Die vier Punktestand-Ziele werden entfernt.
scoreboard objectives remove PZKontPS.4Wert
scoreboard objectives remove PZKontPS.4Dreh

scoreboard objectives remove PZKontPS.4ROT
scoreboard objectives remove PZKontPS.4BLAU

# Die Rüstungsständer mit entsprechenden Eigenschaft werden aus dem Inventar gelöscht.
clear @a minecraft:armor_stand{kontrollpunkt-system:"v4gegenstand"}

# Die Kontrollpunkte werden durch Luft ersetzt.
execute at @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt] run fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:air replace

# Gegenstände die auf dem Boden geworfen wurden, erhalten ein Etikett und alle Objekte mit diesem Etikett werden entfernt.
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:armor_stand",tag:{kontrollpunkt-system:"v4gegenstand"} } }] add EtiKontPS.4Alle
kill @e[tag=EtiKontPS.4Alle]
