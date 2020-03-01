
scoreboard objectives remove PZAuto.2Klick
scoreboard objectives remove PZAuto.2Schl

clear @a minecraft:armor_stand{automobil:"v2gegenstand"}

execute at @e[type=minecraft:villager,tag=EtiAuto.2Auto] run fill ~ ~ ~-4 ~-4 ~3 ~3 minecraft:air replace
execute at @e[type=minecraft:villager,tag=EtiAuto.2Auto] as @e[distance=..5,type=minecraft:item] unless entity @s[nbt=!{Item:{id:"minecraft:cyan_carpet"} },nbt=!{Item:{id:"minecraft:stone_button"} },nbt=!{Item:{id:"minecraft:jungle_sign"} },nbt=!{Item:{id:"minecraft:acacia_button"} }] run kill @s

kill @e[tag=EtiAuto.2Alle]
