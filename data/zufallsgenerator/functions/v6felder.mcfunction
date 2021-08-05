# Wenn die vom Spieler eingestellte Position erreicht wurde, wird der Wert an dieser Position aus der Felderreihe ausgelesen und anschließend wird der Wert um eins verringert oder erhöht und wieder in die Felderreihe gespeichert.
execute if score @s PZZufG.6Pos = VarZufG.6AktuellePosition PZZufG.6Pos store result score VarZufG.6Wert PZZufG.6Pos run data get storage zufallsgenerator:v6daten "EigZufG.6Felder"[0]
#execute if score @s[scores={PZZufG.6Wert=3}] PZZufG.6Pos = VarZufG.6AktuellePosition PZZufG.6Pos store result storage zufallsgenerator:v6daten "EigZufG.6Felder"[0] int 1 run scoreboard players add VarZufG.6Wert PZZufG.6Pos 1
#execute if score @s[scores={PZZufG.6Wert=-3}] PZZufG.6Pos = VarZufG.6AktuellePosition PZZufG.6Pos store result storage zufallsgenerator:v6daten "EigZufG.6Felder"[0] int 1 run scoreboard players remove VarZufG.6Wert PZZufG.6Pos 1

# Das erste Feld wird an die letzte Position der Felderreihe verschoben.
data modify storage zufallsgenerator:v6daten "EigZufG.6Felder" append from storage zufallsgenerator:v6daten "EigZufG.6Felder"[0]
data remove storage zufallsgenerator:v6daten "EigZufG.6Felder"[0]

# Die aktuelle Position wird um eins erhöht und wenn sie damit noch nicht die komplette Felderreihe durchlaufen hat, wird die Felder-Funktion selbst nochmal aufgerufen.
scoreboard players add VarZufG.6AktuellePosition PZZufG.6Pos 1
execute if score VarZufG.6AktuellePosition PZZufG.6Pos < VarZufG.6Laenge PZZufG.6Pos run function zufallsgenerator:v6felder
