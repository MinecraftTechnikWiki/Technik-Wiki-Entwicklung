# Wenn eine Güterlore auf einer werkbank gelegt wurde, wird die Herstellen-Funktion aufgerufen
execute at @a as @e[distance=..5,type=minecraft:item,nbt={Item:{id:"minecraft:chest_minecart"} }] at @s run function gleisbaumaschine:v2herstellen

# Wenn der Rüstungsständer platziert wird, wird die Erstellen-Funktion durch ihn aufgerufen
execute as @e[type=minecraft:armor_stand,tag=EtiGleisB.2Erstellen] at @s run function gleisbaumaschine:v2erstellen

# Wenn sich der Spieler in der Nähe des Gleisbaumaschines befindet, wird die Ausrichtungs-Funktion durch ihn aufgerufen
execute as @e[type=minecraft:armor_stand,tag=EtiGleisB.2Baumaschine] at @s if entity @p[distance=..10] rotated ~ 0 run function gleisbaumaschine:v2ausrichtung

# Wenn der Spieler in der Nähe des Gleisbaumaschines schleicht, wird die Gleis-Funktion aufgerufen
execute as @e[type=minecraft:armor_stand,tag=EtiGleisB.2Baumaschine] at @s if entity @p[distance=..10,scores={PZGleisB.2Schl=3..},nbt={OnGround:true}] rotated ~180 0 run function gleisbaumaschine:v2gleis

# Wenn der Spieler mindestens drei Ticks lang geschlichen ist, wird sein Punktestand zurück gesetzt
scoreboard players reset @a[scores={PZGleisB.2Schl=3..}] PZGleisB.2Schl
