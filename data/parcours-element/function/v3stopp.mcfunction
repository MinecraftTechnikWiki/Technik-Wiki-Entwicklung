
scoreboard objectives remove PZParEl.3Wert

clear @a minecraft:armor_stand[minecraft:custom_data~{EigParEl.3Alle:true}]

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigParEl.3Alle:true}] run kill @s
kill @e[tag=EtiParEl.3Alle]
