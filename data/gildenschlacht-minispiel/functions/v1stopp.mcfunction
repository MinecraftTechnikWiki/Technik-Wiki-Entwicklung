
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run fill ~ ~ ~ ~26 ~27 ~26 minecraft:air
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run fill ~ ~ ~ ~-26 ~27 ~26 minecraft:air
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run fill ~ ~ ~ ~26 ~27 ~-26 minecraft:air
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run fill ~ ~ ~ ~-26 ~27 ~-26 minecraft:air

execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Lobbyportal] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:air

execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] positioned ~-25 ~ ~-25 run kill @e[dx=50,dy=50,dz=50,type=minecraft:item]
kill @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Alle]

team remove TMGildSMS.1Rot
bossbar remove gildenschlacht-minispiel:v1teamrot

team remove TMGildSMS.1Blau
bossbar remove gildenschlacht-minispiel:v1teamblau

scoreboard objectives remove PZGildSMS.1Spiel
bossbar remove gildenschlacht-minispiel:v1lobbyzeit

scoreboard objectives remove PZGildSMS.1Verl
scoreboard objectives remove PZGildSMS.1Tod

clear @a[distance=..50] minecraft:red_bed{gildenschlacht-minispiel:"v1gegenstand"}
gamemode creative @a[distance=..50]
