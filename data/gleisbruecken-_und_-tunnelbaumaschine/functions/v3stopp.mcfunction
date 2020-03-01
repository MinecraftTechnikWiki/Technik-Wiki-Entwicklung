# Alle Punktestand-Ziele werden gelöscht
scoreboard objectives remove PZGBuTB.3Schl
scoreboard objectives remove PZGBuTB.3Schien
scoreboard objectives remove PZGBuTB.3Schwel
scoreboard objectives remove PZGBuTB.3Stein
scoreboard objectives remove PZGBuTB.3Andes
scoreboard objectives remove PZGBuTB.3Pfeil

# alle Gegenstände für den Brückenbauer werden gelöscht
clear @a[distance=..25] minecraft:armor_stand{gleisbruecken-_und_-tunnelbaumaschine:"v3gegenstand"}
clear @a[distance=..25] minecraft:stone_brick_stairs{gleisbruecken-_und_-tunnelbaumaschine:"v3gegenstand"}
clear @a[distance=..25] minecraft:spruce_slab{gleisbruecken-_und_-tunnelbaumaschine:"v3gegenstand"}
clear @a[distance=..25] minecraft:smooth_stone{gleisbruecken-_und_-tunnelbaumaschine:"v3gegenstand"}
clear @a[distance=..25] minecraft:andesite{gleisbruecken-_und_-tunnelbaumaschine:"v3gegenstand"}
clear @a[distance=..25] minecraft:magenta_glazed_terracotta{gleisbruecken-_und_-tunnelbaumaschine:"v3gegenstand"}

# Gegenstände die gedroppt wurden und der Brückenbauer selbst werden entfernt
kill @e[tag=EtiGBuTB.3Alle]
kill @e[type=minecraft:item,nbt={tag:{gleisbruecken-_und_-tunnelbaumaschine:"v3gegenstand"} }]
