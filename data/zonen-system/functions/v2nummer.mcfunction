# Jeder Spieler erhlt seine eigene Nummer
scoreboard players add #VarZone.2SpielerNummer PZZone.2Nr 1
scoreboard players operation @s PZZone.2Nr = #VarZone.2SpielerNummer PZZone.2Nr
give @s minecraft:chest{zonen-system:"v2gegenstand",display:{Lore:['"Wirf den Gegenstand mit Q"','"um die Option für"','"die Zonen zu erhalten"'] } } 3
give @s minecraft:red_wool{zonen-system:"v2gegenstand",display:{Lore:['"Wirf den Gegenstand mit Q"','"um die Zone in"','"x-Richtung zu vergrößern"'] } } 15
give @s minecraft:blue_wool{zonen-system:"v2gegenstand",display:{Lore:['"Wirf den Gegenstand mit Q"','"um die Zone in"','"y-Richtung zu vergrößern"'] } } 15
tag @s add EtiZone.2SpielerNummer
