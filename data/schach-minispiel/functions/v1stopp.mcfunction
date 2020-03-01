scoreboard objectives remove PZSchMS.1Brett
scoreboard objectives remove PZSchMS.1Farbe
scoreboard objectives remove PZSchMS.1Spielz

tag @e[type=minecraft:item,nbt={Item:{tag:{schach-minispiel:"v1gegenstand"} } }] add EtiSchMS.1Alle
execute as @e[tag=EtiSchMS.1Alle] at @s run teleport @s ~ -255 ~
kill @e[tag=EtiSchMS.1Alle]

clear @a[distance=..50] minecraft:armor_stand{schach-minispiel:"v1gegenstand"}
