
scoreboard objectives remove PZSchGl.2Richt
clear @a minecraft:minecart{EigSchGl.2Alle:true}
clear @a minecraft:minecart{display:{Name:'{"text":"Superlore"}'} }

kill @e[type=minecraft:item,nbt={Item:{tag:{EigSchGl.2Alle:true} } }]
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"text":"Superlore"}'} } } }]
