
scoreboard objectives remove PZVorH.1Wert
scoreboard objectives remove PZVorH.1Nr

team remove TMVorH.1Lobby
team remove TMVorH.1Team1
team remove TMVorH.1Team2
#team remove TMVorH.1Team3
#team remove TMVorH.1Team4

#clear @a minecraft:stick{EigVorH.1Alle:true}
clear @a minecraft:red_bed{EigVorH.1Alle:true}
clear @a minecraft:leather_helmet{EigVorH.1Alle:true}

clear @a #vorhalle:v1menu{EigVorH.1Alle:true}

data remove entity @e[type=minecraft:chest_minecart,tag=EtiVorH.1GUI,sort=nearest,limit=1] Items

execute at @e[type=minecraft:armor_stand,tag=EtiVorH.1Schild] run setblock ~ ~ ~ minecraft:air replace

execute at @e[type=minecraft:armor_stand,tag=EtiVorH.1Vorhalle] run fill ~-10 ~ ~-10 ~10 ~10 ~10 minecraft:air replace
execute at @e[type=minecraft:armor_stand,tag=EtiVorH.1Teleporter] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace

tag @e[type=minecraft:item,nbt={Item:{tag:{EigVorH.1Alle:true} } }] add EtiVorH.1Alle
kill @e[tag=EtiVorH.1Alle]
