# Das Punktestand-Ziel wird gelöscht
scoreboard objectives remove PZTausM.2Ausl

# Alle Gegenstände die durch das Befehle-System gegeben wurden, werden entfernt
clear @a minecraft:armor_stand{EigTausM.2Alle:true}
clear @a minecraft:emerald{EigTausM.2Alle:true}
clear @a minecraft:stone{EigTausM.2Alle:true}
clear @a minecraft:oak_log{EigTausM.2Alle:true}
clear @a minecraft:sponge{EigTausM.2Alle:true}
clear @a minecraft:redstone{EigTausM.2Alle:true}
clear @a minecraft:water_bucket{EigTausM.2Alle:true}

# Gegenstände die auf den Boden geworfen sind, werden mit einem Etikett ausgestattet und alle Objekte mit diesem Etikett werden entfernt
tag @e[type=minecraft:item,nbt={Item:{tag:{EigTausM.2Alle:true} } }] add EtiTausM.2Alle
kill @e[tag=EtiTausM.2Alle]
