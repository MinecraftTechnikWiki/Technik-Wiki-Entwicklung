# Die Punkte-Ziele werden gelöscht.
scoreboard objectives remove PZSchwB.p2Ausgewaehlt
scoreboard objectives remove PZSchwB.p2Auswahl
scoreboard objectives remove PZSchwB.p2Ausl
scoreboard objectives remove PZSchwB.p2Wert

# Die Rüstungsständer und das Schwert werden aus dem Inventar entfernt.
clear @a minecraft:armor_stand{EigSchwB.p2Alle:true}
clear @a minecraft:wooden_sword{EigSchwB.p2Alle:true}

# Die Bahn wird entfernt.
execute at @e[type=minecraft:marker,tag=EtiSchwB.p2Bahn] run fill ^-2 ^ ^-14 ^2 ^5 ^14 minecraft:air replace

# Die Güter-Lore mit der Benutzeroberfläche wird geleert, damit sie beim Löschen nicht ihren Inhalt droppt.
execute as @e[type=minecraft:chest_minecart,tag=EtiSchwB.p2Menu] run data remove entity @s Items

# Die Drops und Objekte werden gelöscht.
tag @e[type=minecraft:item,nbt={Item:{tag:{EigSchwB.p2Alle:true} } }] add EtiSchwB.p2Alle
kill @e[tag=EtiSchwB.p2Alle]

# Der Chunk wird entladen.
forceload remove ~ ~
