
scoreboard objectives remove PZGildSMS.1Verl
scoreboard objectives remove PZGildSMS.1Tod

team remove TMGildSMS.1Rot
bossbar remove gildenschlacht-minispiel:v1teamrot

team remove TMGildSMS.1Blau
bossbar remove gildenschlacht-minispiel:v1teamblau

scoreboard objectives remove PZGildSMS.1Spiel
bossbar remove gildenschlacht-minispiel:v1lobbyzeit

clear @a minecraft:red_bed{EigGildSMS.1Alle:true}
clear @a minecraft:iron_boots{EigGildSMS.1Alle:true}
clear @a minecraft:iron_leggings{EigGildSMS.1Alle:true}
clear @a minecraft:iron_chestplate{EigGildSMS.1Alle:true}
clear @a minecraft:shield{EigGildSMS.1Alle:true}
clear @a minecraft:leather_helmet{EigGildSMS.1Alle:true}
clear @a minecraft:iron_sword{EigGildSMS.1Alle:true}
clear @a minecraft:red_bed{EigGildSMS.1Alle:true}
clear @a minecraft:red_bed{EigGildSMS.1Alle:true}
clear @a minecraft:red_bed{EigGildSMS.1Alle:true}

gamemode creative @a[distance=..50,gamemode=adventure]

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] run fill ~ ~ ~ ~26 ~27 ~26 minecraft:air
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] run fill ~ ~ ~ ~-26 ~27 ~26 minecraft:air
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] run fill ~ ~ ~ ~26 ~27 ~-26 minecraft:air
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] run fill ~ ~ ~ ~-26 ~27 ~-26 minecraft:air

execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Wartehalle] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:air

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] positioned ~-25 ~ ~-25 run kill @e[dx=50,dy=50,dz=50,type=minecraft:item]
kill @e[tag=EtiGildSMS.1Alle]
