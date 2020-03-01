
scoreboard objectives remove PZGlBW.1Schl
scoreboard objectives remove PZGlBW.1Erfolg

clear @a[distance=..25] minecraft:armor_stand{gleisbettwandler:"v1gegenstand"}
clear @a[distance=..25] minecraft:granite{gleisbettwandler:"v1gegenstand"}
clear @a[distance=..25] minecraft:diorite{gleisbettwandler:"v1gegenstand"}
clear @a[distance=..25] minecraft:andesite{gleisbettwandler:"v1gegenstand"}
clear @a[distance=..25] minecraft:gravel{gleisbettwandler:"v1gegenstand"}

execute at @e[type=minecraft:area_effect_cloud,tag=EtiGlBW.1Alle] run fill ~ ~ ~ ~ ~-1.5 ~-1 minecraft:air

tag @e[type=minecraft:item,nbt={Item:{tag:{gleisbettwandler:"v1gegenstand"} } }] add EtiGlBW.1Alle
kill @e[tag=EtiGlBW.1Alle]
