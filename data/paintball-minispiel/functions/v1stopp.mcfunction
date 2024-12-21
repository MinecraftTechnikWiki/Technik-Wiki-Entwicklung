
scoreboard objectives remove PZPaintBMS.1Wert
scoreboard objectives remove PZPaintBMS.1Versuch
scoreboard objectives remove PZPaintBMS.1Verlassen

team remove TMPaintBMS.1Lobby
team remove TMPaintBMS.1Spiel

bossbar remove paintball-minispiel:v1lobby
bossbar remove paintball-minispiel:v1team

team remove TMPaintBMS.1Lobby
team remove TMPaintBMS.1Team1
team remove TMPaintBMS.1Team2

bossbar remove paintball-minispiel:v1lobby
bossbar remove paintball-minispiel:v1team1
bossbar remove paintball-minispiel:v1team2

bossbar remove paintball-minispiel:v1team1anzahl
bossbar remove paintball-minispiel:v1team2anzahl

data remove storage paintball-minispiel:v1daten "EigPaintBMS.1Name"

clear @a minecraft:red_bed[minecraft:custom_data~{EigPaintBMS.1Alle:true}]

execute at @e[type=minecraft:text_display,tag=EtiPaintBMS.1Teleporter,sort=nearest,limit=1] run fill ~-8 ~-3 ~-8 ~8 ~15 ~8 minecraft:air replace

execute at @e[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~31 ~31 ~31 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~-31 ~31 ~31 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~31 ~31 ~-31 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~-31 ~31 ~-31 minecraft:air replace

execute at @e[type=minecraft:interaction,tag=EtiPaintBMS.1Wartesaal,sort=nearest,limit=1] run fill ~-11 ~-1 ~-11 ~11 ~6 ~11 minecraft:air replace

execute at @e[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld,sort=nearest,limit=1] positioned ~-30 ~-1 ~-30 as @a[dx=60,dy=40,dz=60] at @s run function paintball-minispiel:v1verlassen

execute at @e[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld,sort=nearest,limit=1] positioned ~-40 ~-1 ~-40 run kill @e[dx=80,dy=40,dz=80,type=minecraft:item]

execute at @e[type=minecraft:text_display,tag=EtiPaintBMS.1Teleporter,sort=nearest,limit=1] positioned ~-10 ~-4 ~-10 run kill @e[dx=20,dy=20,dz=20,type=minecraft:item]

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigPaintBMS.1Alle:true}] run kill @s
kill @e[tag=EtiPaintBMS.1Alle]

forceload remove ~ ~

execute unless entity @e[type=minecraft:area_effect_cloud,tag=EtiPaintBMS.1Start] run tellraw @a[distance=..25] ["Paintball-Minispiel.1:\n",{"text":"Das Minispiel wurde entfernt!","bold":true}]
