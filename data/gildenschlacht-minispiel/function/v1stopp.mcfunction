# Die Punkte-Ziele werden entfernt.
scoreboard objectives remove PZGildSMS.1Wert
scoreboard objectives remove PZGildSMS.1Sterben
scoreboard objectives remove PZGildSMS.1Verlassen

# Die Mannschaften werden entfernt.
team remove TMGildSMS.1Lobby
team remove TMGildSMS.1Team1
team remove TMGildSMS.1Team2

# Die Bossleisten werden entfernt.
bossbar remove gildenschlacht-minispiel:v1lobby
bossbar remove gildenschlacht-minispiel:v1team1
bossbar remove gildenschlacht-minispiel:v1team2

bossbar remove gildenschlacht-minispiel:v1team1anzahl
bossbar remove gildenschlacht-minispiel:v1team2anzahl

# Der Datenspeicher wird geleert.
data remove storage gildenschlacht-minispiel:v1daten "EigGildSMS.1Name"

# Alle Betten von diesem Minispiel werden aus den Inventaren entfernt.
clear @a minecraft:red_bed[minecraft:custom_data~{EigGildSMS.1Alle:true}]

# Der Teleporter wird entfernt.
execute at @n[type=minecraft:text_display,tag=EtiGildSMS.1Teleporter] run fill ~-8 ~-3 ~-8 ~8 ~15 ~8 minecraft:air replace

# Das Spielfeld wird entfernt.
execute at @n[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] run fill ~ ~ ~ ~26 ~33 ~26 minecraft:air replace
execute at @n[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] run fill ~ ~ ~ ~-26 ~33 ~26 minecraft:air replace
execute at @n[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] run fill ~ ~ ~ ~26 ~33 ~-26 minecraft:air replace
execute at @n[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] run fill ~ ~ ~ ~-26 ~33 ~-26 minecraft:air replace

# Der Wartesaal wird entfernt.
execute at @n[type=minecraft:interaction,tag=EtiGildSMS.1Wartesaal] run fill ~-11 ~-1 ~-11 ~11 ~6 ~11 minecraft:air replace

# Spieler die noch im Minispiel sind werden nach draußen teleportiert.
execute at @n[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] positioned ~-25 ~-1 ~-25 as @a[dx=50,dy=40,dz=50] at @s run function gildenschlacht-minispiel:v1verlassen

# Gegenstände die beim Entfernen des Spielsfelds gedroppt sind, werden entfernt.
execute at @n[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] positioned ~-25 ~-1 ~-25 run kill @e[dx=50,dy=40,dz=50,type=minecraft:item]

# Gegenstände die beim Entfernen des Teleporters gedroppt sind, werden entfernt.
execute at @n[type=minecraft:text_display,tag=EtiGildSMS.1Teleporter] positioned ~-10 ~-4 ~-10 run kill @e[dx=20,dy=20,dz=20,type=minecraft:item]

# Gegenstände die vom Minispiel stammen und in der Welt liegen, werden entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigGildSMS.1Alle:true}] run kill @s
kill @e[tag=EtiGildSMS.1Alle]

# Der Chunk wird entladen.
forceload remove ~ ~

# Nur wenn die Partikelwolke von der Einschaltsicherung nicht vorhanden ist, wird eine Nachricht ausgegeben.
execute unless entity @e[type=minecraft:area_effect_cloud,tag=EtiGildSMS.1Start] run tellraw @a[distance=..25] ["Gildenschlacht-Minispiel.1:\n",{text:"Das Minispiel wurde entfernt!",bold:true}]
