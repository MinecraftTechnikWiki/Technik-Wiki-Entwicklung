# Der Rüstungsständer bekommt zwei Etiketten.
tag @s add EtiWegFS.1NichtSpawnen
tag @s add EtiWegFS.1NichtSeite

# In den vier Himmelsrichtungen wird geprüft ob sich dort noch kein Rüstungsständer aufhält. Falls das der Fall ist, wird an der jeweiligen Stelle ein Rüstungsständer gespawnt.
execute positioned ~1 ~ ~ unless entity @e[tag=EtiWegFS.1Knoten,distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {Small:true,NoGravity:true,Marker:true,Invisible:true,Tags:["EtiWegFS.1Alle","EtiWegFS.1NrFehlt","EtiWegFS.1Knoten"],ArmorItems:[{},{},{},{id:"minecraft:cyan_concrete",Count:1b}]}
execute positioned ~ ~ ~1 unless entity @e[tag=EtiWegFS.1Knoten,distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {Small:true,NoGravity:true,Marker:true,Invisible:true,Tags:["EtiWegFS.1Alle","EtiWegFS.1NrFehlt","EtiWegFS.1Knoten"],ArmorItems:[{},{},{},{id:"minecraft:cyan_concrete",Count:1b}]}
execute positioned ~-1 ~ ~ unless entity @e[tag=EtiWegFS.1Knoten,distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {Small:true,NoGravity:true,Marker:true,Invisible:true,Tags:["EtiWegFS.1Alle","EtiWegFS.1NrFehlt","EtiWegFS.1Knoten"],ArmorItems:[{},{},{},{id:"minecraft:cyan_concrete",Count:1b}]}
execute positioned ~ ~ ~-1 unless entity @e[tag=EtiWegFS.1Knoten,distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {Small:true,NoGravity:true,Marker:true,Invisible:true,Tags:["EtiWegFS.1Alle","EtiWegFS.1NrFehlt","EtiWegFS.1Knoten"],ArmorItems:[{},{},{},{id:"minecraft:cyan_concrete",Count:1b}]}

# Bei allen, bei denen die Nummer fehlt, wird die Nummer berechnet in dem sie das ergebnis aus der Addition des eigenen Rüstungsständer plus dem Vorgänger bekommen.
execute store result score @e[tag=EtiWegFS.1NrFehlt] PZWegFS.1Wert run scoreboard players operation @s PZWegFS.1Wert += #VarWegFS.1Vorgaenger PZWegFS.1Wert
execute if entity @e[tag=EtiWegFS.1NrFehlt] run scoreboard players operation @s PZWegFS.1Wert -= #VarWegFS.1Vorgaenger PZWegFS.1Wert
tag @e[tag=EtiWegFS.1NrFehlt] remove EtiWegFS.1NrFehlt
