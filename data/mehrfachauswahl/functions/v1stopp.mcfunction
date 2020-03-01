# Das Punktestand-Ziel wird entfernt.
scoreboard objectives remove PZMehrfA.1Klick

# Alle Rüstungsständer mit der speziellen Eigenschaft werden aus den Inventaren entfernt.
clear @a[distance=..50] minecraft:armor_stand{mehrfachauswahl:"v1gegenstand"}

# Alle Rüstungsständer als Objekt in der Welt oder als Drop, werden gelöscht.
tag @e[type=minecraft:item,nbt={Item:{tag:{mehrfachauswahl:"v1gegenstand"} } }] add EtiMehrfA.1Alle
kill @e[tag=EtiMehrfA.1Alle]
