
execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] run fill ~ ~ ~ ~26 ~27 ~26 minecraft:air
execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] run fill ~ ~ ~ ~-26 ~27 ~26 minecraft:air
execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] run fill ~ ~ ~ ~26 ~27 ~-26 minecraft:air
execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] run fill ~ ~ ~ ~-26 ~27 ~-26 minecraft:air

execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Lobbyportal] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:air

execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] positioned ~-25 ~ ~-25 run kill @e[dx=50,dy=50,dz=50,type=minecraft:item]
kill @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Alle]

team remove TMMiniSS.1Rot
bossbar remove minispiel-system:v1teamrot

team remove TMMiniSS.1Blau
bossbar remove minispiel-system:v1teamblau

scoreboard objectives remove PZMiniSS.1Spiel
bossbar remove minispiel-system:v1lobbyzeit

scoreboard objectives remove PZMiniSS.1Verl
scoreboard objectives remove PZMiniSS.1Tod

clear @a[distance=..50] minecraft:red_bed{display:{Lore:["Minispiel-System.1"]} }
gamemode creative @a[distance=..50]
