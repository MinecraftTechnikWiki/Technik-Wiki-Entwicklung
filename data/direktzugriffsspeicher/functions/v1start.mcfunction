# Punktestand-Ziele werden erstellt
scoreboard objectives add PZFeld.1Wert dummy ["Direktzugriffsspeicher.1: ",{"text":"Feldwert","bold":true}]
scoreboard objectives add PZFeld.1Pos dummy ["Direktzugriffsspeicher.1: ",{"text":"Feldposition","bold":true}]

# Eine Güterlore mit einer grünen Shulkerkiste wird als Startposition für die Felder gespawnt
summon minecraft:armor_stand ~ ~2 ~ {NoGravity:true,Small:true,Invisible:true,Marker:true,Tags:["EtiFeld.1AlleFelder"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:true,Invulnerable:true,CustomDisplayTile:true,DisplayOffset:6,DisplayState:{Name:"minecraft:lime_shulker_box"},CustomName:"{\"text\":\"Optionen\"}",Tags:["EtiFeld.1Start","EtiFeld.1AlleFelder"]},{id:"minecraft:armor_stand",NoGravity:true,Small:true,Invisible:true,Tags:["EtiFeld.1AlleFelder"],CustomNameVisible:true,CustomName:"{\"text\":\"Optionen\"}"}]}

# Der Güterlore werden die Punktestandswerte gegeben, damit diese in den Funktionen abgefragt werden können
scoreboard players set @e[type=minecraft:chest_minecart,tag=EtiFeld.1Start] PZFeld.1Pos 0
scoreboard players set @e[type=minecraft:chest_minecart,tag=EtiFeld.1Start] PZFeld.1Wert 0
