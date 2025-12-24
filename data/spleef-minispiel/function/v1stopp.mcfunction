
scoreboard objectives remove PZSpleeMS.1Wert
scoreboard objectives remove PZSpleeMS.1Verlassen
scoreboard objectives remove PZSpleeMS.1Abbauen

team remove TMSpleeMS.1Lobby
team remove TMSpleeMS.1Spiel

bossbar remove spleef-minispiel:v1lobby

data remove storage spleef-minispiel:v1daten "EigSpleeMS.1Name"

clear @a minecraft:red_bed[minecraft:custom_data~{EigSpleeMS.1Alle:true}]

execute at @n[type=minecraft:text_display,tag=EtiSpleeMS.1Teleporter] run fill ~-8 ~-3 ~-8 ~8 ~15 ~8 minecraft:air replace

execute at @n[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld] run place template spleef-minispiel:v1leere ~ ~ ~ none
execute at @n[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld] run place template spleef-minispiel:v1leere ~ ~ ~ clockwise_90
execute at @n[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld] run place template spleef-minispiel:v1leere ~ ~ ~ 180
execute at @n[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld] run place template spleef-minispiel:v1leere ~ ~ ~ counterclockwise_90

execute at @n[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld] positioned ~-40 ~-1 ~-40 as @a[dx=80,dy=40,dz=80] at @s run function spleef-minispiel:v1verlassen

execute at @n[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld] positioned ~-40 ~-1 ~-40 run kill @e[dx=80,dy=40,dz=80,type=minecraft:item]

execute at @n[type=minecraft:text_display,tag=EtiSpleeMS.1Teleporter] positioned ~-10 ~-4 ~-10 run kill @e[dx=20,dy=20,dz=20,type=minecraft:item]

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigSpleeMS.1Alle:true}] run kill @s
kill @e[tag=EtiSpleeMS.1Alle]

forceload remove ~ ~

execute unless entity @e[type=minecraft:area_effect_cloud,tag=EtiSpleeMS.1Start] run tellraw @a[distance=..25] ["Spleef-Minispiel.1:\n",{text:"Das Minispiel wurde entfernt!",bold:true}]
