# Wenn der Gleisverleger platziert wurde, wird die Erstellen-Funktion geladen
execute as @e[type=minecraft:armor_stand,tag=EtiGleisV.3Erstellen] at @s run function gleisverleger:v3erstellen

# Befindet sich in einem Radius von zehn Blöcken ein Spieler um den Gleisverleger, so wird die Ausrichtung-Funktion geladen
execute as @e[type=minecraft:armor_stand,tag=EtiGleisV.3Verleger] at @s if entity @p[distance=..10] rotated ~ 0 run function gleisverleger:v3ausrichtung

# Wenn der Spieler mindestens drei Ticks in einem Radius von zehn Blöcken schleicht, wird die Gleis-Funktion geladen
execute as @e[type=minecraft:armor_stand,tag=EtiGleisV.3Verleger] at @s if entity @p[distance=..10,scores={PZGleisV.3Schl=3..},nbt={OnGround:true}] rotated ~180 0 run function gleisverleger:v3gleis

# Falls der Spieler drei Ticks geschlichen ist, wird dieser Punktestand wieder zurück gesetzt
scoreboard players reset @a[scores={PZGleisV.3Schl=3..}] PZGleisV.3Schl
