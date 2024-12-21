
scoreboard objectives remove PZTowDefMS.1Wert
scoreboard objectives remove PZTowDefMS.1Leben
scoreboard objectives remove PZTowDefMS.1Versuch
scoreboard objectives remove PZTowDefMS.1Richtung
scoreboard objectives remove PZTowDefMS.1Verlassen

team remove TMTowDefMS.1Lobby
team remove TMTowDefMS.1Team1
team remove TMTowDefMS.1Team2

bossbar remove tower-defense-minispiel:v1lobby
bossbar remove tower-defense-minispiel:v1team1
bossbar remove tower-defense-minispiel:v1team2

bossbar remove tower-defense-minispiel:v1team1gegner
bossbar remove tower-defense-minispiel:v1team2gegner

data remove storage tower-defense-minispiel:v1daten "EigTowDefMS.1Name"

clear @a minecraft:red_bed[minecraft:custom_data~{EigTowDefMS.1Alle:true}]

execute at @e[type=minecraft:text_display,tag=EtiTowDefMS.1Teleporter,sort=nearest,limit=1] run fill ~-8 ~-3 ~-8 ~8 ~15 ~8 minecraft:air replace

execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run place template tower-defense-minispiel:v1leere ~-32 ~ ~-15 none
execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run place template tower-defense-minispiel:v1leere ~-15 ~ ~-32 none

#execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~32 ~28 ~32 minecraft:air replace
#execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~-32 ~28 ~32 minecraft:air replace
#execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~32 ~28 ~-32 minecraft:air replace
#execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~-32 ~28 ~-32 minecraft:air replace
#execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run fill ~-32 ~29 ~-32 ~32 ~38 ~32 minecraft:air replace


execute at @e[type=minecraft:interaction,tag=EtiTowDefMS.1Wartesaal,sort=nearest,limit=1] run fill ~-11 ~-1 ~-11 ~11 ~6 ~11 minecraft:air replace

execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] positioned ~-35 ~-1 ~-35 as @a[dx=70,dy=50,dz=70] at @s run function tower-defense-minispiel:v1verlassen

execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] positioned ~-40 ~-1 ~-40 run kill @e[dx=80,dy=50,dz=80,type=minecraft:item]

execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] positioned ~-40 ~-1 ~-40 run kill @e[dx=80,dy=50,dz=80,type=minecraft:arrow]

execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] positioned ~-40 ~-1 ~-40 run kill @e[dx=80,dy=50,dz=80,type=minecraft:experience_orb]

execute at @e[type=minecraft:text_display,tag=EtiTowDefMS.1Teleporter,sort=nearest,limit=1] positioned ~-10 ~-4 ~-10 run kill @e[dx=20,dy=20,dz=20,type=minecraft:item]

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigTowDefMS.1Alle:true}] run kill @s
kill @e[tag=EtiTowDefMS.1Alle]

forceload remove ~ ~

execute unless entity @e[type=minecraft:area_effect_cloud,tag=EtiTowDefMS.1Start] run tellraw @a[distance=..25] ["Tower-Defense-Minispiel.1:\n",{"text":"Das Minispiel wurde entfernt!","bold":true}]
