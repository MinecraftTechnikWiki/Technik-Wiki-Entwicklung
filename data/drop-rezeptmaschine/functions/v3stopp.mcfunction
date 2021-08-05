
scoreboard objectives remove PZDrRezM.3Drop
scoreboard objectives remove PZDrRezM.3Fort

#clear @a minecraft:cauldron{EigDrRezM.3Alle:true}

clear @a[nbt={Inventory:[{tag:{EigDrRezM.3Alle:true} } ] }] minecraft:lingering_potion
clear @a[nbt={Inventory:[{tag:{EigDrRezM.3Alle:true} } ] }] minecraft:splash_potion
clear @a[nbt={Inventory:[{tag:{EigDrRezM.3Alle:true} } ] }] minecraft:potion

clear @a minecraft:brewing_stand{EigDrRezM.3Alle:true}
clear @a minecraft:blaze_powder{EigDrRezM.3Alle:true}
clear @a minecraft:fermented_spider_eye{EigDrRezM.3Alle:true}
clear @a minecraft:gunpowder{EigDrRezM.3Alle:true}
clear @a minecraft:dragon_breath{EigDrRezM.3Alle:true}

kill @e[type=minecraft:item,nbt={Item:{tag:{EigDrRezM.3Alle:true} } }]

tag @e[type=minecraft:item,tag=EtiDrRezM.3Drop] remove EtiDrRezM.3Drop
