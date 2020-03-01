# Sobald ein Rüstungsständer platziert ist, wird für diesen die entsprechende Funktion aufgerufen
execute as @e[type=minecraft:armor_stand,tag=EtiGleisB.1Gleisstrecke] at @s run function gleisbaumaschine:v1gleisstrecke
execute as @e[type=minecraft:armor_stand,tag=EtiGleisB.1Gleiskurve] at @s run function gleisbaumaschine:v1gleiskurve

# Sobald der Rüstungsständer platziert wurde, wird ein Redstone-Block einen Block abseits platziert um die Konstruktion zu laden
execute at @e[type=minecraft:armor_stand,tag=EtiGleisB.1Bauwerk] run setblock ~ ~ ~1 minecraft:redstone_block replace

# Der platzierte Rüstungsständer wird anschließend gelöscht
kill @e[type=minecraft:armor_stand,tag=EtiGleisB.1Bauwerk]
