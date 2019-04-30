# Punktestand-Ziel wird erstellt
scoreboard objectives add PZKoDe.2Wert trigger ["Kodierer und Dekodierer.2: ",{"text":"Wert der Variable","bold":true}]

# Interne Variablen für die Berechnung werden gesetzt
scoreboard players set #VarKoDe.2AusgabeSystem PZKoDe.2Wert 2
scoreboard players set #VarKoDe.2EingabeZahl PZKoDe.2Wert 1
scoreboard players set #VarKoDe.2AusgabeZahl PZKoDe.2Wert 1
scoreboard players set #VarKoDe.2Potenz PZKoDe.2Wert 1
scoreboard players set #VarKoDe.2Rest PZKoDe.2Wert 0
scoreboard players set #VarKoDe.2Term PZKoDe.2Wert 0

# Öffentliche Variablen für die sichtbare Ausgabe im Chat werden gesetzt
scoreboard players set VarKoDe.2SystemVariable1 PZKoDe.2Wert 0
scoreboard players set VarKoDe.2SystemVariable2 PZKoDe.2Wert 0
scoreboard players set VarKoDe.2Variable1 PZKoDe.2Wert 0
scoreboard players set VarKoDe.2System1 PZKoDe.2Wert 10
scoreboard players set VarKoDe.2System2 PZKoDe.2Wert 2
scoreboard players set KonstKoDe.2ZEHN PZKoDe.2Wert 10
