# Das Punkte-Ziel wird entfernt und somit alle Variablen und Werten in dessen Zusammenhang.
scoreboard objectives remove PZStraBM.1Wert

# Die verwendeten Gegenstände werden gelöscht.
clear @a minecraft:fishing_rod{EigStraBM.1Alle:true}
clear @a minecraft:armor_stand{EigStraBM.1Alle:true}
clear @a minecraft:gray_concrete{EigStraBM.1Alle:true}
clear @a minecraft:quartz_block{EigStraBM.1Alle:true}
clear @a minecraft:stone_brick_slab{EigStraBM.1Alle:true}

# Das noch eventuell vorhandene Etikett wird entfernt.
tag @a[tag=EtiStraBM.1Auswahl] remove EtiStraBM.1Auswahl

# Alle fallengelassenen Gegenstände und Objekte werden entfernt.
tag @e[type=minecraft:item,nbt={Item:{tag:{EigStraBM.1Alle:true} } }] add EtiStraBM.1Alle
kill @e[tag=EtiStraBM.1Alle]

# Der Chunk wird deaktiviert.
forceload remove ~ ~
