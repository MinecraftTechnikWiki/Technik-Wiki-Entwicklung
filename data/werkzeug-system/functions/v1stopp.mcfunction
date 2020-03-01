# Punktestand-Ziele werden entfernt
scoreboard objectives remove PZWerkS.1Verz
scoreboard objectives remove PZWerkS.1Haltb

scoreboard objectives remove PZWerkS.1Weizen
scoreboard objectives remove PZWerkS.1Karotte
scoreboard objectives remove PZWerkS.1Kartoff
scoreboard objectives remove PZWerkS.1Bete

# Hacken werden entfernt
clear @a minecraft:wooden_hoe{werzeug-system:"v1gegenstand"}
clear @a minecraft:stone_hoe{werzeug-system:"v1gegenstand"}
clear @a minecraft:iron_hoe{werzeug-system:"v1gegenstand"}
clear @a minecraft:golden_hoe{werzeug-system:"v1gegenstand"}
clear @a minecraft:diamond_hoe{werzeug-system:"v1gegenstand"}

clear @a[distance=..25] minecraft:wheat
clear @a[distance=..25] minecraft:wheat_seeds
clear @a[distance=..25] minecraft:carrot
clear @a[distance=..25] minecraft:potato
clear @a[distance=..25] minecraft:poisonous_potato
clear @a[distance=..25] minecraft:beetroot
clear @a[distance=..25] minecraft:beetroot_seeds

# Den Spielmodus auf Kreativ setzen
gamemode creative @a[distance=..25,gamemode=!creative]

# Ackerboden und Karotten werden um die Befehlsquelle entfernt
fill ~-16 ~1 ~-16 ~16 ~1 ~16 minecraft:air replace minecraft:carrots
fill ~-16 ~ ~-16 ~16 ~ ~16 minecraft:air replace minecraft:water
fill ~-16 ~ ~-16 ~16 ~ ~16 minecraft:air replace minecraft:dirt
fill ~-16 ~ ~-16 ~16 ~ ~16 minecraft:air replace minecraft:farmland

# Die herumliegenden Karotten werden entfernt
tag @e[distance=..25,type=minecraft:item,nbt={Item:{id:"minecraft:wheat"} } ] add EtiWerkS.1Alle
tag @e[distance=..25,type=minecraft:item,nbt={Item:{id:"minecraft:wheat_seeds"} } ] add EtiWerkS.1Alle
tag @e[distance=..25,type=minecraft:item,nbt={Item:{id:"minecraft:carrot"} } ] add EtiWerkS.1Alle
tag @e[distance=..25,type=minecraft:item,nbt={Item:{id:"minecraft:potato"} } ] add EtiWerkS.1Alle
tag @e[distance=..25,type=minecraft:item,nbt={Item:{id:"minecraft:poisonous_potato"} } ] add EtiWerkS.1Alle
tag @e[distance=..25,type=minecraft:item,nbt={Item:{id:"minecraft:beetroot"} } ] add EtiWerkS.1Alle
tag @e[distance=..25,type=minecraft:item,nbt={Item:{id:"minecraft:beetroot_seeds"} } ] add EtiWerkS.1Alle
tag @e[distance=..25,type=minecraft:item,nbt={Item:{tag:{werzeug-system:"v1gegenstand"} } } ] add EtiWerkS.1Alle
kill @e[tag=EtiWerkS.1Alle]
