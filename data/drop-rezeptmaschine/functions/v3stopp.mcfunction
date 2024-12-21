
scoreboard objectives remove PZDrRezM.3Drop
scoreboard objectives remove PZDrRezM.3Fort

#clear @a minecraft:cauldron{EigDrRezM.3Alle:true}

clear @a[nbt={Inventory:[{components:{"minecraft:custom_data":{EigDrRezM.3Alle:true} } } ] }] minecraft:lingering_potion
clear @a[nbt={Inventory:[{components:{"minecraft:custom_data":{EigDrRezM.3Alle:true} } } ] }] minecraft:splash_potion
clear @a[nbt={Inventory:[{components:{"minecraft:custom_data":{EigDrRezM.3Alle:true} } } ] }] minecraft:potion

clear @a *[minecraft:custom_data~{EigDrRezM.3Alle:true}]

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigDrRezM.3Alle:true}] run kill @s

tag @e[type=minecraft:item,tag=EtiDrRezM.3Drop] remove EtiDrRezM.3Drop
