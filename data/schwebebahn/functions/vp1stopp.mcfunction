# Die Punkte-Ziele werden wieder gelöscht.
scoreboard objectives remove PZSchwB.p1Ausgewaehlt
scoreboard objectives remove PZSchwB.p1Auswahl
scoreboard objectives remove PZSchwB.p1Ausl
scoreboard objectives remove PZSchwB.p1Wert

# Die Rüstungsständer und das Holzschwert werden entfernt.
clear @a minecraft:armor_stand{EigSchwB.p1Alle:true}
clear @a minecraft:wooden_sword{EigSchwB.p1Alle:true}

# Die Schwebahn wird entfernt.
execute at @e[type=minecraft:marker,tag=EtiSchwB.p1Bahn] run fill ^-2 ^ ^-20 ^2 ^5 ^20 minecraft:air replace

# Drops und alle Objekte werden entfernt.
tag @e[type=minecraft:item,nbt={Item:{tag:{EigSchwB.p1Alle:true} } }] add EtiSchwB.p1Alle
kill @e[tag=EtiSchwB.p1Alle]

# Der Chunk wird wieder entladen.
forceload remove ~ ~
