# Alle Punktestand-Ziele werden gelöscht
scoreboard objectives remove PZGleisB.3Schl
scoreboard objectives remove PZGleisB.3Schien
scoreboard objectives remove PZGleisB.3Schwel
scoreboard objectives remove PZGleisB.3Stein
scoreboard objectives remove PZGleisB.3Andes
scoreboard objectives remove PZGleisB.3Pfeil

# Alle Gegenstände für den Gleisbaumaschine werden gelöscht
clear @a[distance=..25] minecraft:armor_stand{gleisbaumaschine:"v3gegenstand"}
clear @a[distance=..25] minecraft:stone_brick_stairs{gleisbaumaschine:"v3gegenstand"}
clear @a[distance=..25] minecraft:spruce_slab{gleisbaumaschine:"v3gegenstand"}
clear @a[distance=..25] minecraft:smooth_stone{gleisbaumaschine:"v3gegenstand"}
clear @a[distance=..25] minecraft:andesite{gleisbaumaschine:"v3gegenstand"}
clear @a[distance=..25] minecraft:magenta_glazed_terracotta{gleisbaumaschine:"v3gegenstand"}

# Alle Gleisbaumaschine und Gegenstände für diesen, die herum liegen, werden gelöscht
tag @e[type=minecraft:item,nbt={tag:{gleisbaumaschine:"v3gegenstand"} }] add EtiGleisB.3Alle
kill @e[tag=EtiGleisB.3Alle]
