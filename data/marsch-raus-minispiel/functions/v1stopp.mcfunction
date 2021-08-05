
scoreboard objectives remove PZMADNMS.1Wert
scoreboard objectives remove PZMADNMS.1Team
scoreboard objectives remove PZMADNMS.1Drop

clear @a minecraft:armor_stand{EigMADNMS.1Alle:true}
clear @a minecraft:player_head{EigMADNMS.1Alle:true}

execute at @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Spielfeld] run fill ~-16 ~-1 ~-16 ~16 ~-1 ~16 minecraft:air replace

kill @e[tag=EtiMADNMS.1Alle]

forceload remove ~ ~
