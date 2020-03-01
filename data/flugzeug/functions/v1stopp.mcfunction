# Das Punktestand-Ziel wird entfernt.
scoreboard objectives remove PZFlugz.1Wert

# Das Team der Piloten wird entfernt.
team remove TMFlugz.1Pilot

# Das Flugzeug wird durch Luft ersetzt.
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug] run fill ^10 ^3 ^4 ^-10 ^-1 ^-15 minecraft:air replace

# Die Akazientüren und -druckplatten werden mit einem Etikett ausgestattet und anschließend werden alle Flugzeug-Objekte entfernt.
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug] run tag @e[distance=..100,type=minecraft:item,nbt={Item:{id:"minecraft:acacia_door"} }] add EtiFlugz.1Alle
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.1Flugzeug] run tag @e[distance=..100,type=minecraft:item,nbt={Item:{id:"minecraft:acacia_pressure_plate"} }] add EtiFlugz.1Alle
kill @e[tag=EtiFlugz.1Alle]
