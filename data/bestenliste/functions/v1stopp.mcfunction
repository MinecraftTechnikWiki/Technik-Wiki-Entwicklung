
scoreboard objectives remove PZBestLi.1Ausl
scoreboard objectives remove PZBestLi.1Wert

clear @a minecraft:armor_stand{EigBestLi.1Alle:true}

tag @a[tag=EtiBestLi.1Auswahl] remove EtiBestLi.1Auswahl
tag @a[tag=EtiBestLi.1Rangliste] remove EtiBestLi.1Rangliste

execute at @e[type=minecraft:marker,tag=EtiBestLi.1Schild] run setblock ~ ~ ~ minecraft:air replace

tag @e[type=minecraft:item,nbt={Item:{tag:{EigBestLi.1Alle:true} } }] add EtiBestLi.1Alle
kill @e[tag=EtiBestLi.1Alle]
