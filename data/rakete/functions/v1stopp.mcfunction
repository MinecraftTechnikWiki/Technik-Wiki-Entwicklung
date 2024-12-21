
scoreboard objectives remove PZRakete.1Wert

bossbar remove rakete:v1zaehler

clear @a minecraft:armor_stand[minecraft:custom_data~{EigRakete.1Alle:true}]

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigRakete.1Alle:true}] run kill @s
kill @e[tag=EtiRakete.1Alle]
