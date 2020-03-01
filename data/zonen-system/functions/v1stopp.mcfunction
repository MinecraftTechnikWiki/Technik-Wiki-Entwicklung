# Punktestand-Ziele werden entfernt
scoreboard objectives remove PZZone.1Nr
scoreboard objectives remove PZZone.1ZonenNr
scoreboard objectives remove PZZone.1Fass
scoreboard objectives remove PZZone.1Ausl

# Der Spielmodus wird auf Kreativ gesetzt
gamemode creative @a[distance=..15,gamemode=!creative]

# Truhen werden aus dem Inventar gelöscht
clear @a minecraft:stick{zonen-system:"v1gegenstand"}
clear @a minecraft:barrel{zonen-system:"v1gegenstand"}

# Zonen werden gelöscht
execute at @e[type=minecraft:armor_stand,name="Zone",tag=EtiZone.1Alle] run fill ~-7 ~ ~-7 ~8 ~25 ~8 minecraft:air replace

tag @e[type=minecraft:item,nbt={Item:{tag:{zonen-system:"v1gegenstand"} } } ] add EtiZone.1Alle
kill @e[tag=EtiZone.1Alle]

# Etiketten die eventuell noch vorhanden sind werden entfernt
tag @a[tag=EtiZone.1SpielerNummer] remove EtiZone.1SpielerNummer
tag @a[tag=EtiZone.1Betreten] remove EtiZone.1Betreten
