# Das Punktestand-Ziel wird entfernt
scoreboard objectives remove PZTeleP.3Nr

# Die Teleporter werden entfernt
execute at @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace
tag @e[type=minecraft:item,nbt={Item:{tag:{teleporter:"v3gegenstand"} } }] add EtiTeleP.3Alle
kill @e[tag=EtiTeleP.3Alle]

# Teleporter die sich noch im Inventar befinden, werden gelöscht
clear @a[distance=..50] minecraft:armor_stand{teleporter:"v3gegenstand"}
gamemode creative @a[distance=..50,gamemode=adventure]

# Die Nachrichten-Ausgabe wird wieder eingeschaltet
gamerule sendCommandFeedback true
