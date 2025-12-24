
scoreboard objectives remove PZSchadS.1Ver
scoreboard objectives remove PZSchadS.1Erl

gamemode creative @a[distance=..25,gamemode=survival]

clear @a *[minecraft:custom_data~{EigSchadS.1Alle:true}]

tag @a[tag=EtiSchadS.1Auswahl] remove EtiSchadS.1Auswahl

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigSchadS.1Alle:true}] run kill @s
kill @e[tag=EtiSchadS.1Alle]
