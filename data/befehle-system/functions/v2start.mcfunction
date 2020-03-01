# Das Punktestand-Ziel für die verschiedenen Befehle wird erstellt
scoreboard objectives add PZBefS.2Befehl dummy ["Befehle-System.2: ",{"text":"Nummer des Befehls","bold":true}]

# Eine Nachricht, die alle verfügbaren Befehle anzeigt
tellraw @a[distance=..15] ["Befehle-System.2:\n",{"text":"Artikel  al\nExcalibur  er\nZaubertrank  zk","bold":true}]
