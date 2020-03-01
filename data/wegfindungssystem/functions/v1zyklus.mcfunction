# Wenn der Startpunkt-Rüstungsständer platziert wurde, wird von seiner Position zentrisch aus die Erstellen-Funktion geladen
execute as @e[tag=EtiWegFS.1Erstellen] at @s align xyz positioned ~0.5 ~ ~0.5 run function wegfindungssystem:v1erstellen

# Solange noch nicht der Zielpunkt gefunden wurde, wird von Knoten-Rüstungsständern aus die Knoten-Funktion aufgerufen.
execute unless entity @e[tag=EtiWegFS.1Fertig] if entity @e[tag=EtiWegFS.1Ziel] as @e[tag=EtiWegFS.1Knoten] at @s align xyz positioned ~0.5 ~ ~0.5 run function wegfindungssystem:v1knoten
