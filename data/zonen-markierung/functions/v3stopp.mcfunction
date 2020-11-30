
scoreboard objectives remove PZZonMa.3Nummer
scoreboard objectives remove PZZonMa.3Betritt

execute at @e[type=minecraft:armor_stand,tag=EtiZonMa.3Zone] run fill ~-7 ~ ~-7 ~8 ~ ~8 minecraft:air replace minecraft:smooth_stone_slab


tag @a[tag=EtiZonMa.3Nachricht] remove EtiZonMa.3Nachricht
tag @a[tag=EtiZonMa.3InZone] remove EtiZonMa.3InZone

tag @a[tag=EtiZonMa.3ErstbetrittWerkbankhausen] remove EtiZonMa.3ErstbetrittWerkbankhausen
tag @a[tag=EtiZonMa.3ErstbetrittBraustandhausen] remove EtiZonMa.3ErstbetrittBraustandhausen
tag @a[tag=EtiZonMa.3Erstbetritt] remove EtiZonMa.3Erstbetritt


clear @a minecraft:armor_stand{EigZonMa.3Alle:true}
clear @a minecraft:crafting_table{EigZonMa.3Alle:true}
clear @a minecraft:chest{EigZonMa.3Alle:true}
clear @a minecraft:furnace{EigZonMa.3Alle:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{EigZonMa.3Alle:true} } }] add EtiZonMa.3Alle
kill @e[tag=EtiZonMa.3Alle]
