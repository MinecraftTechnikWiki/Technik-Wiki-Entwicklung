
scoreboard objectives remove PZWartH.1Wert
scoreboard objectives remove PZWartH.1Nr

team remove TMWartH.1Lobby
team remove TMWartH.1Team1
team remove TMWartH.1Team2
#team remove TMWartH.1Team3
#team remove TMWartH.1Team4

#clear @a minecraft:stick{EigWartH.1Alle:true}
clear @a minecraft:red_bed{EigWartH.1Alle:true}
clear @a minecraft:leather_helmet{EigWartH.1Alle:true}

clear @a #wartehalle:v1menu{EigWartH.1Alle:true}

data remove entity @e[type=minecraft:chest_minecart,tag=EtiWartH.1GUI,sort=nearest,limit=1] Items

execute at @e[type=minecraft:armor_stand,tag=EtiWartH.1Schild] run setblock ~ ~ ~ minecraft:air replace

execute at @e[type=minecraft:armor_stand,tag=EtiWartH.1Wartehalle] run fill ~-10 ~ ~-10 ~10 ~10 ~10 minecraft:air replace
execute at @e[type=minecraft:armor_stand,tag=EtiWartH.1Teleporter] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace

tag @e[type=minecraft:item,nbt={Item:{tag:{EigWartH.1Alle:true} } }] add EtiWartH.1Alle
kill @e[tag=EtiWartH.1Alle]
