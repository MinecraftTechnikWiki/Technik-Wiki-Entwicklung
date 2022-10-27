# Die Punkte-Ziele werden entfernt und somit auch die Variable und alle Werte die Spieler besitzen.
scoreboard objectives remove PZStraBM.2Schl
scoreboard objectives remove PZStraBM.2Ausl
scoreboard objectives remove PZStraBM.2Laen

# Die Etiketten werden entfernt, falls sie noch vorhanden waren.
tag @a[tag=EtiStraBM.2Auswahl] remove EtiStraBM.2Auswahl
tag @a[tag=EtiStraBM.2Shift] remove EtiStraBM.2Shift
tag @a[tag=EtiStraBM.2Bahngleis] remove EtiStraBM.2Bahngleis

# Die Angel wird aus dem Inventar geslöscht.
clear @a minecraft:fishing_rod{EigStraBM.2Angel:true}

# Falls die Angel auf den Boden geworfen wurde, wird sie erkannt und gelöscht.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigStraBM.2Angel:true} } }]

# Chunks werden entladen.
forceload remove ~ ~
