# Alle Punktestand-Ziele werden gelöscht
scoreboard objectives remove PZGleisV.3Schl
scoreboard objectives remove PZGleisV.3Schien
scoreboard objectives remove PZGleisV.3Schwel
scoreboard objectives remove PZGleisV.3Stein
scoreboard objectives remove PZGleisV.3Andes
scoreboard objectives remove PZGleisV.3Pfeil

# Alle Gegenstände für den Gleisverleger werden gelöscht
clear @a[distance=..25] minecraft:armor_stand{display:{Lore:["Gleisverleger.3"] } }
clear @a[distance=..25] minecraft:stone_brick_stairs{display:{Lore:["Gleisverleger.3"] } }
clear @a[distance=..25] minecraft:spruce_slab{display:{Lore:["Gleisverleger.3"] } }
clear @a[distance=..25] minecraft:stone{display:{Lore:["Gleisverleger.3"] } }
clear @a[distance=..25] minecraft:andesite{display:{Lore:["Gleisverleger.3"] } }
clear @a[distance=..25] minecraft:magenta_glazed_terracotta{display:{Lore:["Gleisverleger.3"]} }

# Alle Gleisverleger und Gegenstände für diesen, die herum liegen, werden gelöscht
kill @e[tag=EtiGleisV.3Alle]
kill @e[type=minecraft:item,nbt={tag:{display:{Lore:["Gleisverleger.3"]} } }]
