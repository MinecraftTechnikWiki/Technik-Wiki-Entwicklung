# Wenn ein Rüstungsständer platziert wird, welcher das entsprechende Etikett besitzt, so wird die Erstellen-Funktion geladen
execute as @e[type=minecraft:armor_stand,tag=EtiGBuTB.1Erstellen] at @s run function gleisbruecken-_und_-tunnelbaumaschine:v1erstellen

# Wenn sich ein Spieler im Umkreis von zehn Blöcken um den Brückenbauer befindet, wird dieser entsprechend ausgerichtet
execute as @e[type=minecraft:armor_stand,tag=EtiGBuTB.1Baumaschine] at @s if entity @p[distance=..10] rotated ~ 0 run function gleisbruecken-_und_-tunnelbaumaschine:v1ausrichtung

# Wenn der Spieler im Umkreis schleicht und auf dem Boden steht, wird die Funktion geladen, die den Bau der Brücke startet
execute as @e[type=minecraft:armor_stand,tag=EtiGBuTB.1Baumaschine] at @s if entity @p[distance=..10,scores={PZGBuTB.1Schl=3..},nbt={OnGround:true}] rotated ~180 0 run function gleisbruecken-_und_-tunnelbaumaschine:v1bruecke

# Falls beim Bau der Brücke ein Pfeiler (Rüstungsständer) erstellt wurde, wird die Pfeiler-Funktion geladen
execute as @e[type=armor_stand,tag=EtiGBuTB.1Pfeiler] at @s run function gleisbruecken-_und_-tunnelbaumaschine:v1pfeiler

# Falls der Spieler mindestens drei Ticks lang geschlichen ist, wird ihm die Schleichzeit zurückgesetzt
scoreboard players reset @a[scores={PZGBuTB.1Schl=3..}] PZGBuTB.1Schl
