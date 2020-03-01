# Punktestand-Ziel wird erstellt.
scoreboard objectives add PZKoDe.1Wert trigger ["Kodierer und Dekodierer.1: ",{"text":"Wert der Variable","bold":true}]

# Interne Variablen für die Berechnung werden gesetzt.
scoreboard players set #VarKoDe.1Zahl PZKoDe.1Wert 0
scoreboard players set #VarKoDe.1Potenz PZKoDe.1Wert 1
scoreboard players set #VarKoDe.1Rest PZKoDe.1Wert 0
scoreboard players set #VarKoDe.1Term PZKoDe.1Wert 0

# Öffentliche Variablen für die sichtbare Ausgabe im Chat werden gesetzt.
scoreboard players set VarKoDe.1Variable1 PZKoDe.1Wert 0
scoreboard players set VarKoDe.1Variable2 PZKoDe.1Wert 0
scoreboard players set KonstKoDe.1ZEHN PZKoDe.1Wert 10
scoreboard players set KonstKoDe.1ZWEI PZKoDe.1Wert 2
