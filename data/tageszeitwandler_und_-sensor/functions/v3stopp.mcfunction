# Das Punktestand-Ziel wird gelöscht
scoreboard objectives remove PZTagZWS.3Wert

# Der Rüstungsständer und die Uhr werden aus dem Inventar der Spieler entfernt
clear @a minecraft:armor_stand{tageszeitwandler_und_-sensor:"v3gegenstand"}
clear @a minecraft:clock{tageszeitwandler_und_-sensor:"v3gegenstand"}

# Der Tageslichtsensor wird durch Luft ersetzt
execute at @e[type=minecraft:armor_stand,tag=EtiTagZWS.3TagNachtAnlage] run setblock ~ ~ ~ minecraft:air replace

# Alle Gegenstände die auf den Boden geworfen wurden und eine bestimmte Eigenschaft besitzen werden mit einem Etikett ausgestattet. Alle mit diesem Etikett werden gelöscht
tag @e[type=minecraft:item,nbt={Item:{tag:{tageszeitwandler_und_-sensor:"v3gegenstand"} } }] add EtiTagZWS.3Alle
kill @e[tag=EtiTagZWS.3Alle]

# Die Spielregel für den Tag-Nacht-Rhythmus wird wieder auf zirkulierend gestellt
gamerule doDaylightCycle true
