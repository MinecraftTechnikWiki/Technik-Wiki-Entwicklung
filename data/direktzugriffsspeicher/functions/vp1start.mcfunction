# Punktestand-Ziele werden erstellt.
scoreboard objectives add PZFeld.p1Wert dummy ["Direktzugriffsspeicher.erweitert.1: ",{"text":"Feldwert","bold":true}]
scoreboard objectives add PZFeld.p1Pos dummy ["Direktzugriffsspeicher.erweitert.1: ",{"text":"Feld-Position","bold":true}]
scoreboard objectives add PZFeld.p1Felder dummy ["Direktzugriffsspeicher.erweitert.1: ",{"text":"Felder eines Feldes","bold":true}]

# Eine Güterlore mit einer grünen Shulkerkiste wird als Startposition für die Felder gespawnt.
summon minecraft:armor_stand ~ ~2 ~ {NoGravity:true,Small:true,Invisible:true,Marker:true,Tags:["EtiFeld.p1AlleFelder"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:true,Invulnerable:true,CustomDisplayTile:true,DisplayOffset:6,DisplayState:{Name:"minecraft:lime_shulker_box"},CustomName:'{"text":"Optionen"}',Tags:["EtiFeld.p1Start","EtiFeld.p1AlleFelder"]},{id:"minecraft:armor_stand",NoGravity:true,Small:true,Invisible:true,Tags:["EtiFeld.p1AlleFelder"],CustomNameVisible:true,CustomName:'{"text":"Optionen"}'}]}

# Der Güterlore werden die Punktestandswerte gegeben, damit diese in den Funktionen abgefragt werden können.
scoreboard players set @e[type=minecraft:chest_minecart,tag=EtiFeld.p1Start] PZFeld.p1Felder 0
scoreboard players set @e[type=minecraft:chest_minecart,tag=EtiFeld.p1Start] PZFeld.p1Wert 0

# Es wird eine Partikelwolke erzeugt, an deren Position ein Schild platziert wird, um den Punktestand der Felder in deren Namen speichern zu können.
summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiFeld.p1AlleFelder","EtiFeld.p1Schild"]}
execute at @e[type=minecraft:area_effect_cloud,tag=EtiFeld.p1Schild] run setblock ~ ~ ~ minecraft:oak_sign replace
