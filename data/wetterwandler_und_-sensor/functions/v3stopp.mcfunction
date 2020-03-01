# Das Punktestand-Ziel wird entfernt
scoreboard objectives remove PZWetWS.3Wert

# Der Rüstungsständer wie die Wasserflaschen werden aus dem Inventar entfernt
clear @a minecraft:armor_stand{wetterwandler_und_-sensor:"v3gegenstand"}
clear @a minecraft:potion{wetterwandler_und_-sensor:"v3gegenstand"}

# Der Kessel der an der Stelle des Rüstungsständers steht wird durch Luft ersetzt
execute at @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage] run setblock ~ ~ ~ minecraft:air replace

# Falls die Gegenstände auf dem Boden geworfen wurden, werden sie mit einem Etikett belegt und anschließend werden alle Objekte mit diesem Etikett gelöscht
tag @e[type=minecraft:item,nbt={Item:{wetterwandler_und_-sensor:"v3gegenstand"} }] add EtiWetWS.3Alle
kill @e[type=minecraft:armor_stand,tag=EtiWetWS.3Alle]
