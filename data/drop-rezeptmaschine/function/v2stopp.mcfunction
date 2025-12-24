
scoreboard objectives remove PZDrRezM.2Drop
scoreboard objectives remove PZDrRezM.2Fort

clear @a *[minecraft:custom_data~{EigDrRezM.2Alle:true}]

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigDrRezM.2Alle:true}] run kill @s

tag @e[type=minecraft:item,tag=EtiDrRezM.2Drop] remove EtiDrRezM.2Drop
