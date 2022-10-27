
scoreboard objectives remove PZGlBW.1Schl
scoreboard objectives remove PZGlBW.1Erfolg

clear @a minecraft:armor_stand{EigGlBW.1Alle:true}
clear @a minecraft:granite{EigGlBW.1Alle:true}
clear @a minecraft:diorite{EigGlBW.1Alle:true}
clear @a minecraft:andesite{EigGlBW.1Alle:true}
clear @a minecraft:gravel{EigGlBW.1Alle:true}

execute at @e[type=minecraft:area_effect_cloud,tag=EtiGlBW.1Alle] run fill ~ ~ ~ ~ ~-1.5 ~-1 minecraft:air

tag @e[type=minecraft:item,nbt={Item:{tag:{EigGlBW.1Alle:true} } }] add EtiGlBW.1Alle
kill @e[tag=EtiGlBW.1Alle]
