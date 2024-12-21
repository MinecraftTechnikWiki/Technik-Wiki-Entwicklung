


schedule function afk-sensor:v1sensor 5s replace




data modify storage afk-sensor:v1daten "EigAFKSen.1Argumente".UUID set from entity @p UUID


execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigImpG.2Alle:true}] run kill @s



kill @e[type=minecraft:item,nbt={Item:{tag:{EigImpG.1Alle:true} } }]
kill @e[type=minecraft:item,nbt={Item:{tag:{EigImpG.2Alle:true} } }]
