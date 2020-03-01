# Punktestand-Ziele werden gelöscht
scoreboard objectives remove PZHungS.1GlEss

scoreboard objectives remove PZHungS.1Apfel
scoreboard objectives remove PZHungS.1GeSchfl
scoreboard objectives remove PZHungS.1Brot
scoreboard objectives remove PZHungS.1GeKabj

# Der Spieler wird in den Kreativmodus gesetzt
gamemode creative @a[distance=..15,gamemode=!creative]

# Eventuell vorhandene Effekte werden entfernt
effect clear @a[distance=..15,nbt={ActiveEffects:[{}]}]

# Alle Nahrungsmittel die der Spieler noch nicht gegessen hatte, werden wieder entfernt
clear @a minecraft:apple{hungerpunkte-system:"v1gegenstand"}
clear @a minecraft:cooked_porkchop{hungerpunkte-system:"v1gegenstand"}
clear @a minecraft:bread{hungerpunkte-system:"v1gegenstand"}
clear @a minecraft:cooked_cod{hungerpunkte-system:"v1gegenstand"}

# Falls Nahrungsmittel auf dem Boden geworfen wurden, werden sie ebenfalls gelöscht
kill @e[type=minecraft:item,nbt={Item:{tag:{hungerpunkte-system:"v1gegenstand"} } }]
