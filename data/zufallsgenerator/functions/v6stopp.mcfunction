# Die zwei Punkte-Ziele werden entfernt.
scoreboard objectives remove PZZufG.6Wert
scoreboard objectives remove PZZufG.6Pos

# Der NBT-Speicher wird geleert.
data remove storage zufallsgenerator:v6daten "EigZufG.6Felder"

# Das Etikett zur Auswahl des Stockes wird entfernt.
tag @a[tag=EtiZufG.6Auswahl] remove EtiZufG.6Auswahl

# Der Stock wird aus dem Inventar entfernt.
clear @a minecraft:stick{EigZufG.6Alle:true}

# Falls der Stock auf den Boden geworfen wurde, wird ebenfalls entfernt.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigZufG.6Alle:true} } }]
