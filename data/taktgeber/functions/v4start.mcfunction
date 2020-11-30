# Die Bossleiste für den Counrdown wird erstellt und mit violett ausgestattet und für alle Spieler in einem Umkreis von 25 Metern sichtbar gemacht.
bossbar add zaehler:v4countdown ["",{"text":"Countdown","bold":true}]
bossbar set zaehler:v4countdown color purple
bossbar set zaehler:v4countdown players @a[distance=..25]

# Das Auslöser-Punktestand-Ziel wird erstellt.
scoreboard objectives add PZZaehl.4Wert trigger ["Zähler.4: ",{"text":"Wert der Variablen","bold":true}]

# Die Variablen werden mit den entsprechenden Werten gesetzt.
scoreboard players set VarZaehl.4Variable PZZaehl.4Wert 0
scoreboard players set VarZaehl.4Ergebnis PZZaehl.4Wert 0
scoreboard players set VarZaehl.4Countdown PZZaehl.4Wert 0
