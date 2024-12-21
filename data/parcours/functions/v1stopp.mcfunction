
scoreboard objectives remove PZParc.1Wert

clear @a *[minecraft:custom_data~{EigParc.1Alle:true}]

execute at @e[type=minecraft:armor_stand,tag=EtiParc.1Bauwerk] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace

execute at @e[type=minecraft:marker,tag=EtiParc.1Block] run setblock ~ ~ ~ minecraft:air replace

kill @e[tag=EtiParc.1Alle]
