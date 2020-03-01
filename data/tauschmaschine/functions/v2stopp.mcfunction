# Das Punktestand-Ziel wird gelöscht
scoreboard objectives remove PZTausM.2Ausl

# Alle Gegenstände die durch das Befehle-System gegeben wurden, werden entfernt
clear @a minecraft:armor_stand{tauschmaschine:"v2gegenstand"}
clear @a minecraft:emerald{tauschmaschine:"v2gegenstand"}
clear @a minecraft:stone{tauschmaschine:"v2gegenstand"}
clear @a minecraft:oak_log{tauschmaschine:"v2gegenstand"}
clear @a minecraft:sponge{tauschmaschine:"v2gegenstand"}
clear @a minecraft:redstone{tauschmaschine:"v2gegenstand"}
clear @a minecraft:water_bucket{tauschmaschine:"v2gegenstand"}

# Gegenstände die auf den Boden geworfen sind, werden mit einem Etikett ausgestattet und alle Objekte mit diesem Etikett werden entfernt
tag @e[type=minecraft:item,nbt={Item:{tag:{tauschmaschine:"v2gegenstand"} } }] add EtiTausM.2Alle
kill @e[tag=EtiTausM.2Alle]
