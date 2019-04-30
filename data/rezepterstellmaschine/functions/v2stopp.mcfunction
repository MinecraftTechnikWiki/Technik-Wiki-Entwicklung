
#scoreboard objectives remove PZRezM.2ID

execute at @e[type=minecraft:armor_stand,tag=EtiRezM.2Werkbank] run setblock ~ ~ ~ minecraft:air replace
execute at @e[type=minecraft:armor_stand,tag=EtiRezM.2Rezept] run fill ~ ~ ~ ~1 ~ ~ minecraft:air replace
kill @e[type=minecraft:armor_stand,tag=EtiRezM.2Alle]
clear @a minecraft:armor_stand{display:{Lore:["Rezeptmaschine.2"]} }
