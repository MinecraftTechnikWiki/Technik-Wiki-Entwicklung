# Die Punktestand-Ziele werden gelöscht
scoreboard objectives remove PZBruB.1Schl
scoreboard objectives remove PZBruB.1Gleis
scoreboard objectives remove PZBruB.1Andes
scoreboard objectives remove PZBruB.1Stein
scoreboard objectives remove PZBruB.1Richt

# Alle Gegenstände für den Brückenbauer werden wieder entfernt
clear @a[distance=..25] minecraft:armor_stand{display:{Lore:["Brückenbauer.1"] } }
clear @a[distance=..25] minecraft:rail{display:{Lore:["Brückenbauer.1"] } }
clear @a[distance=..25] minecraft:stone{display:{Lore:["Brückenbauer.1"] } }
clear @a[distance=..25] minecraft:andesite{display:{Lore:["Brückenbauer.1"] } }

# Der Brückenbauer, wie auch Gegenstände die auf dem Boden liegen werden entfernt
kill @e[tag=EtiBruB.1Alle]
kill @e[type=minecraft:item,nbt={tag:{display:{Lore:["Brückenbauer.1"] } } } ]
