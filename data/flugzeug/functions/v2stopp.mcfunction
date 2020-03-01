# Das Team der Piloten wird entfernt.
team remove TMFlugz.2Pilot

# Das Holzschwert mit entsprechender Eigenschaft wird wieder entfernt.
clear @a minecraft:wooden_sword{flugzeug:"v2gegenstand"}

# Das Flugzeug wird durch Luft ersetzt und die droppenden Blöcke werden zuvor entfernt.
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug] run fill ~23 ~10 ~23 ~-23 ~-3 ~-23 minecraft:air replace #flugzeug:v2drop-bloecke
execute at @e[type=minecraft:armor_stand,tag=EtiFlugz.2Flugzeug] run fill ~23 ~10 ~23 ~-23 ~-3 ~-23 minecraft:air replace

# Falls das Holzschwert gedroppt wurde, erhält es ein Etikett und wird mit samt aller Flugzeug-Objekte entfernt.
tag @e[type=minecraft:item,nbt={Item:{tag:{flugzeug:"v2gegenstand"} } }] add EtiFlugz.2Alle
kill @e[tag=EtiFlugz.2Alle]
