# Löscht alle Gegenstände aus dem Inventar
clear @a[distance=..25] minecraft:armor_stand{gleisbruecken-_und_-tunnelbaumaschine:"v2gegenstand"}

# Gegenstände für den Brückenbauer erhalten das Etikett, welches im Anschluss auch für alle anderen Brückenbauer verwendet wird um sie zu löschen
tag @e[type=minecraft:item,nbt={Item:{tag:{gleisbruecken-_und_-tunnelbaumaschine:"v2gegenstand"} } }] add EtiGBuTB.2Alle
kill @e[tag=EtiGBuTB.2Alle]
