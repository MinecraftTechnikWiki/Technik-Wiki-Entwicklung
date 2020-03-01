# Punktestand-Ziele werden entfernt
scoreboard objectives remove PZZone.2Lang
scoreboard objectives remove PZZone.2Breit
scoreboard objectives remove PZZone.2Nr
scoreboard objectives remove PZZone.2ZonenNr
scoreboard objectives remove PZZone.2Nachr
scoreboard objectives remove PZZone.2Eing
scoreboard objectives remove PZZone.2Schl

# Der Spielmodus wird auf Kreativ gesetzt
gamemode creative @a[gamemode=!creative]

# Truhen werden aus dem Inventar gelöscht
clear @a minecraft:chest{zonen-system:"v2gegenstand"}

# Zonen werden gelöscht
execute at @e[type=minecraft:armor_stand,name=Zone,tag=EtiZone.2Alle] run fill ~-7 ~ ~-7 ~8 ~25 ~8 minecraft:air replace

tag @e[type=minecraft:item,nbt={Item:{tag:{zonen-system:"v2gegenstand"} } } ] add EtiZone.2Alle
kill @e[tag=EtiZone.2Alle]

# Etiketten die eventuell noch vorhanden sind werden entfernt
tag @a remove EtiZone.2Spieler
tag @a[tag=EtiZone.2SpielerNummer] remove EtiZone.2SpielerNummer
tag @a[tag=EtiZone.2Betreten] remove EtiZone.2Betreten
