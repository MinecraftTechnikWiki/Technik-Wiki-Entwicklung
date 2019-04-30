# Sobald ein Rüstungsständer platziert ist, wird für diesen die entsprechende Funktion aufgerufen
execute as @e[type=minecraft:armor_stand,tag=EtiGleisV.2Gleisstrecke] at @s run function gleisverleger:v2gleisstrecke
execute as @e[type=minecraft:armor_stand,tag=EtiGleisV.2Gleiskurve] at @s run function gleisverleger:v2gleiskurve

# Sobald der Rüstungsständer platziert wurde, wird ein Redstone-Block einen Block abseits platziert um die Konstruktion zu laden
execute at @e[type=minecraft:armor_stand,tag=EtiGleisV.2Bauwerk] run setblock ~ ~ ~1 minecraft:redstone_block replace

# Der platzierte Rüstungsständer wird anschließend gelöscht
kill @e[type=minecraft:armor_stand,tag=EtiGleisV.2Bauwerk]
