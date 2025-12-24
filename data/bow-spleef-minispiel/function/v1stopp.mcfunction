
scoreboard objectives remove PZBoSplMS.1Wert
scoreboard objectives remove PZBoSplMS.1Verlassen

team remove TMBoSplMS.1Lobby
team remove TMBoSplMS.1Spielen

bossbar remove bow-spleef-minispiel:v1lobby

data remove storage bow-spleef-minispiel:v1daten "EigBoSplMS.1Name"

clear @a minecraft:red_bed[minecraft:custom_data~{EigBoSplMS.1Alle:true}]

execute at @n[type=minecraft:text_display,tag=EtiBoSplMS.1Teleporter] run fill ~-8 ~-3 ~-8 ~8 ~15 ~8 minecraft:air replace

execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] run fill ~ ~ ~ ~31 ~31 ~31 minecraft:air replace
execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] run fill ~ ~ ~ ~-31 ~31 ~31 minecraft:air replace
execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] run fill ~ ~ ~ ~31 ~31 ~-31 minecraft:air replace
execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] run fill ~ ~ ~ ~-31 ~31 ~-31 minecraft:air replace

execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] positioned ~-35 ~-1 ~-35 as @a[dx=70,dy=40,dz=70] at @s run function bow-spleef-minispiel:v1verlassen

execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] positioned ~-35 ~-1 ~-35 run kill @e[dx=70,dy=40,dz=70,type=minecraft:item]

execute at @n[type=minecraft:text_display,tag=EtiBoSplMS.1Teleporter] positioned ~-10 ~-4 ~-10 run kill @e[dx=20,dy=20,dz=20,type=minecraft:item]

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigBoSplMS.1Alle:true}] run kill @s
kill @e[tag=EtiBoSplMS.1Alle]

forceload remove ~ ~

execute unless entity @e[type=minecraft:area_effect_cloud,tag=EtiBoSplMS.1Start] run tellraw @a[distance=..25] ["Bow-Spleef-Minispiel.1:\n",{text:"Das Minispiel wurde entfernt!",bold:true}]
