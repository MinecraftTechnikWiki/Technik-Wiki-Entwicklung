# Die Punktestand-Ziele werden entfernt
scoreboard objectives remove PZAufS.1Reden
scoreboard objectives remove PZAufS.1Handel
scoreboard objectives remove PZAufS.1Nachr
scoreboard objectives remove PZAufS.1Auftrag

# Der Spieler wird wieder in den Kreativmodus gesetzt
gamemode creative @a[distance=..25,gamemode=!creative]

# Alle Blöcke die im Laufe der Aufträge platziert wurden, werden wieder entfernt
execute at @e[type=minecraft:villager,tag=EtiAufS.1Alle] run fill ~ ~ ~-5 ~ ~ ~-6 minecraft:air

# Alle Dorfbewohner werden entfernt
kill @e[tag=EtiAufS.1Alle]

# Spielern werden Smaragde, Pilzsuppen und Erfahrungspunkte entfernt
clear @a[distance=..25] minecraft:emerald
clear @a[distance=..25] minecraft:mushroom_stew
experience add @a[distance=..25] -15 points

# Alle eventuell noch vorhandenen Etiketten werden entfernt
tag @a[tag=EtiAufS.1JonesSuppeHolen] remove EtiAufS.1JonesSuppeHolen
tag @a[tag=EtiAufS.1BillSuchen] remove EtiAufS.1BillSuchen
tag @a[tag=EtiAufS.1BillGefunden] remove EtiAufS.1BillGefunden
tag @a[tag=EtiAufS.1BillZaunHerstellen] remove EtiAufS.1BillZaunHerstellen
tag @a[tag=EtiAufS.1BillZaunHergestellt] remove EtiAufS.1BillZaunHergestellt
