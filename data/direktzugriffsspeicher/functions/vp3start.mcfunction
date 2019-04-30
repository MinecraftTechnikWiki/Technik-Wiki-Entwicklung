# Punktestand-Ziele werden erstellt
scoreboard objectives add PZFeld.p3Wert dummy ["Direktzugriffsspeicher.plus.1: ",{"text":"Feldwert","bold":true}]
scoreboard objectives add PZFeld.p3Pos dummy ["Direktzugriffsspeicher.plus.1: ",{"text":"Feld-Position","bold":true}]
scoreboard objectives add PZFeld.p3Felder dummy ["Direktzugriffsspeicher.plus.1: ",{"text":"Felder eines Feldes","bold":true}]
scoreboard objectives add PZFeld.p3Dim dummy ["Direktzugriffsspeicher.plus.3: ",{"text":"Feld-Dimension","bold":true}]

# Eine Güterlore mit einer grünen Shulkerkiste wird als Startposition für die Felder gespawnt
summon minecraft:armor_stand ~ ~2 ~ {NoGravity:true,Small:true,Invisible:true,Marker:true,Tags:["EtiFeld.p3AlleFelder"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:true,Invulnerable:true,CustomDisplayTile:true,DisplayOffset:6,DisplayState:{Name:"minecraft:yellow_shulker_box"},CustomName:"{\"text\":\"Optionen\"}",Tags:["EtiFeld.p3Start","EtiFeld.p3AlleFelder"]},{id:"minecraft:armor_stand",NoGravity:true,Small:true,Invisible:true,Tags:["EtiFeld.p3AlleFelder"],CustomNameVisible:true,CustomName:"{\"text\":\"Optionen\"}"}]}

# Der Güterlore werden die Punktestandswerte gegeben, damit diese in den Funktionen abgefragt werden können
scoreboard players set @e[type=minecraft:chest_minecart,tag=EtiFeld.p3Start] PZFeld.p3Felder 0
scoreboard players set @e[type=minecraft:chest_minecart,tag=EtiFeld.p3Start] PZFeld.p3Wert 0
