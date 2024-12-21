
scoreboard objectives remove PZWartS.1Wert
scoreboard objectives remove PZWartS.1Verlassen

team remove TMWartS.1Lobby
team remove TMWartS.1Spielen

bossbar remove wartesaal:v1lobby

data remove storage wartesaal:v1daten "EigWartS.1Name"

clear @a minecraft:red_bed[minecraft:custom_data~{EigWartS.1Alle:true}]

execute at @e[type=minecraft:text_display,tag=EtiWartS.1Teleporter,sort=nearest,limit=1] run fill ~-8 ~-3 ~-8 ~8 ~15 ~8 minecraft:air replace

execute at @e[type=minecraft:marker,tag=EtiWartS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~26 ~33 ~26 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiWartS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~-26 ~33 ~26 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiWartS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~26 ~33 ~-26 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiWartS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~-26 ~33 ~-26 minecraft:air replace

execute at @e[type=minecraft:interaction,tag=EtiWartS.1Wartesaal,sort=nearest,limit=1] run fill ~-11 ~-1 ~-11 ~11 ~6 ~11 minecraft:air replace

execute at @e[type=minecraft:marker,tag=EtiWartS.1Spielfeld,sort=nearest,limit=1] positioned ~-22 ~-1 ~-22 as @a[dx=44,dy=44,dz=44] at @s run function wartesaal:v1verlassen

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigWartS.1Alle:true}] run kill @s
kill @e[tag=EtiWartS.1Alle]

forceload remove ~ ~

execute unless entity @e[type=minecraft:area_effect_cloud,tag=EtiWartS.1Start] run tellraw @a[distance=..25] ["Wartesaal.1:\n",{"text":"Die Lobby wurde entfernt!","bold":true}]
