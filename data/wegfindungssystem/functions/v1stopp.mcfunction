# Die beiden Punktestand-Ziele werden entfernt.
scoreboard objectives remove PZWegFS.1Wert
scoreboard objectives remove PZWegFS.1Vergl

# Die Rüstungsständer werden aus dem Inventar wieder gelöscht.
clear @a minecraft:armor_stand{wegfindungssystem:"v1gegenstand"}

# Falls die Rüstungsständer auf den Boden gedroppt wurden erhalten sie ein Etikett. Alle Objekte mit dem Etikett werden gelöscht.
tag @e[type=minecraft:item,nbt={Item:{tag:{wegfindungssystem:"v1gegenstand"} } }] add EtiWegFS.1Alle
kill @e[tag=EtiWegFS.1Alle]
