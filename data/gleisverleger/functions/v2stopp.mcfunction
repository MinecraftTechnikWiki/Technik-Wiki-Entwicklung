# Löscht alle Gegenstände aus dem Inventar
clear @a[distance=..25] minecraft:armor_stand{Gleisverleger.2:true}

# Gibt eventuell auf dem Boden herumliegenden Gegenständen das Etikett, womit nachher alle Objekte, die das Etikett haben gelöscht werden
tag @e[type=minecraft:item,nbt={Item:{tag:{Gleisverleger.2:true} } }] add EtiGleisV.2Alle
kill @e[tag=EtiGleisV.2Alle]
