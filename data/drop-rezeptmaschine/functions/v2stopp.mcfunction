
scoreboard objectives remove PZDrRezM.2Nr
scoreboard objectives remove PZDrRezM.2Fort

clear @a minecraft:furnace{EigDrRezM.2Alle:true}
clear @a minecraft:porkchop{EigDrRezM.2Alle:true}
clear @a minecraft:cooked_porkchop{EigDrRezM.2Alle:true}
clear @a minecraft:coal{EigDrRezM.2Alle:true}

kill @e[type=minecraft:item,nbt={Item:{tag:{EigDrRezM.2Alle:true} } }]
tag @e[type=minecraft:item,tag=EtiDrRezM.2Drop] remove EtiDrRezM.2Drop
