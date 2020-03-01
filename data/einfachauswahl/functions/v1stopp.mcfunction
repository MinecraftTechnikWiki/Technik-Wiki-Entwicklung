# Das Punktestand-Ziel wird gelöscht.
scoreboard objectives remove PZEinfA.1Klick

# Die Rüstungsständer mit der bestimmten Eigenschaft werden entfernt
clear @a[distance=..50] minecraft:armor_stand{einfachauswahl:"v1gegenstand"}

# Alle platzierten und auf dem Boden liegende Rüstungsständer werden gelöscht.
tag @e[type=minecraft:item,nbt={Item:{tag:{einfachauswahl:"v1gegenstand"} } }] add EtiEinfA.1Alle
kill @e[tag=EtiEinfA.1Alle]
