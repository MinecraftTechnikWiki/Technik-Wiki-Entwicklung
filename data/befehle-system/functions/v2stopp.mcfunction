# Das Punktestand-Ziel wird gelöscht
scoreboard objectives remove PZBefS.2Befehl

# Alle Gegenstände die durch das Befehle-System gegeben wurden, werden entfernt
clear @a[distance=..15] minecraft:writable_book{befehle-system:"v2gegenstand"}
clear @a[distance=..15] minecraft:diamond_sword{befehle-system:"v2gegenstand"}
clear @a[distance=..15] minecraft:potion{befehle-system:"v2gegenstand"}

# Eventuell noch vorhandene Effekte werden entfernt
effect clear @a[distance=..25,nbt={ActiveEffects:[{}]}]

# Das Etikett für das Schreiben wird wieder entfernt
tag @a[tag=EtiBefS.2Schreiben] remove EtiBefS.2Schreiben

# Gegenstände die auf den Boden geworfen sind, werden mit einem Etikett ausgestattet und alle Objekte mit diesem Etikett werden entfernt
tag @e[type=minecraft:item,nbt={Item:{tag:{befehle-system:"v2gegenstand"} } }] add EtiBefS.2Alle
kill @e[tag=EtiBefS.2Alle]
