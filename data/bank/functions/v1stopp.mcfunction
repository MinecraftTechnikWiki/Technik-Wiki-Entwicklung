
scoreboard objectives remove PZBank.1Nr
scoreboard objectives remove PZBank.1Wert
scoreboard objectives remove PZBank.1Klick

execute at @e[type=minecraft:armor_stand,tag=EtiBank.1Alle] run setblock ~ ~ ~ minecraft:air replace
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Bank.1"]} } } }] add EtiBank.1Alle
kill @e[tag=EtiBank.1Alle]

tag @a[tag=EtiBank.1Smaragd] remove EtiBank.1Smaragd
tag @a[tag=EtiBank.1SpielerNummer] remove EtiBank.1SpielerNummer

clear @a[distance=..50] minecraft:armor_stand{display:{Lore:["Bank.1"] } }
clear @a[distance=..50] minecraft:emerald{display:{Lore:["Bank.1"] } }
