
scoreboard objectives remove PZTeleP.3Nr
execute at @e[type=minecraft:armor_stand,tag=EtiTeleP.3PortalNummer] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Teleporter.3"]} } } }] add EtiTeleP.3Alle
kill @e[tag=EtiTeleP.3Alle]
clear @a[distance=..50] minecraft:armor_stand{display:{Lore:["Teleporter.3"]} }
gamemode creative @a[distance=..50,gamemode=adventure]
gamerule sendCommandFeedback true
