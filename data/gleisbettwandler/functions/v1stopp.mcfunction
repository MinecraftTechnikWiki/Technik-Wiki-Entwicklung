
scoreboard objectives remove PZGlBW.1Schl
scoreboard objectives remove PZGlBW.1Erfolg

clear @a[distance=..25] minecraft:armor_stand{display:{Lore:["Gleisbettwandler.1"] } }
clear @a[distance=..25] minecraft:granite{display:{Lore:["Gleisbettwandler.1"] } }
clear @a[distance=..25] minecraft:diorite{display:{Lore:["Gleisbettwandler.1"] } }
clear @a[distance=..25] minecraft:andesite{display:{Lore:["Gleisbettwandler.1"] } }
clear @a[distance=..25] minecraft:gravel{display:{Lore:["Gleisbettwandler.1"] } }

execute at @e[type=minecraft:area_effect_cloud,tag=EtiGlBW.1Alle] run fill ~ ~ ~ ~ ~-1.5 ~-1 minecraft:air

kill @e[tag=EtiGlBW.1Alle]
