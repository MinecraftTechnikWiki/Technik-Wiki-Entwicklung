# Löscht alle Gegenstände aus dem Inventar
clear @a[distance=..25] minecraft:armor_stand{Brueckenbauer.2:true}

# Gegenstände für den Brückenbauer erhalten das Etikett, welches im Anschluss auch für alle anderen Brückenbauer verwendet wird um sie zu löschen
tag @e[type=minecraft:item,nbt={Item:{tag:{Brueckenbauer.2:true} } }] add EtiBruB.2Alle
kill @e[tag=EtiBruB.2Alle]
