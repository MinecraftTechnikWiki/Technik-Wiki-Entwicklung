# Wenn der Gleisbaumaschine platziert wurde, wird die Erstellen-Funktion geladen
execute as @e[type=minecraft:armor_stand,tag=EtiGleisB.3Erstellen] at @s run function gleisbaumaschine:v3erstellen

# Befindet sich in einem Radius von zehn Blöcken ein Spieler um den Gleisbaumaschine, so wird die Ausrichtung-Funktion geladen
execute as @e[type=minecraft:armor_stand,tag=EtiGleisB.3Verleger] at @s if entity @p[distance=..10] rotated ~ 0 run function gleisbaumaschine:v3ausrichtung

# Wenn der Spieler mindestens drei Ticks in einem Radius von zehn Blöcken schleicht, wird die Gleis-Funktion geladen
execute as @e[type=minecraft:armor_stand,tag=EtiGleisB.3Verleger] at @s if entity @p[distance=..10,scores={PZGleisB.3Schl=3..},nbt={OnGround:true}] rotated ~180 0 run function gleisbaumaschine:v3gleis

# Falls der Spieler drei Ticks geschlichen ist, wird dieser Punktestand wieder zurück gesetzt
scoreboard players reset @a[scores={PZGleisB.3Schl=3..}] PZGleisB.3Schl
