# Punktestand-Ziele werden entfernt
scoreboard objectives remove PZZone.2Lang
scoreboard objectives remove PZZone.2Breit
scoreboard objectives remove PZZone.2Nr
scoreboard objectives remove PZZone.2ZonenNr
scoreboard objectives remove PZZone.2Nachr
scoreboard objectives remove PZZone.2Eing


# Der Spielmodus wird auf Kreativ gesetzt
gamemode creative @s[gamemode=!creative]

# Truhen werden aus dem Inventar gelöscht
clear @s minecraft:chest{display:{Name:"{\"text\":\"Zonen-System.2\"}"} }

# Zonen werden gelöscht
execute at @e[type=minecraft:armor_stand,name=Zone,tag=EtiZone.2Alle] run fill ~-7 ~ ~-7 ~8 ~25 ~8 minecraft:air
kill @e[type=minecraft:armor_stand,name=Zone,tag=EtiZone.2Alle]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"text\":\"Zonen-System.2\"}"} } } } ]

# Etiketten die eventuell noch vorhanden sind werden entfernt
tag @s remove EtiZone.2Spieler
tag @s[tag=EtiZone.2SpielerNummer] remove EtiZone.2SpielerNummer
tag @s[tag=EtiZone.2Betreten] remove EtiZone.2Betreten
