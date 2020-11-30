
scoreboard objectives remove PZStrBTBM.1Wert

clear @a minecraft:fishing_rod{EigStrBTBM.1Alle:true}
clear @a minecraft:armor_stand{EigStrBTBM.1Alle:true}
clear @a minecraft:gray_concrete{EigStrBTBM.1Alle:true}
clear @a minecraft:quartz_block{EigStrBTBM.1Alle:true}
clear @a minecraft:stone_brick_slab{EigStrBTBM.1Alle:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{EigStrBTBM.1Alle:true} } }] add EtiStrBTBM.1Alle

kill @e[tag=EtiStrBTBM.1Alle]

# Der Chunk wird deaktiviert.
forceload remove ~ ~
