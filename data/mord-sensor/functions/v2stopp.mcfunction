
scoreboard objectives remove PZMordS.2Mord
scoreboard objectives remove PZMordS.2MordDie
scoreboard objectives remove PZMordS.2MordPig
scoreboard objectives remove PZMordS.2TodDie
scoreboard objectives remove PZMordS.2TodPig

gamemode creative @a[distance=..25,gamemode=survival]

tag @a[tag=EtiMordS.2Auswahl] remove EtiMordS.2Auswahl

clear @a minecraft:stick{EigMordS.2Alle:true}
clear @a minecraft:iron_sword{EigMordS.2Alle:true}
clear @a minecraft:vindicator_spawn_egg{EigMordS.2Alle:true}
clear @a minecraft:piglin_spawn_egg{EigMordS.2Alle:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{EigMordS.2Alle:true} } }] add EtiMordS.2Alle
kill @e[tag=EtiMordS.2Alle]
