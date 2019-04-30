
bossbar add zaehler:v4countdown ["",{"text":"Countdown","bold":true}]
bossbar set zaehler:v4countdown color purple
bossbar set zaehler:v4countdown players @a[distance=..25]

scoreboard objectives add PZZaehl.4Wert trigger ["Zähler.4: ",{"text":"Wert der Variablen","bold":true}]
scoreboard players set VarZaehl.4Variable PZZaehl.4Wert 0
scoreboard players set VarZaehl.4Ergebnis PZZaehl.4Wert 0
scoreboard players set VarZaehl.4Countdown PZZaehl.4Wert 0
