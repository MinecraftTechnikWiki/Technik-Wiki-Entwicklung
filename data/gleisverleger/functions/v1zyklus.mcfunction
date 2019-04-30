# Wenn der Rüstungsständer platziert wird, wird die Erstellen-Funktion durch ihn aufgerufen
execute as @e[type=minecraft:armor_stand,tag=EtiGleisV.1Erstellen] at @s run function gleisverleger:v1erstellen

# Wenn sich der Spieler in der Nähe des Gleisverlegers befindet, wird die Ausrichtungs-Funktion durch ihn aufgerufen
execute as @e[type=minecraft:armor_stand,tag=EtiGleisV.1Verleger] at @s if entity @p[distance=..10] rotated ~ 0 run function gleisverleger:v1ausrichtung

# Wenn der Spieler in der Nähe des Gleisverlegers schleicht, wird die Gleis-Funktion aufgerufen
execute as @e[type=minecraft:armor_stand,tag=EtiGleisV.1Verleger] at @s if entity @p[distance=..10,scores={PZGleisV.1Schl=3..},nbt={OnGround:true}] rotated ~180 0 run function gleisverleger:v1gleis

# Wenn der Spieler mindestens drei Ticks lang geschlichen ist, wird sein Punktestand zurück gesetzt
scoreboard players reset @a[scores={PZGleisV.1Schl=3..}] PZGleisV.1Schl
