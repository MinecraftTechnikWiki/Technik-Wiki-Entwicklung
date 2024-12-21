
scoreboard objectives remove PZGildSMS.1Wert
scoreboard objectives remove PZGildSMS.1Sterben
scoreboard objectives remove PZGildSMS.1Verlassen

team remove TMGildSMS.1Lobby
team remove TMGildSMS.1Team1
team remove TMGildSMS.1Team2

bossbar remove gildenschlacht-minispiel:v1lobby
bossbar remove gildenschlacht-minispiel:v1team1
bossbar remove gildenschlacht-minispiel:v1team2

bossbar remove gildenschlacht-minispiel:v1team1anzahl
bossbar remove gildenschlacht-minispiel:v1team2anzahl

data remove storage gildenschlacht-minispiel:v1daten "EigGildSMS.1Name"

clear @a minecraft:red_bed[minecraft:custom_data~{EigGildSMS.1Alle:true}]

execute at @e[type=minecraft:text_display,tag=EtiGildSMS.1Teleporter,sort=nearest,limit=1] run fill ~-8 ~-3 ~-8 ~8 ~15 ~8 minecraft:air replace

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~26 ~33 ~26 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~-26 ~33 ~26 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~26 ~33 ~-26 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run fill ~ ~ ~ ~-26 ~33 ~-26 minecraft:air replace

execute at @e[type=minecraft:interaction,tag=EtiGildSMS.1Wartesaal,sort=nearest,limit=1] run fill ~-11 ~-1 ~-11 ~11 ~6 ~11 minecraft:air replace

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] positioned ~-25 ~-1 ~-25 as @a[dx=50,dy=40,dz=50] at @s run function gildenschlacht-minispiel:v1verlassen

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] positioned ~-25 ~-1 ~-25 run kill @e[dx=50,dy=40,dz=50,type=minecraft:item]

execute at @e[type=minecraft:text_display,tag=EtiGildSMS.1Teleporter,sort=nearest,limit=1] positioned ~-10 ~-4 ~-10 run kill @e[dx=20,dy=20,dz=20,type=minecraft:item]

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigGildSMS.1Alle:true}] run kill @s
kill @e[tag=EtiGildSMS.1Alle]

forceload remove ~ ~

execute unless entity @e[type=minecraft:area_effect_cloud,tag=EtiGildSMS.1Start] run tellraw @a[distance=..25] ["Gildenschlacht-Minispiel.1:\n",{"text":"Das Minispiel wurde entfernt!","bold":true}]
