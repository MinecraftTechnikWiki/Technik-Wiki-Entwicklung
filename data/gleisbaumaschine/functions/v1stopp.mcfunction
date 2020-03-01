# Löscht alle Gegenstände aus dem Inventar
clear @a[distance=..25] minecraft:armor_stand{gleisbaumaschine:"v1gegenstand"}

# Gibt eventuell auf dem Boden herumliegenden Gegenständen das Etikett, womit nachher alle Objekte, die das Etikett haben gelöscht werden
tag @e[type=minecraft:item,nbt={Item:{tag:{gleisbaumaschine:"v1gegenstand"} } }] add EtiGleisB.1Alle
kill @e[tag=EtiGleisB.1Alle]
