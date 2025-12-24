
scoreboard objectives remove PZMordS.2Mord
scoreboard objectives remove PZMordS.2MordDie
scoreboard objectives remove PZMordS.2MordPig
scoreboard objectives remove PZMordS.2TodDie
scoreboard objectives remove PZMordS.2TodPig

gamemode creative @a[distance=..25,gamemode=survival]

tag @a[tag=EtiMordS.2Auswahl] remove EtiMordS.2Auswahl

clear @a *[minecraft:custom_data~{EigMordS.2Alle:true}]

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigMordS.2Alle:true}] run kill @s
kill @e[tag=EtiMordS.2Alle]
