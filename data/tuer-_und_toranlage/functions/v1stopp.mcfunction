
scoreboard objectives remove PZTuTor.1Tor
scoreboard objectives remove PZTuTor.1Zeit
#scoreboard objectives remove PZTuTor.1BeimTor

clear @a minecraft:armor_stand{tuer-_und_toranlage:"v1gegenstand"}

execute at @e[type=minecraft:armor_stand,tag=EtiTuTor.1Torrahmen] run fill ~4 ~ ~4 ~-4 ~8 ~-4 minecraft:air replace

tag @e[type=minecraft:item,nbt={Item:{tag:{tuer-_und_toranlage:"v1gegenstand"} } }] add EtiTuTor.1Alle
kill @e[tag=EtiTuTor.1Alle]
