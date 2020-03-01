# Punktestand-Ziele werden gelöscht
scoreboard objectives remove PZHungS.2Zeit

scoreboard objectives remove PZHungS.2Trinken

scoreboard objectives remove PZHungS.2WasFl
scoreboard objectives remove PZHungS.2Milch
scoreboard objectives remove PZHungS.2Ragout
scoreboard objectives remove PZHungS.2PilzS
scoreboard objectives remove PZHungS.2Bortsch
scoreboard objectives remove PZHungS.2Melone

# Der Spieler wird in den Kreativmodus gesetzt
gamemode creative @a[distance=..15,gamemode=!creative]

# Eventuell vorhandene Effekte werden wieder entfernt
effect clear @a[distance=..15,nbt={ActiveEffects:[{}]}]

# Das Etikett wird entfernt, falls es vorhanden war
tag @a[tag=EtiHungS.2HaelfteWasser] remove EtiHungS.2HaelfteWasser

# Alle Nahrungsmittel werden wieder entfernt
clear @a minecraft:potion{hungerpunkte-system:"v2gegenstand"}
clear @a minecraft:milk_bucket{hungerpunkte-system:"v2gegenstand"}
clear @a minecraft:rabbit_stew{hungerpunkte-system:"v2gegenstand"}
clear @a minecraft:mushroom_stew{hungerpunkte-system:"v2gegenstand"}
clear @a minecraft:beetroot_soup{hungerpunkte-system:"v2gegenstand"}
clear @a minecraft:melon_slice{hungerpunkte-system:"v2gegenstand"}

clear @a[distance=..15] minecraft:bowl
clear @a[distance=..15] minecraft:bucket
clear @a[distance=..15] minecraft:glass_bottle

# Falls die Nahrungsmittel auf den Boden geworfen sind, werden sie ebenfalls entfernt
kill @e[distance=..50,type=minecraft:item,nbt={Item:{tag:{hungerpunkte-system:"v2gegenstand"} } }]
