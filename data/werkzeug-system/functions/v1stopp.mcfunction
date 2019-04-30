# Punktestand-Ziele werden entfernt
scoreboard objectives remove PZWerkS.1Verz
scoreboard objectives remove PZWerkS.1Haltb

scoreboard objectives remove PZWerkS.1Weizen
scoreboard objectives remove PZWerkS.1Karotte
scoreboard objectives remove PZWerkS.1Kartoff
scoreboard objectives remove PZWerkS.1Bete

# Hacken werden entfernt
clear @s minecraft:wooden_hoe{display:{Name:"{\"text\":\"Werkzeug-System.1\"}"} }
clear @s minecraft:stone_hoe{display:{Name:"{\"text\":\"Werkzeug-System.1\"}"} }
clear @s minecraft:iron_hoe{display:{Name:"{\"text\":\"Werkzeug-System.1\"}"} }
clear @s minecraft:golden_hoe{display:{Name:"{\"text\":\"Werkzeug-System.1\"}"} }
clear @s minecraft:diamond_hoe{display:{Name:"{\"text\":\"Werkzeug-System.1\"}"} }
clear @s minecraft:carrot

# Den Spielmodus auf Kreativ setzen
gamemode creative @s[gamemode=!creative]

# Ackerboden und Karotten werden um die Befehlsquelle entfernt
fill ~-16 ~1 ~-16 ~16 ~1 ~16 minecraft:air replace minecraft:carrots
fill ~-16 ~ ~-16 ~16 ~ ~16 minecraft:air replace minecraft:water
fill ~-16 ~ ~-16 ~16 ~ ~16 minecraft:air replace minecraft:dirt
fill ~-16 ~ ~-16 ~16 ~ ~16 minecraft:air replace minecraft:farmland

# Die herumliegenden Karotten werden entfernt
kill @e[distance=..25,type=minecraft:item,nbt={Item:{id:"minecraft:carrot"} } ]
kill @e[distance=..25,type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"text\":\"Werkzeug-System.1\"}"} } } } ]
