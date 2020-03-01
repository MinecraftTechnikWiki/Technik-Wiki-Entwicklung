
scoreboard objectives remove PZKanaBM.1Wert

clear @a minecraft:fishing_rod{kanalbaumaschine:"v1gegenstand"}
clear @a minecraft:armor_stand{kanalbaumaschine:"v1gegenstand"}
clear @a minecraft:white_concrete{kanalbaumaschine:"v1gegenstand"}
clear @a minecraft:quartz_slab{kanalbaumaschine:"v1gegenstand"}
clear @a minecraft:polished_andesite{kanalbaumaschine:"v1gegenstand"}

tag @e[type=minecraft:item,nbt={Item:{tag:{kanalbaumaschine:"v1gegenstand"} } }] add EtiKanaBM.1Alle

kill @e[tag=EtiKanaBM.1Alle]
