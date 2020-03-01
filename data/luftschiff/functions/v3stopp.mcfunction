# Die Punktestand-Ziele werden entfernt.
scoreboard objectives remove PZLuftS.3Steuer
scoreboard objectives remove PZLuftS.3Leine

# Das Team wird entfernt.
team remove TMLuftS.3Pilot

# Spieler die sich nicht im Kreativmodus befanden werden in diesen, in einem Umkreis von 25 Blöcken, gesetzt.
gamemode creative @a[distance=..25,gamemode=!creative]

# Der Andockplatz, das Luftschiff wie auch die Andockleine werden entfernt.
execute at @e[tag=EtiLuftS.3Andockplatz] run fill ~-3 ~-2 ~-3 ~3 ~ ~3 minecraft:air replace
execute at @e[tag=EtiLuftS.3Luftschiff] run fill ~15 ~15 ~15 ~-15 ~-4 ~-15 minecraft:air replace #luftschiff:v3drop-bloecke
execute at @e[tag=EtiLuftS.3Luftschiff] run fill ~15 ~15 ~15 ~-15 ~-4 ~-15 minecraft:air replace
execute at @e[type=minecraft:area_effect_cloud,tag=EtiLuftS.3Kette] run fill ~ ~ ~ ~ ~1 ~ minecraft:air replace minecraft:oak_fence

# Alle Gegenstände für das Luftschiff werden aus dem Inventar der Spielers entfernt.
clear @a minecraft:wooden_sword{luftschiff:"v3gegenstand"}
clear @a minecraft:armor_stand{luftschiff:"v3gegenstand"}
clear @a minecraft:coal{luftschiff:"v3gegenstand"}
clear @a minecraft:lead{luftschiff:"v3gegenstand"}

# Falls ein Gegenstand auf den Boden gedroppt wurde, erhält das ein Etikett. Alle Objekte für das Luftschiff werden entfernt.
tag @e[type=minecraft:item,nbt={Item:{tag:{luftschiff:"v3gegenstand"} } }] add EtiLuftS.3Alle
kill @e[tag=EtiLuftS.3Alle]
