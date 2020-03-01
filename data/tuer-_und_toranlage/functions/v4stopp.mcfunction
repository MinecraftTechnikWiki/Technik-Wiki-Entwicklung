
scoreboard objectives remove PZTuTor.4Tor
scoreboard objectives remove PZTuTor.4Zeit

clear @a minecraft:armor_stand{tuer-_und_toranlage:"v4gegenstand"}

execute at @e[type=minecraft:armor_stand,tag=EtiTuTor.4Torrahmen] run fill ~4 ~ ~4 ~-4 ~8 ~-4 minecraft:air replace

tag @e[type=minecraft:item,nbt={Item:{tag:{tuer-_und_toranlage:"v1gegenstand"} } }] add EtiTuTor.4Alle
kill @e[tag=EtiTuTor.4Alle]
