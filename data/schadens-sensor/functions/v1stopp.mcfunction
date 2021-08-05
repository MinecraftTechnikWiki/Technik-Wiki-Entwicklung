
scoreboard objectives remove PZSchadS.1Ver
scoreboard objectives remove PZSchadS.1Erl

gamemode creative @a[distance=..25,gamemode=survival]

clear @a minecraft:stick{EigSchadS.1Alle:true}
clear @a minecraft:iron_sword{EigSchadS.1Alle:true}
clear @a minecraft:piglin_spawn_egg{EigSchadS.1Alle:true}

tag @a[tag=EtiSchadS.1Auswahl] remove EtiSchadS.1Auswahl

tag @e[type=minecraft:item,nbt={Item:{tag:{EigSchadS.1Alle:true} } }] add EtiSchadS.1Alle
kill @e[tag=EtiSchadS.1Alle]
