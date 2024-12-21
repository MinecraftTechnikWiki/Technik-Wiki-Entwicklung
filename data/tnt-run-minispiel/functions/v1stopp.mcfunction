
scoreboard objectives remove PZTNTRMS.1Wert
scoreboard objectives remove PZTNTRMS.1Verlassen

team remove TMTNTRMS.1Lobby
team remove TMTNTRMS.1Spielen

bossbar remove tnt-run-minispiel:v1lobby
bossbar remove tnt-run-minispiel:v1team

data remove storage tnt-run-minispiel:v1daten "EigTNTRMS.1Name"

clear @a minecraft:red_bed[minecraft:custom_data~{EigTNTRMS.1Alle:true}]

execute at @e[type=minecraft:text_display,tag=EtiTNTRMS.1Teleporter,sort=nearest,limit=1] run fill ~-8 ~-3 ~-8 ~8 ~15 ~8 minecraft:air replace

execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~26 ~33 ~26 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~-26 ~33 ~26 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~26 ~33 ~-26 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~-26 ~33 ~-26 minecraft:air replace

execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] positioned ~-30 ~-1 ~-30 as @a[dx=60,dy=40,dz=60] at @s run function tnt-run-minispiel:v1verlassen

execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] positioned ~-30 ~-1 ~-30 run kill @e[dx=60,dy=40,dz=60,type=minecraft:item]

execute at @e[type=minecraft:text_display,tag=EtiTNTRMS.1Teleporter,sort=nearest,limit=1] positioned ~-10 ~-4 ~-10 run kill @e[dx=20,dy=20,dz=20,type=minecraft:item]

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigTNTRMS.1Alle:true}] run kill @s
kill @e[tag=EtiTNTRMS.1Alle]

forceload remove ~ ~

execute unless entity @e[type=minecraft:area_effect_cloud,tag=EtiTNTRMS.1Start] run tellraw @a[distance=..25] ["TNT-Run-Minispiel.1:\n",{"text":"Das Minispiel wurde entfernt!","bold":true}]
