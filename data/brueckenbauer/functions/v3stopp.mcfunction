# Alle Punktestand-Ziele werden gelöscht
scoreboard objectives remove PZBruB.3Schl
scoreboard objectives remove PZBruB.3Schien
scoreboard objectives remove PZBruB.3Schwel
scoreboard objectives remove PZBruB.3Stein
scoreboard objectives remove PZBruB.3Andes
scoreboard objectives remove PZBruB.3Pfeil

# alle Gegenstände für den Brückenbauer werden gelöscht
clear @a[distance=..25] minecraft:armor_stand{display:{Lore:["Brückenbauer.3"] } }
clear @a[distance=..25] minecraft:stone_brick_stairs{display:{Lore:["Brückenbauer.3"] } }
clear @a[distance=..25] minecraft:spruce_slab{display:{Lore:["Brückenbauer.3"] } }
clear @a[distance=..25] minecraft:andesite{display:{Lore:["Brückenbauer.3"] } }
clear @a[distance=..25] minecraft:magenta_glazed_terracotta{display:{Lore:["Brückenbauer.3"]} }

# Gegenstände die gedroppt wurden und der Brückenbauer selbst werden entfernt
kill @e[tag=EtiBruB.3Alle]
kill @e[type=minecraft:item,nbt={tag:{display:{Lore:["Brückenbauer.3"]} } }]
