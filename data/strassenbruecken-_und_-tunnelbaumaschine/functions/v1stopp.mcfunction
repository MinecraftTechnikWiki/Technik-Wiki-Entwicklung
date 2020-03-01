
scoreboard objectives remove PZStrBTBM.1Wert

clear @a minecraft:fishing_rod{strassenbruecken-_und_-tunnelbaumaschine:"v1gegenstand"}
clear @a minecraft:armor_stand{strassenbruecken-_und_-tunnelbaumaschine:"v1gegenstand"}
clear @a minecraft:gray_concrete{strassenbruecken-_und_-tunnelbaumaschine:"v1gegenstand"}
clear @a minecraft:quartz_block{strassenbruecken-_und_-tunnelbaumaschine:"v1gegenstand"}
clear @a minecraft:stone_brick_slab{strassenbruecken-_und_-tunnelbaumaschine:"v1gegenstand"}

tag @e[type=minecraft:item,nbt={Item:{tag:{strassenbruecken-_und_-tunnelbaumaschine:"v1gegenstand"} } }] add EtiStrBTBM.1Alle

kill @e[tag=EtiStrBTBM.1Alle]
