# Die Punktestand-Ziele werden entfernt
scoreboard objectives remove PZLebP.2Leben
scoreboard objectives remove PZLebP.2Vergl
scoreboard objectives remove PZLebP.2MaxLeb

# Alle zehn Teams werden wieder entfernt
team remove TMLebP.2Leb100
team remove TMLebP.2Leb90
team remove TMLebP.2Leb80
team remove TMLebP.2Leb70
team remove TMLebP.2Leb60
team remove TMLebP.2Leb50
team remove TMLebP.2Leb40
team remove TMLebP.2Leb30
team remove TMLebP.2Leb20
team remove TMLebP.2Leb10
team remove TMLebP.2Leb0

# Die Spawn-Eier in den Inventaren der Spieler werden entfernt
clear @a minecraft:dolphin_spawn_egg{lebenspunkte-system:"v2gegenstand"}
clear @a minecraft:panda_spawn_egg{lebenspunkte-system:"v2gegenstand"}
clear @a minecraft:llama_spawn_egg{lebenspunkte-system:"v2gegenstand"}
clear @a minecraft:fox_spawn_egg{lebenspunkte-system:"v2gegenstand"}

# Alle Kreaturen und eventuell auf den Boden geworfene Spawn-Eier werden gelöscht
tag @e[type=minecraft:item,nbt={Item:{tag:{lebenspunkte-system:"v2gegenstand"} } }] add EtiLebP.2Alle
kill @e[tag=EtiLebP.2Alle]
