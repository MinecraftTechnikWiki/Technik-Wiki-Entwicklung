
scoreboard objectives remove PZFarBMi.1Leben
scoreboard objectives remove PZFarBMi.1Wert
scoreboard objectives remove PZFarBMi.1Rot
scoreboard objectives remove PZFarBMi.1Blau

team remove TMFarBMi.1Rot
team remove TMFarBMi.1Blau

item replace entity @a[nbt={Inventory:[{Slot:103b,tag:{EigFarBMi.1Alle:true} } ] }] armor.head with minecraft:air

tag @a[tag=EtiFarBMi.1Warten] remove EtiFarBMi.1Warten
tag @a[tag=EtiFarBMi.1Getroffen] remove EtiFarBMi.1Getroffen

execute at @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Farbe] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:air replace

execute at @e[type=minecraft:marker,tag=EtiFarBMi.1Spielfeld] run fill ~ ~ ~ ~31 ~31 ~30 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiFarBMi.1Spielfeld] run fill ~-1 ~ ~ ~-31 ~31 ~30 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiFarBMi.1Spielfeld] run fill ~-1 ~ ~-1 ~-31 ~31 ~-32 minecraft:air replace
execute at @e[type=minecraft:marker,tag=EtiFarBMi.1Spielfeld] run fill ~ ~ ~-1 ~31 ~31 ~-32 minecraft:air replace

kill @e[tag=EtiFarBMi.1Alle]

forceload remove ~ ~
