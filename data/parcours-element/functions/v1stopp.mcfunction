
scoreboard objectives remove PZParEl.1Klick

fill ~ ~1 ~ ~ ~1 ~ minecraft:air replace

clear @a *[minecraft:custom_data~{EigParEl.1Alle:true}]

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigParEl.1Alle:true}] run kill @s
