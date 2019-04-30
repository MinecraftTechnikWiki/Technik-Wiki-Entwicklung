# Punktestand-Ziele werden entfernt
scoreboard objectives remove PZZone.1Nr
scoreboard objectives remove PZZone.1ZonenNr
scoreboard objectives remove PZZone.1Truhe
scoreboard objectives remove PZZone.1Eing

# Der Spielmodus wird auf Kreativ gesetzt
gamemode creative @s[gamemode=!creative]

# Truhen werden aus dem Inventar gelöscht
clear @s minecraft:chest{display:{Name:"{\"text\":\"Zonen-System.1\"}"} }

# Zonen werden gelöscht
execute at @e[type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle] run fill ~-7 ~ ~-7 ~8 ~25 ~8 minecraft:air
kill @e[type=minecraft:armor_stand,name=Zone,tag=EtiZone.1Alle]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"text\":\"Zonen-System.1\"}"} } } } ]

# Etiketten die eventuell noch vorhanden sind werden entfernt
tag @s remove EtiZone.1Spieler
tag @s[tag=EtiZone.1SpielerNummer] remove EtiZone.1SpielerNummer
tag @s[tag=EtiZone.1Betreten] remove EtiZone.1Betreten
