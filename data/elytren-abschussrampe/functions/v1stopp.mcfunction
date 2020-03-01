# Das Punktestand-Ziel wird gelöscht
scoreboard objectives remove PZElyAb.1Luft

# Der Rüstungsständer in der Hand wird entfernt
clear @a minecraft:armor_stand{elytren-abschussrampe:"v1gegenstand"}

# Eventuell vorhandene Etiketten werden entfernt
tag @a[tag=EtiElyAb.1Abflug] remove EtiElyAb.1Abflug

# Das Bauwerk an der Stelle des Rüstungsständers wird entfernt
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station] run fill ~-3 ~ ~-3 ~3 ~3 ~3 minecraft:air replace

# Beim Entfernen des Bauwerks, droppen Teppeische, diese erhalten ein Etikett, aber auch herumliegende Drops von den bestimmten Rüstungsständern werden ausgestattet und alle entfernt
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station] run tag @e[distance=..5,type=minecraft:item,nbt={Item:{id:"minecraft:white_carpet"} }] add EtiElyAb.1Alle
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station] run tag @e[distance=..5,type=minecraft:item,nbt={Item:{id:"minecraft:black_carpet"} }] add EtiElyAb.1Alle
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station] run tag @e[distance=..5,type=minecraft:item,nbt={Item:{id:"minecraft:ladder"} }] add EtiElyAb.1Alle
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:armor_stand",tag:{elytren-abschussrampe:"v1gegenstand"} } }] add EtiElyAb.1Alle
kill @e[tag=EtiElyAb.1Alle]
