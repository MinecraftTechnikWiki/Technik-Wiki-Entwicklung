
scoreboard objectives remove PZSkyWaMS.1Wert
scoreboard objectives remove PZSkyWaMS.1Verlassen

team remove TMSkyWaMS.1Lobby
team remove TMSkyWaMS.1Spielen

bossbar remove skywars-minispiel:v1lobby
bossbar remove skywars-minispiel:v1team

data remove storage skywars-minispiel:v1daten "EigSkyWaMS.1Name"

clear @a minecraft:red_bed[minecraft:custom_data~{EigSkyWaMS.1Alle:true}]

execute at @e[type=minecraft:text_display,tag=EtiSkyWaMS.1Teleporter,sort=nearest,limit=1] run fill ~-8 ~-3 ~-8 ~8 ~15 ~8 minecraft:air replace

execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Gebiet,sort=nearest,limit=13] run fill ~ ~-4 ~ ~29 ~29 ~29 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Gebiet,sort=nearest,limit=13] run fill ~ ~-4 ~ ~-29 ~29 ~29 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Gebiet,sort=nearest,limit=13] run fill ~ ~-4 ~ ~29 ~29 ~-29 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Gebiet,sort=nearest,limit=13] run fill ~ ~-4 ~ ~-29 ~29 ~-29 minecraft:air replace

execute at @e[type=minecraft:interaction,tag=EtiSkyWaMS.1Wartesaal,sort=nearest,limit=1] run fill ~-11 ~-1 ~-11 ~11 ~6 ~11 minecraft:air replace

execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] positioned ~-150 ~-1 ~-150 as @a[dx=300,dy=60,dz=300] at @s run function skywars-minispiel:v1verlassen

execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Gebiet,sort=nearest,limit=13] positioned ~-30 ~-1 ~-30 run kill @e[dx=60,dy=40,dz=60,type=minecraft:item]

execute at @e[type=minecraft:text_display,tag=EtiSkyWaMS.1Teleporter,sort=nearest,limit=1] positioned ~-10 ~-4 ~-10 run kill @e[dx=20,dy=20,dz=20,type=minecraft:item]

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigSkyWaMS.1Alle:true}] run kill @s
kill @e[tag=EtiSkyWaMS.1Alle]

forceload remove ~ ~

execute unless entity @e[type=minecraft:area_effect_cloud,tag=EtiSkyWaMS.1Start] run tellraw @a[distance=..25] ["Skywars-Minispiel.1:\n",{"text":"Das Minispiel wurde entfernt!","bold":true}]
