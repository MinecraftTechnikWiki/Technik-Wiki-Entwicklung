
scoreboard objectives remove PZBankA.1Wert
scoreboard objectives remove PZBankA.1Klick

execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Alle] run setblock ~ ~ ~ minecraft:air replace
tag @e[type=minecraft:item,nbt={Item:{tag:{EigBankA.1Alle:true} } }] add EtiBankA.1Alle
kill @e[tag=EtiBankA.1Alle]

tag @a[tag=EtiBankA.1Smaragd] remove EtiBankA.1Smaragd

clear @a[distance=..50] minecraft:armor_stand{EigBankA.1Alle:true}
clear @a[distance=..50] minecraft:emerald{EigBankA.1Alle:true}
