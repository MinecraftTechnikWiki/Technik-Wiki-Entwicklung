# Die Punktestand-Ziele werden gelöscht
scoreboard objectives remove PZGBuTB.1Schl
scoreboard objectives remove PZGBuTB.1Gleis
scoreboard objectives remove PZGBuTB.1Andes
scoreboard objectives remove PZGBuTB.1Stein
scoreboard objectives remove PZGBuTB.1Richt

# Alle Gegenstände für den Brückenbauer werden wieder entfernt
clear @a[distance=..25] minecraft:armor_stand{gleisbruecken-_und_-tunnelbaumaschine:"v1gegenstand"}
clear @a[distance=..25] minecraft:rail{gleisbruecken-_und_-tunnelbaumaschine:"v1gegenstand"}
clear @a[distance=..25] minecraft:smooth_stone{gleisbruecken-_und_-tunnelbaumaschine:"v1gegenstand"}
clear @a[distance=..25] minecraft:andesite{gleisbruecken-_und_-tunnelbaumaschine:"v1gegenstand"}

# Der Brückenbauer, wie auch Gegenstände die auf dem Boden liegen werden entfernt
tag @e[type=minecraft:item,nbt={tag:{gleisbruecken-_und_-tunnelbaumaschine:"v1gegenstand"} } ] add EtiGBuTB.1Alle
kill @e[tag=EtiGBuTB.1Alle]
