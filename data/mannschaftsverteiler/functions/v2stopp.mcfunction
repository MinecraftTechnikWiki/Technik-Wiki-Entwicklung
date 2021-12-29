
scoreboard objectives remove PZManSV.2Ausl
scoreboard objectives remove PZManSV.2Wert

team remove TMManSV.2Team1
team remove TMManSV.2Team2
team remove TMManSV.2Team3
team remove TMManSV.2Team4

clear @a minecraft:stick{EigManSV.2Alle:true}
clear @a minecraft:leather_helmet{EigManSV.2Alle:true}

tag @a[tag=EtiManSV.2Auswahl] remove EtiManSV.2Auswahl

execute at @e[type=minecraft:marker,tag=EtiManSV.2Plattform] run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:air replace minecraft:gray_concrete

tag @e[type=minecraft:item,nbt={Item:{tag:{EigManSV.2Alle:true} } }] add EtiManSV.2Alle
kill @e[tag=EtiManSV.2Alle]
