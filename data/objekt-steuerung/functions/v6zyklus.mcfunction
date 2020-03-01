# Im Umkreis von 25 Metern wird von der Position des Spielers einen Meter in Blickrichtung die Blick-Positions-Funktion gestartet
execute as @p[distance=..25] at @s positioned ^ ^ ^1 run function objekt-steuerung:v6blickposition
