# Das Punktestand-Ziel wird wieder gelöscht.
scoreboard objectives remove PZLuftS.1Wert

# Das Team wird gelöscht.
team remove TMLuftS.1Pilot

# Das Luftschiff an der Position des Luftschiffs-Rüstungsständers wird durch Luft ersetzt.
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] run fill ~15 ~15 ~15 ~-15 ~-4 ~-15 minecraft:air replace #luftschiff:v1drop-bloecke
execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.1Luftschiff] run fill ~15 ~15 ~15 ~-15 ~-4 ~-15 minecraft:air replace

# Alle Rüstungsständer werden gelöscht.
kill @e[type=minecraft:armor_stand,tag=EtiLuftS.1Alle]
