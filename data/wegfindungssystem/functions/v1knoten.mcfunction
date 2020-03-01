# Wenn sich ander aktuellen Position solide Blöcke aufhalten, wird die Hindernis-Funktion aufgerufen
execute unless block ~ ~ ~ #wegfindungssystem:v1nichtsolide run function wegfindungssystem:v1hindernis

# Wenn sich innerhalb eines Meters um den Knoten der Zielpunkt befindet, wird ihm das Etikett gegeben.
execute if entity @e[tag=EtiWegFS.1Ziel,distance=..0.99] run tag @s add EtiWegFS.1Fertig

# Wenn der eigene Rüstungsständer keines von zwei Etiketten besitzt, so schaut er Richtung Ziel und die nächste zentrische Position aus wird angepeilt um dort zu prüfen ob sich dort nicht schon ein Knoten-Rüstungsständer befindet. Falls nicht wird einer erzeugt.
execute if entity @s[tag=!EtiWegFS.1NichtSpawnen,tag=!EtiWegFS.1Hindernis] facing entity @e[tag=EtiWegFS.1Ziel] feet anchored feet align xyz positioned ~0.5 ~ ~0.5 positioned ^ ^ ^1 anchored feet align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=EtiWegFS.1Knoten,distance=..0.99] run summon minecraft:armor_stand ~ ~ ~ {Small:true,NoGravity:true,Marker:true,Invisible:true,Tags:["EtiWegFS.1Alle","EtiWegFS.1NrFehlt","EtiWegFS.1Knoten"],ArmorItems:[{},{},{},{id:"minecraft:cyan_concrete",Count:1b}]}

# Wenn die Nummer bei einem oder mehreren Knoten fehlt, wird der aktuelle Wert mit dem Wert der Vorgänger-Variable addiert und dem übergeben, dem die Nummer fehlt.
execute store result score @e[tag=EtiWegFS.1NrFehlt] PZWegFS.1Wert run scoreboard players operation @s PZWegFS.1Wert += #VarWegFS.1Vorgaenger PZWegFS.1Wert
execute if entity @e[tag=EtiWegFS.1NrFehlt] run scoreboard players operation @s PZWegFS.1Wert -= #VarWegFS.1Vorgaenger PZWegFS.1Wert
tag @e[tag=EtiWegFS.1NrFehlt] remove EtiWegFS.1NrFehlt
