# Die Punktestand-Ziele werden gelöscht
scoreboard objectives remove PZGleisV.1Schl
scoreboard objectives remove PZGleisV.1Gleis
scoreboard objectives remove PZGleisV.1Andes
scoreboard objectives remove PZGleisV.1Stein

# Die Materialien, inklusive der Gleisverleger werden aus dem Inventar gelöscht
clear @a[distance=..25] minecraft:armor_stand{display:{Lore:["Gleisverleger.1"] } }
clear @a[distance=..25] minecraft:rail{display:{Lore:["Gleisverleger.1"] } }
clear @a[distance=..25] minecraft:stone{display:{Lore:["Gleisverleger.1"] } }
clear @a[distance=..25] minecraft:andesite{display:{Lore:["Gleisverleger.1"] } }

# Alle Gleisverleger sowie Drops die damit zu tun haben werden gelöscht
kill @e[tag=EtiGleisV.1Alle]
kill @e[type=minecraft:item,nbt={tag:{display:{Lore:["Gleisverleger.1"] } } } ]
