# Das Team wird gelöscht.
team remove TMLuftS.2Pilot

# Das Luftschiff an der Position des Luftschiffs-Rüstungsständers wird durch Luft ersetzt.
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] run fill ~17 ~15 ~17 ~-17 ~-4 ~-17 minecraft:air replace #luftschiff:v2drop-bloecke
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.2Luftschiff] run fill ~17 ~15 ~17 ~-17 ~-4 ~-17 minecraft:air replace

# Das Holzschwert wird aus dem Inventar entfernt.
clear @a minecraft:wooden_sword{luftschiff:"v2gegenstand"}

# Alle Rüstungsständer werden gelöscht.
tag @e[type=minecraft:item,nbt={Item:{tag:{luftschiff:"v2gegenstand"} } }] add EtiLuftS.2Alle
kill @e[type=minecraft:armor_stand,tag=EtiLuftS.2Alle]
