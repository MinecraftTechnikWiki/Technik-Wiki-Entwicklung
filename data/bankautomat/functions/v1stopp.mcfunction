
scoreboard objectives remove PZBankA.1Wert
scoreboard objectives remove PZBankA.1Klick

execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Alle] run setblock ~ ~ ~ minecraft:air replace
tag @e[type=minecraft:item,nbt={Item:{tag:{bankautomat:"v1gegenstand"} } }] add EtiBankA.1Alle
kill @e[tag=EtiBankA.1Alle]

tag @a[tag=EtiBankA.1Smaragd] remove EtiBankA.1Smaragd

clear @a[distance=..50] minecraft:armor_stand{bankautomat:"v1gegenstand"}
clear @a[distance=..50] minecraft:emerald{bankautomat:"v1gegenstand"}
